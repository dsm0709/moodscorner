<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Mood Corner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/main.css" rel="stylesheet">
        <link href="styles/home.css" rel="stylesheet">
    </head>

<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/user-navigation.jsp" %>
<%@ include file="/includes/site-navigation.jsp" %>

<article>
    <section >
        <a class="admin_entry" href="Admin">Admin Entry</a>
        <p class="home_welcome_font">
            Welcome to Moods Corner!
        </p>
        <p class="home_welcome_font home_body">

            The things you saw, the people you met,<br> 
            the feelings you had are breezing into your heart<br/>
            while life is running.<br>
            But you may always<br> 
            RUN<br> 
            on the same road...<br/>
            Are you suffering from your colorless lifestyle?<br/>
        </p> 
        <P class="home_welcome_font home_final">
            <b class="purple">MAYBE</b>
            <b class="blue">YOU</b>
            <b class="aqua">CAN</b>
            <b class="green">PICK</b>
            <b class="yellow">ANOTHER</b>
            <b class="gold">ONE</b>
            <b class="red">HERE:)</b>
        </p>
        

    </section>
</article>
<%@ include file="/includes/footer.jsp" %>
