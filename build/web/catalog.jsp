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
            <p>
                <c:if test="${requestScope.type.equals('Happy')}">
                    <B class="catalog_title">Are you always feeling PERFECT?</B>
                    </c:if> 
                    <c:if test="${requestScope.type.equals('Sad')}">
                    <B class="catalog_title">Are you always feeling TOO BAD?</B>
                    </c:if> 
                    <c:if test="${requestScope.type.equals('NULL')}">
                    <B class="catalog_title">Are you always feeling?</B>
                    </c:if> 
            </p>

            <table>
                <tr>
                    <c:forEach var="product" items="${requestScope.arraylist1}">

                        <td>
                            <section class="cell">   

                                <a href="<c:url value="/itemController/${product.getProductCode()}" ></c:url>"><img class="catalog_pics" src="${product.getImageURL()}" alt="moods"></a>
                                    <p class="catalog_desc">
                                        <a  class="item_name" href="<c:url value="/itemController/${product.getProductCode()}" ></c:url>">${product.getProductName()}<br/>
                                        <b class="item_price">$${product.getPrice()}</b></a>
                                </p>


                            </section>
                        </td> 

                    </c:forEach>       
                </tr>

                <tr>
                    <c:forEach var="product" items="${requestScope.arraylist2}">
                        <td>
                            <section class="cell">   


                                <a href="<c:url value="/itemController/${product.getProductCode()}" ></c:url>"><img class="catalog_pics" src="${product.getImageURL()}" alt="moods"></a>
                                    <p class="catalog_desc">
                                        <a  class="item_name" href="<c:url value="/itemController/${product.getProductCode()}" ></c:url>">${product.getProductName()}<br/>
                                        <b class="item_price">$${product.getPrice()}</b></a>
                                </p>


                            </section>
                        </td> 

                    </c:forEach>       
                </tr>

            </table>

        </section>
    </article>
    <%@ include file="/includes/footer.jsp" %>