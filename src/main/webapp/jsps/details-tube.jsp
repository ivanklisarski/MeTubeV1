<%@ page import="metube.domain.models.view.TubeDetailsViewModel" %><%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 6.2.2019 г.
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <c:import url="templates/head.jsp"/>
</head>
<body>
<% TubeDetailsViewModel tubeDetailsViewModel = (TubeDetailsViewModel) request.getAttribute("TubeDetailsViewModel");%>

<div class="container">
    <main>
        <div class="jumbotron">
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <h1><%=tubeDetailsViewModel.getName()%></h1>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                   <h3><%=tubeDetailsViewModel.getDescription()%></h3>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col col-md-6 d-flex justify-content-center">
                    <a href="<%=tubeDetailsViewModel.getYouTubeLink()%>"> Link to Video.</a>
                </div>
                <div class="col col-md-6 d-flex justify-content-center">
                   <p><%=tubeDetailsViewModel.getUploader()%></p>
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
