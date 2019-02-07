<%@ page import="java.util.List" %>
<%@ page import="metube.domain.models.view.AllTubesViewModel" %><%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 6.2.2019 г.
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <c:import url="templates/head.jsp"/>
</head>
<body>
<%List<AllTubesViewModel> tubes = (List<AllTubesViewModel>) request.getAttribute("allTubes");%>
<div class="container">
    <main>
        <div class="jumbotron">
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <h1>All Tubes</h1>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <h2>Check our tubes below.</h2>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <%if(tubes.size()==0) {%>
                               <p>No tubes - <a href="/tubes/create">Create some!</a></p>
                    <%} else {%>
                    <ul>
                        <%
                            for (AllTubesViewModel tube : tubes) {%>
                        <li><a href="/tubes/details?name=<%=tube.getName()%>"><%=tube.getName()%></a></li>
                        <% }%>
                    </ul>
                    <%}%>
                </div>
            </div>
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <a href="/" class="href">Back to home page.</a>
                </div>
            </div>
        </div>
    </main>
    <footer><c:import url="templates/footer.jsp"/></footer>
</div>

</body>
</html>
