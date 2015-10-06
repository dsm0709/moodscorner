<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<footer class="dashed centering">
            &copy; Copyright <%= currentYear %> Siming Deng  &amp; Qing Guo Team 
        </footer>
    </body></html>