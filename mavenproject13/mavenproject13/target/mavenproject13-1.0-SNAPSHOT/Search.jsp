<%-- 
    Document   : Search
    Created on : 22-Sep-2021, 10:52:34
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/player.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/open.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" asp-append-version="true" />
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

        /* Flashing */
        .genres:hover img {
            opacity: 1;
            -webkit-animation: flash 1.5s;
            animation: flash 1.5s;
        }
        @-webkit-keyframes flash {
            0% {
                opacity: .8;
            }
            100% {
                opacity: 1;
            }
        }
        @keyframes flash {
            0% {
                opacity: .8;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
    <title>Search</title>
</head>
<body>

<div class="player_body">
    <%@include file="shared/sidebar.jsp" %>

    <div class="colection_body" style="background: linear-gradient(rgb(161, 86, 149),black);">
        <div class="collection_header" style="margin-bottom: 30px;">
            <div class="header_left" style="${requestScope.before == 'search' ? 'background-color: white;':''} color:gray;border-radius:30px;display:flex;align-items:center;width:90%;padding:10px">
                <c:if test="${requestScope.before == 'search'}">
                    <i class="fas fa-search fa-2x"></i>
                    <input type="text" placeholder="Search for Artists,Songs, or Playlist" size="130px" style="border: none;" oninput="searchByName(this)" value="${requestScope.query}" id="myInput" name="query">
                </c:if>
                <c:if test="${requestScope.before == 'category'}">
                    <a href="javascript: history.go(-1)">
                        <i class="fas fa-chevron-circle-left fa-3x" style="color:black"></i>
                    </a>
                </c:if>
            </div>
            <div class="header_right">
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
            </div>
        </div>
        <style>
            #search:focus{
                outline: none;
            }
        </style>
        <!--                <div>
                            <select name="type" id="type">
                                <option value="song">Song</option>
                                <option value="artist">Artist</option>
                            </select>
                        </div>-->
        <c:if test="${requestScope.before == 'search'}">
            <h1 style="font-size:xx-large;padding:20px 0">Browse all</h1>
            <div class="boxes" id="loadAjax">
                <c:if test="${requestScope.query != '' }">
                    <c:forEach items="${requestScope.result}" var="song">
                        <div class="box">
                            <div class="box_image">
                                <img src="${song.img}" alt="">
                            </div>
                            <div class="box_tittle">
                                <a href="player?songID=${song.songID}">${song.name}</a>
                                <p style="font-size: smaller; font-weight: normal">
                                    <c:forEach items="${song.artist}" var="sg" varStatus="loop">
                                        <a href=#">${sg.name}<c:if test="${!loop.last}">,</c:if> </a>
                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${requestScope.query == '' }">
                    <c:forEach items="${requestScope.clist}" var="category">
                        <div class="genres" id="genres" style="width: 250px; margin: 20px;">
                            <a href="category?categoryID=${category.categoryID}"><img src="${category.img}" alt="" style="width: 250px;"></a>
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </c:if>
        <c:if test="${requestScope.before == 'category'}">
            <h1 style="font-size:xx-large;padding:20px 0">Category</h1>
            <div style="display:grid; grid-template-columns: auto auto auto auto; grid-gap: 10px;">
                <c:forEach items="${requestScope.list}" var="song">
                    <div class="large-boxes_box">
                        <img src="${song.img}" alt="">
                        <div class="large-boxes_tittle" style="font-size: small; font-weight: bold"><a href="player?songID=${song.songID}">${song.name}</a></div>
                        <p style="font-size: small; font-weight: normal">
                            <c:forEach items="${song.artist}" var="sg" varStatus="loop">
                                <a href="#">${sg.name}<c:if test="${!loop.last}">,</c:if> </a>
                            </c:forEach>
                        </p>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </div>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function searchByName(param) {
        var txt = param.value;
        $.ajax({
            url: "/MusicStreamingWeb-Long/searchAjax",
            type: 'GET',
            data: {
                query: txt
            },
            success: function (data) {
                var row = document.getElementById("loadAjax");
                row.innerHTML = data;
            },
            error: function (xhr) {

            }
        });
    }
</script>
<!--            <div class="player_footer">
                <div class="footer_left">
                    <img class="song_playing"
                         src="" />
                    <div class="song_info">
                        <h4 id="my_tittle"></h4>
                        <p id="my_artis"></p>
                    </div>
                </div>

                <div class="footer_center">
                    <div class="control_bar">
                        <i class="fa fa-random fa-2x" id="control_green"></i>
                        <i class="fas fa-step-backward fa-2x" id="control_icon"></i>
                        <div class="play_button">
                            <i class="far fa-play-circle fa-5x " id="control_icon"></i>
                            <i class="fas fa-pause-circle fa-5x my pause"></i>
                        </div>


                        <i class="fas fa-step-forward fa-2x" id="control_icon"></i>
                        <i class="fas fa-retweet fa-2x" id="control_green"></i>
                    </div>
                    <div class="progress-container">
                        <span id="start_time"></span>
                        <div class="progress-bar">
                            <div class="progress" id="progress"></div>
                            <audio id="audio" src=""></audio>
                        </div>
                        <span id="end_time"></span>
                    </div>
                </div>
                <div class="footer_right">
                    <i class="fas fa-list-ul fa-2x"></i>
                    <div class="volume_control">
                        <i id="volume" class="fas fa-volume-up fa-2x"></i>
                        <i id="volume_mute" class="fas fa-volume-mute fa-2x changesound"></i>
                    </div>

                    <div class="input-div">
                        <div class="volumn-input-div">
                            <input type="range" value="100" step="5" min="0" >

                        </div>
                    </div>
                </div>
            </div>-->
</body>
</html>
