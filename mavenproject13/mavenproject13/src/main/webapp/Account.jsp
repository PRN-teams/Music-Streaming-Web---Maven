<%-- 
    Document   : EditProfile
    Created on : 21-Sep-2021, 21:03:52
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
        <link rel="stylesheet" href="css/search.css">
        <link rel="stylesheet" href="css/mediaqueries.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              asp-append-version="true" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function check() {
                var confirm = prompt("Enter your old password");
                var oldpass = document.getElementById("oldpass").value;
                if (oldpass == confirm) {
                    alert("Correct password, changes will be saved");
                    return true;
                } else {
                    alert("Wrong password! Change will not be saved");
                    return false;
                }
            }
            
            function thisF(){
                alert("Asfasfaf");
            }
        </script>
        <title>Account</title>
    </head>

    <body>

        <%@include file="shared/header.jsp" %>

        <div class="player">
            <div class="player_body">
                <%@include file="shared/sidebarAccount.jsp" %>
                <div class="colection_body">
                    <div class="collection_header">
                        <h1>Profile Editing</h1>
                    </div>
                    <form action="account" onsubmit="return check()" method="post" style="margin: 20px 50px;">
                        <h2 >Username</h2>
                        <input type="text" class="form-control" name="username" value="${requestScope.user.username}" readonly>
                        <h2 >Password</h2>
                        <input type="password" class="form-control" name="password" value="${sessionScope.account.password}">
                        <input type="text" class="form-control" style="display: none" name="password" id="oldpass" value="${sessionScope.account.password}">
                        <h2 >Email</h2>
                        <input type="email" class="form-control" name="email" value="${requestScope.user.email}">
                        <h2 >Fullname</h2>
                        <input type="text" class="form-control" name="fullname" value="${requestScope.user.fullname}">
                        <small id="emailHelp" class="form-text text-muted">Chúng tôi sẽ không chia sẻ thông tin này với bất kỳ ai</small>
                        <div style="display: flex; justify-content:flex-end">
                            <button class="cancel" style="background-color: white;color:black"><a href="home">Cancel</a></button>
                            <button class="submit" type="submit">Save</button>
                        </div>
                    </form>

                </div>

            </div>
        </div>

        <%@include file="shared/footer.jsp" %>
    </body>

</html>