<%-- 
    Document   : Index
    Created on : 21-Sep-2021, 21:03:04
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/album.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/mediaqueries.css">
    <link rel="stylesheet" href="css/hero.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <title>Home</title>
</head>
<body>
<%@include file="shared/header.jsp" %>

<section class="hero">
    <div class="hero-container">
        <div class="hero-content">
            <section id="slider">
                <input type="radio" name="slider" id="s1" checked>
                <input type="radio" name="slider" id="s2">
                <input type="radio" name="slider" id="s3">
                <input type="radio" name="slider" id="s4">
                <input type="radio" name="slider" id="s5">

                <label for="s1" id="slide1"></label>
                <label for="s2" id="slide2"></label>
                <label for="s3" id="slide3"></label>
                <label for="s4" id="slide4"></label>
                <label for="s5" id="slide5"></label>
            </section>

        </div>
    </div>
</section>
<!-- GENRES -->
<div class="my_preview">
    <div class="preview_body">
        <div class="side_bar">
            <!-- Single Album  -->
            <div style="margin-left:20px">
                <span  style="font-size:x-large;font-weight:bolder">New Music</span>
                <!-- box -->
                <div style="display: flex;justify-content: space-between;">
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/song/2021/09/09/f/c/f/d/1631181753902_300.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                    <!-- box -->
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/song/2021/09/09/f/c/f/d/1631181753902_300.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                    <!-- box -->
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/song/2021/09/09/f/c/f/d/1631181753902_300.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                    <!-- box -->
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/song/2021/09/09/f/c/f/d/1631181753902_300.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                    <!-- box  -->
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/song/2021/09/09/f/c/f/d/1631181753902_300.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Topic   -->
            <div style="display: flex;margin-top:7%;flex-direction:column" >
                <span  style="font-size:x-large;font-weight:bolder">Genres</span>
                <div style="display: flex;">
                    <div style="width: 270px;height:200px">
                        <img src="https://avatar-ex-swe.nixcdn.com/slideshow/2021/09/27/a/4/0/9/1632721702262_org.jpg" alt="" style="border-radius:5%;width: 260px;height:140px">
                    </div>
                    <div style="width: 270px;height:200px">
                        <img src="http://avatar.nct.nixcdn.com/topic/mobile/2020/06/15/9/d/c/3/1592214676187.jpg" alt="" style="border-radius:5%;width: 260px;height:140px">
                    </div>
                    <div style="width: 270px;height:200px">
                        <img src="http://avatar.nct.nixcdn.com/topic/mobile/2020/06/15/9/d/c/3/1592214676187.jpg" alt="" style="border-radius:5%;width: 260px;height:140px">
                    </div>
                    <div style="width: 270px;height:200px">
                        <img src="http://avatar.nct.nixcdn.com/topic/mobile/2020/06/15/9/d/c/3/1592214676187.jpg" alt="" style="border-radius:5%;width: 260px;height:140px">
                    </div>
                </div>

            </div>

            <!-- Suggestion  -->
            <div style="margin-left:20px">
                <span  style="font-size:x-large;font-weight:bolder">Recent Release</span>
                <!-- box -->
                <div style="display: flex;justify-content: space-between;">
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                </div>
                <!-- box2 -->
                <div style="display: flex;justify-content: space-between;margin-top:3%">
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebdfc6c2a5b7078b21188a0cde/2/en/default" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-top:7%;">
                <span  style="font-size:x-large;font-weight:bolder">Today's Hit</span>
                <div class="grid-container">
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                    <div class="item1">
                        <img src="https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebb87f94414a1c55088c498953/3/vi/default" alt="">
                        <div style="display:flex;flex-direction:column;justify-content: center;padding:10px">
                            <span>Song's name</span>
                            <span>Song's Artis</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Suggestion  -->
            <div style="margin-left:20px;margin-top:2%">
                <span  style="font-size:x-large;font-weight:bolder">TOP 100</span>
                <!-- box -->
                <div style="display: flex;justify-content: space-between;">
                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/playlist/2021/04/07/2/7/0/9/1617776161396.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/playlist/2021/04/07/2/7/0/9/1617776161396.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/playlist/2021/04/07/2/7/0/9/1617776161396.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/playlist/2021/04/07/2/7/0/9/1617776161396.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>

                    <div style="height:170px;width: 200px;display:flex;flex-direction:column;margin-top:20px">
                        <img src="https://avatar-ex-swe.nixcdn.com/playlist/2021/04/07/2/7/0/9/1617776161396.jpg" alt="" style="width: 170px;height:200px">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Album's name</span>
                            <span>Album's Artis</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- RElated Artist  -->
            <div style="margin:20px; margin-top:7%">
                <span  style="font-size:x-large;font-weight:bolder">WEEKLY ARTIST CHART</span>
                <!-- box -->
                <div style="display: flex;justify-content: space-between;">
                    <div style="height:300px;width: 250px;background:rgba(255, 255, 255, 0.1);display:flex;flex-direction:column;">
                        <img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/10/31/c/0/b/8/1572506582623_600.jpg" alt="" style="border-radius:50%;width: 250px;height:250px;padding:10px;">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Artist's name</span>
                        </div>
                    </div>
                    <!-- box -->
                    <div style="height:300px;width: 250px;background:rgba(255, 255, 255, 0.1);display:flex;flex-direction:column;">
                        <img src="https://i.scdn.co/image/ab67616d00001e02babcd515ad455b2c49c54c96" alt="" style="border-radius:50%;width: 250px;height:250px;padding:10px;">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Artist's name</span>
                        </div>
                    </div>
                    <!-- box -->
                    <div style="height:300px;width: 250px;background:rgba(255, 255, 255, 0.1);display:flex;flex-direction:column;">
                        <img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/08/13/a/9/8/e/1597294555540_600.jpg" alt="" style="border-radius:50%;width: 250px;height:250px;padding:10px;">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Artist's name</span>
                        </div>
                    </div>
                    <!-- box -->
                    <div style="height:300px;width: 250px;background:rgba(255, 255, 255, 0.1);display:flex;flex-direction:column;">
                        <img src="https://i.scdn.co/image/ab6761610000e5eba6351422d2712ababafd2ae6" alt="" style="border-radius:50%;width: 250px;height:250px;padding:10px;">
                        <div style="display: flex;
                                     flex-direction: column;
                                     align-items: center; font-weight:bolder;font-size:larger">
                            <span>Artist's name</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="my_body">
            <h1>Top songs</h1>
            <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DXcBWIGoYBM5M" width="300" height="450" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
            <h1>Top Album</h1>
            <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYs83FtTMQFw" width="300" height="400" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
            <h1>Top Podcast</h1>
            <iframe src="https://open.spotify.com/embed/show/7Eo5RqrItEwmuwSJv5n6QZ" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
            <iframe src="https://open.spotify.com/embed/show/0X0b4Wb7cgvs7UCVSBaqGo" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
        </div>
    </div>
</div>

<%@include file="shared/footer.jsp" %>
</body>
</html>
