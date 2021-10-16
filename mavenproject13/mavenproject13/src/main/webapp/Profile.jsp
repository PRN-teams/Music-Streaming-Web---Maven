<%-- 
    Document   : Profile
    Created on : 21-Sep-2021, 21:03:43
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/mediaqueries.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          asp-append-version="true" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
</head>

<body>
<%@include file="shared/header.jsp" %>

<div class="player">
    <div class="player_body">
        <%@include file="shared/sidebarAccount.jsp" %>
        <div class="colection_body">
            <div class="collection_header">
                <h1>Profile Overview</h1>
            </div>
            <h3 style="font-size: 24px;font-family: spotify-circular, Helvetica, Arial, sans-serif;
                        line-height: 32px;margin: 20px 50px;">Profile</h3>
            <table class="user_info">
                <colgroup>
                    <col class="col_request">
                    <col class="col_form">
                </colgroup>
                <tbody>
                <tr>
                    <td style="color: #b3b3b3;">User name</td>
                    <td style="font-weight:bold">${requestScope.user.username}</td>
                </tr>
                <tr>
                    <td style="color: #b3b3b3;">Full Name</td>
                    <td style="font-weight:bold">${requestScope.user.fullname}</td>
                </tr>
                <tr>
                    <td style="color: #b3b3b3;">Email</td>
                    <td style="font-weight:bold">${requestScope.user.email}</td>
                </tr>
                <tr>
                    <td style="color: #b3b3b3;">Status</td>
                    <td style="font-weight:bold">${requestScope.user.status}</td>
                </tr>
                </tbody>
            </table>
            <a href="account"><button class="submit">Edit profile</button></a>
        </div>

    </div>
</div>

<%@include file="shared/footer.jsp" %>
</body>

</html>