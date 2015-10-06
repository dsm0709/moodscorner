<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Mood Corner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/main.css" rel="stylesheet">
        <link href="styles/catalog.css" rel="stylesheet">
    </head>        
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/user-navigation.jsp" %>
<%@ include file="/includes/site-navigation.jsp" %>

        <article>
            <section>
                <p><br></p>
                
                <form action="<c:url value='/Catalog'></c:url>" method="post" >
                    <p>
                    
                        <B class="catalog_title_big">Are you always feeling PERFECT?</B>
                        <input class="input_Catagory" type="submit" value="Happy" name="catlogCategory">
                        <br><br>
                    </p>

                </form>
                    
                
             
                
                <form action="<c:url value='/Catalog'></c:url>" method="post">
                    <p>
                        
                    <b class="catalog_title_big">Are you always feeling TOO BAD?</b>
                        <input class="input_Catagory" type="submit" value="Sad" name="catlogCategory">
                        <br><br>
                    </p>

                </form>
                    
                <form action="<c:url value='/Catalog'></c:url>" method="post">
                    <p>
                        
                    <b class="catalog_title_big">Are you always feeling OK?</b>
                        <input class="input_Catagory" type="submit" value="Ok" name="catlogCategory">
                        
                    </p>

                </form>
            </section>
        </article>
<%@ include file="/includes/footer.jsp" %>