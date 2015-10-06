<%@page import="Model.Order"%>
<%@page import="Model.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.*"%>

<%@page import="java.util.*"%>

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


        <section class="order_list_frame">
            <br><br><br><br><br><br><br>
            <table>
                <tr id="table_head">
                    <th class="left_side top_line">
                        <b>Order Number</b>
                    </th>
                    <th class="top_line">
                        <b>Customer</b>
                    </th>
                    <th class="top_line">
                        <b>Order Date</b>
                    </th>
                    <th class="top_line">
                        <b>Total</b>
                    </th>
                </tr>

                <c:if test="${sessionScope.theOrders != null}">
                    <c:forEach var="order" items="${sessionScope.theOrders}">
                        <tr>
                            <td class="left_side">
                                ${order.orderNumber}
                            </td>
                            <td>
                                ${order.user.firstName}
                            </td>
                            <td>
                                ${order.date}
                            </td>
                            <td>
                                $${order.totalCost}
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>




            </table>


        </section>
    </article>
    <%@ include file="/includes/footer.jsp" %>