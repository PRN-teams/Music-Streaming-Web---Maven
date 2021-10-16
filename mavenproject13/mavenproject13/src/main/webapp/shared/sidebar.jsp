<%-- 
    Document   : sidebar
    Created on : 13-Oct-2021, 22:56:34
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/player.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/open.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" asp-append-version="true" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="side_bar_home">
            <a href="index"><img style="width: 70px;" src="img/logo.png" alt=""></a>
            <div class="sidebar_option">
                <i class="fas fa-home" ${requestScope.currentPage == 'Home' ? 'style="color: white"':''}></i> 
                <p>
                    <a href="home" ${requestScope.currentPage == 'Home' ? 'style="color: white"':''}>Home</a>
                </p>
            </div>
            <div class="sidebar_option">
                <i class="fas fa-search" ${requestScope.currentPage == 'Search' ? 'style="color: white"':''}></i>
                <p>
                    <a href="search?query=" ${requestScope.currentPage == 'Search' ? 'style="color: white"':''}>Search</a>
                </p>

            </div>
            <div class="sidebar_option">
                <i class="fas fa-swatchbook"></i> <p>
                    Your Library
                </p>

            </div>
            <br />
            <strong class="sidebar_tittle"> PLAYLIST </strong>
            <hr/>
            <c:forEach var="p" items="${requestScope.listP}">
                <div class="sidebar_option">
                    <i class="fas fa-record-vinyl" ${requestScope.id == p.listID ? 'style="color: white"':''}></i> 
                    <p>
                        <a href="playlist?id=${p.listID}" ${requestScope.id == p.listID ? 'style="color: white"':''}>${p.listName}</a>
                    </p>
                </div>
            </c:forEach>
            <div class="sidebar_option">
                <i class="fas fa-plus-square"></i> <p>
                    <a href="listForm">Add new playlist</a>
                </p>

            </div>               
        </div>
    </body>
</html>
