<%-- 
    Document   : header
    Created on : 21-Sep-2021, 21:44:37
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <style>
            .login_button {
                color: white; 
                font-weight: bold; 
                font-size: medium
            }

            .login_button:hover {
                color: blue;
            }
        </style>
        <title>Home</title>
    </head>
    <body>
        <header>
            <div class="header-container">
                <div class="header-logo">
                    <a href="home"><img src="img/logo.png" style="width: 25%; height: 25%;"/></a>
                </div>
                <nav class="nav-mobile">
                    <!-- Profile -->
                    <div class="profile">
                        <svg viewBox="0 0 1024 1024" class="profile-icon">
                        <path
                            d="M730.06 679.64q-45.377 53.444-101.84 83.443t-120 29.999q-64.032 0-120.75-30.503t-102.6-84.451q-40.335 13.109-77.645 29.747t-53.948 26.722l-17.142 10.084Q106.388 763.84 84.96 802.41t-21.428 73.107 25.461 59.242 60.754 24.705h716.95q35.293 0 60.754-24.705t25.461-59.242-21.428-72.603-51.679-57.225q-6.554-4.033-18.907-10.84t-51.427-24.453-79.409-30.755zm-221.84 25.72q-34.285 0-67.561-14.873t-60.754-40.335-51.175-60.502-40.083-75.124-25.461-84.451-9.075-87.728q0-64.032 19.915-116.22t54.452-85.964 80.67-51.931 99.072-18.151 99.072 18.151 80.67 51.931 54.452 85.964 19.915 116.22q0 65.04-20.167 130.58t-53.948 116.72-81.426 83.443-98.568 32.268z">
                        </path>
                        </svg>
                    </div>
                    <!-- Hamburger menu -->
                    <input type="checkbox" class="toggler" />
                    <div class="hamburger-menu">
                        <div></div>
                    </div>
                    <div class="menu">
                        <div class="background-overlay"></div>
                        <div class="menu-overlay">
                            <ul>
                                <li class="search">
                                    <input placeholder="Search for Artis,song or playlist" type="text" />
                                    <i class="fas fa-search"></i>
                                    <i class="fas fa-times"></i>
                                </li>
                                <li><a href="">Premium</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Download</a></li>
                                <li role="separator"></li>
                                <li><a href="#">Account</a></li>
                                <li><a href="#">Log out</a></li>
                            </ul>
                            <div class="menu-overlay-logo">
                                <img src="https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/Spotify_Logo_CMYK_Green.png"
                                     style="color:white" />
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- This is the menu that will be shown on Desktop -->
                <nav class="nav-desktop">
                    <!-- Site menu -->
                    <ul>
                        <li>
                            <form action="search">
                                <div class="sample two">
                                    <input class="search" type="search" name="query" placeholder="Search">
                                    <button type="submit" class="btn btn-search fa fa-search"></button>
                                </div>
                            </form>
                        </li>
                        <li><a href="#">Premium</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="https://webcache.googleusercontent.com/search?q=cache:zz9lg7qXuF4J:https://www.cse.msu.edu/~cse435/Handouts/SRSExample-webapp.doc+&cd=2&hl=vi&ct=clnk&gl=vn" target="_blank">
                                Privacy
                            </a>
                        </li>
                        <li role="separator"></li>
                    </ul>

                    <c:if test="${sessionScope.account==null}" >
                        <a href="login" class="login_button">Login Now!</a>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}" >
                        <!-- Profile menu -->
                        <div class="profile-container">
                            <input type="checkbox" class="dropdown-menu-toggler" />
                            <div class="dropdown-menu">
                                <ul> 
                                    <li><a href="profile">Account</a></li>
                                    <li><a href="logout">Log out</a></li>
                                </ul>
                            </div>
                            <div class="profile">
                                <svg viewBox="0 0 1024 1024" class="profile-icon">
                                <path
                                    d="M730.06 679.64q-45.377 53.444-101.84 83.443t-120 29.999q-64.032 0-120.75-30.503t-102.6-84.451q-40.335 13.109-77.645 29.747t-53.948 26.722l-17.142 10.084Q106.388 763.84 84.96 802.41t-21.428 73.107 25.461 59.242 60.754 24.705h716.95q35.293 0 60.754-24.705t25.461-59.242-21.428-72.603-51.679-57.225q-6.554-4.033-18.907-10.84t-51.427-24.453-79.409-30.755zm-221.84 25.72q-34.285 0-67.561-14.873t-60.754-40.335-51.175-60.502-40.083-75.124-25.461-84.451-9.075-87.728q0-64.032 19.915-116.22t54.452-85.964 80.67-51.931 99.072-18.151 99.072 18.151 80.67 51.931 54.452 85.964 19.915 116.22q0 65.04-20.167 130.58t-53.948 116.72-81.426 83.443-98.568 32.268z">
                                </path>
                                </svg>
                            </div>
                            <ul>
                                <li>${sessionScope.account.username}</li>
                                <li>
                                    <svg viewBox="0 0 1024 1024" class="profile-arrow">
                                    <path
                                        d="M476.455 806.696L95.291 425.532Q80.67 410.911 80.67 390.239t14.621-34.789 35.293-14.117 34.789 14.117L508.219 698.8l349.4-349.4q14.621-14.117 35.293-14.117t34.789 14.117 14.117 34.789-14.117 34.789L546.537 800.142q-19.159 19.159-38.318 19.159t-31.764-12.605z">
                                    </path>
                                    </svg>
                                </li>
                            </ul>
                        </div>
                    </c:if>
                </nav>
            </div>
        </header>
    </body>
</html>
