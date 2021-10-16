<%-- 
    Document   : Contract
    Created on : 14-Oct-2021, 07:46:57
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
                        line-height: 32px;margin: 20px 50px;">Contract Information</h3>
                    <c:if test="${requestScope.condition == 'active'}">
                        <table class="user_info">
                            <colgroup>
                                <col class="col_request">
                                <col class="col_form">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td style="color: #b3b3b3;">Contract ID</td>
                                    <td style="font-weight:bold">${requestScope.contract.contractID}</td>
                                </tr>
                                <tr>
                                    <td style="color: #b3b3b3;">Username</td>
                                    <td style="font-weight:bold">${requestScope.contract.username}</td>
                                </tr>
                                <tr>
                                    <td style="color: #b3b3b3;">Start Date</td>
                                    <td style="font-weight:bold">${requestScope.contract.startDate}</td>
                                </tr>
                                <tr>
                                    <td style="color: #b3b3b3;">Expired Date</td>
                                    <td style="font-weight:bold">${requestScope.contract.endDate}</td>
                                </tr>
                            </tbody>
                        </table>                      
                    </c:if>

                    <c:if test="${requestScope.condition == 'expired'}">
                        <h5 style="font-size: 18px;font-family: spotify-circular, Helvetica, Arial, sans-serif;
                        line-height: 32px;margin: 20px 50px;">Oops, it seems like you are currently not on any contract with MSW....</h5>
                        <a href="newContract"><button class="submit">Sign a new one</button></a>
                    </c:if>
                </div>

            </div>
        </div>

        <%@include file="shared/footer.jsp" %>
    </body>

</html>
