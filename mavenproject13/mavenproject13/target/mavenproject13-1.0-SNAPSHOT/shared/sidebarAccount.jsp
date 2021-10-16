<%-- 
    Document   : sidebarAccount
    Created on : 14-Oct-2021, 07:47:54
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/profile.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/search.css">
        <link rel="stylesheet" href="css/mediaqueries.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              asp-append-version="true" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="side_bar_home">
            <img style="width: 70px;border-radius:50%;margin-left:32%; margin-bottom:20px"
                 src="https://www.w3schools.com/w3images/avatar5.png" alt="">
            <div class="sidebar_option ${requestScope.current == 'profile' ? 'sidebar_active':''}">
                <i class="fas fa-home"></i>
                <a href="profile"><p>Profile Overview</p></a>
            </div>
            <div class="sidebar_option ${requestScope.current == 'account' ? 'sidebar_active':''}">
                <i class="fas fa-pencil-alt"></i>
                <a href="account"><p>Edit profile</p></a>
            </div>
            <div class="sidebar_option">
                <i class="fas fa-podcast"></i>
                <p>
                    Manage playlist
                </p>

            </div>
<!--            <div class="sidebar_option">
                <i class="fas fa-bell"></i>
                <p>
                    Manage Notification
                </p>

            </div>-->
            <div class="sidebar_option ${requestScope.current == 'contract' ? 'sidebar_active':''}">
                <i class="fas fa-record-vinyl"></i>
                <a href="contract"><p>Contract information</p></a>

            </div>
        </div>
    </body>
</html>
