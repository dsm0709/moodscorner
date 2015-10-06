<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<body>

        <header class="centering dashed">
            <p id="login">
                <c:if test="${pageContext.request.getRequestURI().contains('order.jsp')}">
                    ${sessionScope.theUser.getEmail()}
                </c:if>
                <c:if test="${!pageContext.request.getRequestURI().contains('order.jsp')}">
                    Not Signed In
                </c:if>
                
            </p>
            <p id="title">Moods Corner</p>
            <p id="breadcrumb">

                <% 
                    String s = request.getRequestURI();
                    
                        if(s.contains("item")){
                            out.print("<a href=\"index.jsp\">Home</a>><a href='catalog_step1.jsp'>Catalog</a>>Item");
                            
                        }
                        else if(s.contains("catalog")){
                            out.print("<a href='index.jsp' alt='moods'>Home</a>>Catalog");
                            
                        }
                        else if(s.contains("about")){
                            out.print("<a href='index.jsp' alt='moods'>Home</a>>About");
                           
                        }
                        else if(s.contains("contact")){
                            out.print("<a href='index.jsp' alt='moods'>Home</a>>Contact");
                            
                        }
                        else if(s.contains("cart")){
                            out.print("<a href='index.jsp' alt='moods'>Home</a>>Cart");
                            
                        }
                        else{
                            out.print("Home");
                            
                        }
                    
                %>
            </p> 
            
        </header>