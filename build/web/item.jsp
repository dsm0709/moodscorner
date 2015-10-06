<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Mood Corner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../styles/main.css" rel="stylesheet">
        <link href="../styles/item.css" rel="stylesheet">
    </head>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/user-navigation.jsp" %>
<%@ include file="/includes/site-navigation.jsp" %>

        <article>
            <section class="item_frame">
                <section class="item_main_info">
                    
                    <img src="../${requestScope.product.getImageURL()}" alt="item">

                    <section class="item_info">
                        <p class="item_name_big"><br/>${requestScope.product.getProductName()}</p>
                        <p class="item_price_big">$${requestScope.product.getPrice()}</p>
                    </section>
                </section>
                 
                <p class="item_desc">Always be exhausted by the chores?<br/> How about being a party animal?<br/></p>
                <a href="../OrderController?action=updateCart&productList=${requestScope.product.productCode}">
                        <section class="btn_add">
                            <p class="btn_content">Add to Cart</p>
                        </section>                   
                </a>                        
                
                <a href="../OrderController">
                    <section class="btn_add">
                        <p class="btn_content">return to Cart</p>
                        <br>
                        <br>
                        
                    </section>                  
                </a>       
            </section>

        </article>
<%@ include file="/includes/footer.jsp" %>