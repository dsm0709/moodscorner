<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Mood Corner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/main.css" rel="stylesheet">
        <link href="styles/admin.css" rel="stylesheet">
    </head>

<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/user-navigation.jsp" %>
<%@ include file="/includes/site-navigation.jsp" %>

<article>
    <section >
        <p>
            <b>Administrator Menu</b>
        </p>
        <form action="Admin">
            <input type="hidden" name="action" value="ViewOrders"/>
        <button type="submit" class="btn_display_orders" >Display All Orders</button>
         </form>
        
        

    </section>
</article>
<%@ include file="/includes/footer.jsp" %>

