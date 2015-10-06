<%@page import="Model.ProductDB"%>
<%@page import="Model.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mood Corner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/main.css" rel="stylesheet">
        <link href="styles/cart.css" rel="stylesheet">
    </head>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/user-navigation.jsp" %>
<%@ include file="/includes/site-navigation.jsp" %>






    <article>
        <section id="cart_head">
            <b class="cart_tips">To remove an item, change the quantity to zero</b>
            <br/>
            <p><b class="cart_title">Your Cart</b></p>
        </section>
        <br/>
        <section class="cart_list_frame">
            <table>
                <%session.setAttribute("total",0);%>
                <tr id="table_head">
                    <th class="left_side top_line">
                        <b>Item</b>
                    </th>
                    <th class="top_line">
                        <b>Price</b>
                    </th>
                    <th class="top_line">
                        <b>Quantity</b>
                    </th>
                    <th class="top_line">
                        <b>Total</b>
                    </th>
                    
                </tr>
                <% if(request.getSession().getAttribute("theShoppingCart")==null) 
                    session.setAttribute("theShoppingCart", new Cart());
                %>
                
                <c:forEach var="orderitem" items="${sessionScope.theShoppingCart.getItems()}">
                    <tr>
                    <td class="left_side">
                        ${orderitem.product.productName}
                    </td>
                    <td>
                        $${orderitem.product.price}
                    </td>
                    <td>
                        <input class="left" type="text" name="${orderitem.product.productCode}" value="${orderitem.quantity}"> 
                        <form class="left" method="post" action="OrderController">
                            <input type="hidden" name="action" value="updateCart">       
                            <input type="hidden" name="productList" value="${orderitem.product.productCode}">
                            <input type="submit" name="increase" value="+">
                        </form>
                        <form method="post" action="OrderController" class="left">
                            <input type="hidden" name="action" value="updateCart">       
                            <input type="hidden" name="productList" value="${orderitem.product.productCode}">
                            <input type="submit" name="increase" value="-">
                        </form>
                    </td>
                    <td>
                        
                        $
                        <fmt:formatNumber type="number" value="${orderitem.product.price*orderitem.quantity}" maxFractionDigits="3"/>
                    </td>
                </tr>
                </c:forEach>
                <tr>
                    <th class="bottom_line"> </th>
                    <th class="bottom_line"> </th>
                    <th class="bottom_line">
                        <b>Subtotal</b>
                    </th>
                    <th class="bottom_line">
                        $<%
                            DecimalFormat df = new DecimalFormat("#.###"); 
                            if(session.getAttribute("allprice")==null)
                                session.setAttribute("allprice", 0);
                            out.print(df.format(Double.parseDouble(session.getAttribute("allprice").toString())));
                        %>
                    </th>
                </tr>
                
                
                
            </table>
            <a href="cart.jsp">              
                <section class="btn_update">
                    <p class="btn_content">Update Cart</p>
                </section>
            </a>
            
            <a href="<c:url value='/OrderController?action=checkout'></c:url>">
                <section class="btn_checkout">
                    <p class="btn_content">Check out</p>
                </section>
            </a>
        </section>
    </article>
<%@ include file="/includes/footer.jsp" %>