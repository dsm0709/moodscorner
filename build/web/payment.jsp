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
        <link href="styles/payment.css" rel="stylesheet">
    </head>
    <%@ include file="/includes/header.jsp" %>
    <%@ include file="/includes/user-navigation.jsp" %>
    <%@ include file="/includes/site-navigation.jsp" %>


    <article>
        <section>
            <p class="payment_title">
                Enter your payment information
            </p>
            <br>
            <br>
        </section>
        <form action="OrderController" id="payform" method="POST">
            <input type="hidden" name="action" value="confirmOrder"/>
            <section>
                <table class="table_position">
                    <tr>
                        <th>
                            Credit Card Type
                        </th>
                        <th>
                            <select name="CreditCardType" >
                                <option value="Visa">Visa</option>
                                <option value="saab">Master Card</option>
                                <option value="opel">Union Bank</option>
                            </select>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            Card Number
                        </th>
                        <th>
                            <input class="card_number" type="text">
                        </th>
                    </tr>

                    <tr>
                        <th>
                            Expiration Date(MM/YYYY)
                        </th>
                        <th>
                            <select name="ExpirationMonth">
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option value="5">May</option>
                                <option value="6">June</option>
                                <option value="7">July</option>
                                <option value="8">August</option>
                                <option value="9">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>

                            <select name="ExpirationYear">
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Secure Code
                        </th>
                        <th>
                            <input type="text" name="secure_code" />
                        </th>
                    </tr>
                </table>
            </section>

            <section class="make_center">

                <p>
                    Your Card will be charged a total of : <b>
                        <%DecimalFormat df = new DecimalFormat("#.##");
                            out.println(df.format((Double)session.getAttribute("allprice") * 1.07));
                        %>
                    </b>
                </p>

                <button type="submit" class="btn_display_orders ">Confirm Payment</button>

            </section>
        </form>
    </article>

    <%@ include file="/includes/footer.jsp" %>