<%@page import="Model.Order"%>
<%@page import="Model.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Mood Corner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/main.css" rel="stylesheet">
        <link href="styles/order.css" rel="stylesheet">
    </head>
    <%@ include file="/includes/header.jsp" %>
    <%@ include file="/includes/user-navigation.jsp" %>
    <%@ include file="/includes/site-navigation.jsp" %>
    <article>
        <section id="invoice_head">

            <br/>
            <p><b class="invoice_title">Invoice</b></p>
        </section>
        <section class="invoice_content">
            <p>Date: Sep. 17, 2014</p>
            <p><ins>Ship To &amp; Bill To:</ins></p>
            <p><b>
                    Siming Deng<br/>
                    9309, Kittansett Drive, Apt C<br/>
                    Charlotte, NC, 28262

                </b></p>

        </section>
        <br>
        <section class="order_list_frame">
            <table>
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

                <% if (request.getSession().getAttribute("theShoppingCart") == null) {
                        session.setAttribute("theShoppingCart", new Cart());
                    }
                %>
                <c:forEach var="orderitem" items="${sessionScope.theShoppingCart.getItems()}">
                    <tr>
                        <td class="left_side">

                            ${orderitem.product.productName}
                        </td>
                        <td>
                            ${orderitem.product.price}

                        </td>
                        <td>
                            ${orderitem.quantity}
                        </td>
                        <td>
                            $${orderitem.getTotal()}
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
                            DecimalFormat df = new DecimalFormat("#.##");
                            if (session.getAttribute("allprice") == null) {
                                session.setAttribute("allprice", 0.0);
                            }
                            out.print(df.format(Double.parseDouble(session.getAttribute("allprice").toString())));
                        %>
                    </th>
                </tr>
                <tr>
                    <th> </th>
                    <th> </th>
                    <th>
                        <b>Tax</b>
                    </th>
                    <th >
                        $<%
                            out.print(df.format(Double.parseDouble(session.getAttribute("allprice").toString()) * 0.07));
                        %>  
                    </th>
                </tr>
                <tr>
                    <th> </th>
                    <th> </th>
                    <th>
                        <b>Total</b>
                    </th>
                    <th >
                        $<%
                            Double payAmount = Double.parseDouble(session.getAttribute("allprice").toString()) * 1.07;
                            out.print(df.format(payAmount));
                        %> 
                    </th>
                </tr>
            </table>
                        <c:if test="${!paied}">
                           
                            <form action="OrderController" class="form_back">
                                <button type="submit" class="btn_display_orders">Return To Cart</button>
                            </form>
                             <form action="payment.jsp" class="form_purchase">
                                
                                <button type="submit" class="btn_display_orders">Check Out</button>
                            </form>
                        </c:if>
                    
                        <c:if test="${paied == true}">
                            <%
                               
                                session.removeAttribute("theShoppingCart");
                                session.removeAttribute("allprice");
                            %>
                        </c:if>
                        
            
        </section>
    </article>
    <%@ include file="/includes/footer.jsp" %>