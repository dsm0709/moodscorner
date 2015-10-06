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
        <link href="styles/login.css" rel="stylesheet">
    </head>     
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/user-navigation.jsp" %>
<%@ include file="/includes/site-navigation.jsp" %> 
    
    <body>
        <section class="loginFrame">
            <p >
                Now it's time to login.
            </p>
            <form action="j_security_check" method="post" >
                <p class="home_body" name="username">
                    username : 
                    <input type="text" name="j_username" />
                </p>
                <p class="home_body">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;password : 
                    <input type='password' name="j_password">
                </p>
                <p>
                    <input type="submit">
                </p>
                
            </form>
        </section>
    </body>
    









<%@ include file="/includes/footer.jsp" %>