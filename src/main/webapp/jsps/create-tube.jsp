<%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 6.2.2019 г.
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <c:import url="templates/head.jsp"/>
</head>
<body>
<div class="container">
<main>
    <div class="jumbotron">
        <form action="/tubes/create" method="post">
        <div class="row">
            <div class="col col-md-12 d-flex justify-content-center">
                <h1>Create Tube!</h1>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col col-md-12">
                <div class="row d-flex justify-content-center">
                    <label for="name">Title</label>
                </div>
                <div class="row d-flex justify-content-center">
                    <input  name="name" type="text" id="name" title="name">
                </div>
            </div>
        </div>
            <hr/>
        <div class="row">
            <div class="col col-md-12 ">
                <div class="row d-flex justify-content-center">
                    <label for="descriptionTextarea">Description:</label>
                </div>
                <div class="row d-flex justify-content-center">
                    <textarea name="description" id="descriptionTextarea" cols="22" rows="3"></textarea>
                </div>
            </div>
        </div>
            <hr/>
        <div class="row">
            <div class="col col-md-12">
                <div class="row d-flex justify-content-center">
                    <label for="youTubeLink">YouTube Link</label>
                </div>

                <div class="row d-flex justify-content-center">
                    <input name="youTubeLink" type="text"  id="youtubeLink">
                </div>
                <br/>
            </div>
        </div>
            <hr/>
        <div class="row">
            <div class="col col-md-12">
                <div class="row d-flex justify-content-center">
                    <label for="uploaderLink">Uploader</label>
                </div>

                <div class="row d-flex justify-content-center">
                    <input name="uploader" type="text" id="uploaderLink">
                </div>
                <br/>
            </div>
        </div>
           <hr/>
        <div class="row">
            <div class="col col-md-12 d-flex justify-content-center">
                <button class="btn btn-info" type="submit">Create Tube</button>
            </div>
        </div>

        <hr/>

        <div class="row">
        <div class="col col-md-12 d-flex justify-content-center">
            <a href="/" class="href">Back to home page.</a>
        </div>
        </div>
    </div>
</main>

    <footer><c:import url="templates/footer.jsp"/></footer>
</body>
</html>
