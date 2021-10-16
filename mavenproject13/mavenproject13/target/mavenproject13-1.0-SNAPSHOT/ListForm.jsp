<%-- 
    Document   : Playlist
    Created on : 12-Oct-2021, 22:32:35
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
        <link rel="stylesheet" href="css/header.css">
        <script src="./js/site.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Player</title>
    </head>

    <body>
        <div class="sharing_option">
            <div class="sharing-content" style="background-color: #6c649e">
                <i class="fas fa-times"></i>
                <h2 style="text-align: center; padding-bottom:10px;font-size:20px;color: white;">Share to</h2>
                <nav style="text-align: center;padding-bottom:20px">
                    <li class="tweet-share"><i class="fab fa-twitter"></i></li>
                    <li class="facebook-share"><i class="fab fa-facebook-f"></i></li> 
                    <li class="wa-share"><i class="fab fa-whatsapp"></i></li> 
                </nav>
            </div>
        </div>
        <div class="player">
            <div class="player_body">
                <%@include file="shared/sidebar.jsp" %>
                <div class="colection_body">
                    <div class="collection_header">
                        <div class="header_left">
                            <i class="fas fa-chevron-circle-left fa-3x" style="color:black"></i>
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
                    <div class="body_info">
                        <img src="https://cf.shopee.vn/file/8f1149f4f1f6bdf77bee6b55317d98f6" />
                        <div class="body_info_text">
                            
                            <strong>PLAYLIST</strong>
                            <form action="newlist">
                                <input type="text" placeholder="Your Playlist's Name" name="listName"><br/>
                                <button>
                                    <input type="submit" value="Create"/>
                                </button>
                                
                            </form>
                        </div>
                    </div>
                    <div class="body_songs" >
                        <div class="body_song_icon" style="display: flex;align-items: center;">
                            <div class="play_button">
                                <i class="fas fa-play-circle fa-5x " id="playlist_body_suffle" style="color: green; background-color:white;border-radius:50%;"></i>
                                <i class="fas fa-pause-circle fa-5x my pause" id="playlist_body_suffle"></i>
                            </div>
                            <div>
                                <i class="far fa-heart fa-2x" style="color: green;padding:10px"></i>
                                <i class="fas fa-ellipsis-h fa-2x tooltip">
                                    <span>
                                        <span class="tooltiptext">
                                            <p id="my_share" onclick="myFunction()"><i class="fas fa-share-alt"></i> Share</p>
                                            
                                        </span>
                                    </span>
                                </i>
                            </div>
                        </div>
                        <div class="playlist_song">
                        </div>

                    </div>
                </div>
            </div>
            <div class="player_footer">
                <div class="footer_left">
                    <img class="song_playing" src="" />
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
                            <input type="range" value="100" step="5" min="0">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <script>
        //handle Sharing music

        setShareLinks();

        function socialWindowScreen(url) {
            var left = (screen.width - 570) / 2;
            var top = (screen.height - 570) / 2;

            var params = "menubar=no,toolbar=no,status=no,width=570,height=570,top=" + top + ",left=" + left;

            window.open(url, "NewWindow", params)
        }

        function setShareLinks() {
            var pageUrl = encodeURIComponent(document.URL);
            var tweet = encodeURIComponent($("meta[property ='og:description']").attr("content"));

            $(".facebook-share").on("click", function () {
                url = "https://www.facebook.com/sharer/sharer.php?u=" + pageUrl;
                socialWindowScreen(url);
            })
            $(".tweet-share").on("click", function () {
                url = "https://www.twitter.com/intent/tweet?url=" + pageUrl + "&text=" + tweet;
                socialWindowScreen(url);
            })
            $(".wa-share").on("click", function () {
                url = "https://wa.me/?text=" + pageUrl;
                socialWindowScreen(url);
            })
        }
        //handle play music
        const playlist = $('.playlist_song');
        const player_tittle = $('#my_tittle');
        const player_thumb = $('.song_playing');
        const player_artis = $('#my_artis');
        const audio = $('#audio');
        const playBtn = $('.play_button');
        const progress = $("#progress");
        const next_Btn = $('.fa-step-forward');
        const prev_Btn = $('.fa-step-backward');
        const random_Btn = $('.fa-random');
        const repeat_Btn = $('.fa-retweet');
        const love_Btn = $(".fa-heart");
        const volume = $(".volume_control");
        const app = {
            isMute: false,
            currentIndex: 0,
            isRandom: false,
            isRepeat: false,
            songs: [
        <c:forEach items="${requestScope.listS.songs}" var="song">
                {
                    name: '${song.name}',
                    singer: <c:forEach var="singer" items="${song.artist}">
                        '${singer.name}, '
                    </c:forEach>,
                    path: '${song.uri}',
                    image: '${song.img}'
                },
        </c:forEach>
            ],

            render: function () {
                const htmls = this.songs.map((song, index) => {
                    console.log(song.image)
                    return `
           <div class="song_row \${index == this.currentIndex ? 'song_active' : ''}" data-index="\${index}">
                <img class="songRow_album" src="\${song.image}" />
                    <div class="songRow_info" style="width: 80%;">
                       <h1>\${song.name}</h1>
                          <p>\${song.singer}</p>
                    </div>
                    <div class="loader \${index == this.currentIndex ? 'playing' : ''}" >
                        <span class="stroke"></span>
                        <span class="stroke"></span>
                        <span class="stroke"></span>
                        <span class="stroke"></span>
                        <span class="stroke"></span>
                        <span class="stroke"></span>
                        <span class="stroke"></span>
                    </div>
                    <span style="padding:0 10px">04:23</span>
                    <i class="fas fa-ellipsis-h toolbottom">
                        <span class="tooltiptext">
                            <p id="my_share" onclick="myFunction()"><i class="fas fa-share-alt" ></i> Share</p>
                            <p><i class="fas fa-arrow-alt-circle-down"></i><a href="\${song.path}" download=""> Download</a></p>  
                            <p onclick="addFunction()" ><i class="fab fa-stack-overflow"></i> Add to playlist</p>
                        </span>
                    
                    </i>
            </div>
        `
                })
                playlist.html(htmls.join(''))
            },
            defineProperties: function () {
                Object.defineProperty(this, 'currrentSong', {
                    get: function () {
                        return this.songs[this.currentIndex]
                    }
                })
            },
            handleEvent: function () {
                $('.fa-times').click(function () {
                    document.querySelector('.sharing_option').style.display = 'none';
                    document.querySelector('.add_option').style.display = 'none'
                })

                //handle love button 
                love_Btn.click(function () {
                    if (love_Btn.hasClass("far")) {
                        love_Btn.removeClass("far")
                        love_Btn.addClass("fas")
                    } else {
                        love_Btn.addClass("far")
                        love_Btn.removeClass("fas")
                    }
                })
                //Handle play/pause button
                playBtn.click(function () {
                    if ($('.fa-play-circle').hasClass("my pause")) {
                        $('.fa-play-circle').removeClass("my pause")
                        $('.fa-pause-circle').addClass("pause")
                        audio.get(0).pause()
                    } else {
                        $('.fa-play-circle').addClass("my pause")
                        $('.fa-pause-circle').removeClass("pause")
                        audio.get(0).play()
                        audio.get(0).ontimeupdate = function () {
                            var s = parseInt(audio.get(0).currentTime % 60);
                            var m = parseInt((audio.get(0).currentTime / 60) % 60);
                            $('#start_time').html(m + ':' + s)
                            //progress of song
                            if (audio.get(0).duration) {
                                const song_progress = Math.floor(audio.get(0).currentTime / audio.get(0).duration * 100)
                                progress.css("width", song_progress + '%')
                            }
                        }

                        var e = parseInt(audio.get(0).duration % 60);
                        var d = parseInt((audio.get(0).duration / 60) % 60);
                        $('#end_time').html(e + ':' + d * 10)
                    }

                })
                //function call next song
                var callback = () => {
                    //app.nextSong=app.nextSong.bind(this)
                    app.nextSong()
                    audio.get(0).play()
                    app.render()
                }
                //function for prev song
                var onprev = () => {
                    app.prevSong()
                    audio.get(0).play()
                    app.render()
                }
                onprev = onprev.bind(this)
                callback = callback.bind(this)
                //Next Song
                prev_Btn.click(onprev)
                next_Btn.click(callback)
                random_Btn.click(function (e) {
                    app.isRandom = !app.isRandom
                    random_Btn.toggleClass('active', app.isRandom)
                    app.getRandomSong()
                    audio.get(0).play()
                    $('.fa-play-circle').addClass("my pause")
                    $('.fa-pause-circle').removeClass("pause")
                })
                //volume on click
                volume.click(function () {
                    if ($('#volume').hasClass("changesound")) {
                        $('#volume').removeClass("changesound")
                        $('#volume_mute').addClass("changesound")
                        document.querySelector("input").value = 100
                        audio.get(0).volume = slider.value / 100


                    } else {
                        $('#volume').addClass("changesound")
                        $('#volume_mute').removeClass("changesound")
                        document.querySelector("input").value = 0
                        audio.get(0).volume = slider.value / 100
                    }
                })
                //Handle continue playing when audio ended
                audio.get(0).onended = function () {
                    if (app.isRandom) {
                        random_Btn.click()
                    } else if (app.isRepeat) {
                        audio.get(0).play()
                    } else {
                        next_Btn.click()
                    }
                    $('.fa-play-circle').addClass("my pause")
                    $('.fa-pause-circle').removeClass("pause")
                }

                //Handle repeat song
                repeat_Btn.click(function (e) {
                    app.isRepeat = !app.isRepeat
                    repeat_Btn.toggleClass('active', app.isRepeat)
                    app.isRandom = false
                    random_Btn.removeClass("active")
                })

                //Handle

                //6. Play song choosed in list when click on this song
                //console.log() 
                playlist.click(function (e) {
                    const song_element = e.target.closest('.song_row:not(.song_active)')
                    //handle when click on song
                    if (song_element || e.target.closest('.fa-ellipsis-h')) {
                        if (song_element) {
                            app.currentIndex = Number(song_element.dataset.index)
                            //console.log(app.currentIndex)
                            app.loadCurrentSong()
                            audio.get(0).play()
                            app.render()
                            $('.fa-play-circle').addClass("my pause")
                            $('.fa-pause-circle').removeClass("pause")

                        }
                    }
                })

                //volume handle
                const slider = document.querySelector("input")
                slider.oninput = function () {
                    audio.get(0).volume = slider.value / 100
                    //console.log(slider.value)
                    if (parseInt(slider.value) === 0) {
                        app.isMute = true
                        $('#volume').addClass('changesound')
                        $('#volume_mute').removeClass('changesound')
                    } else {
                        app.isMute = false
                        $('#volume').removeClass('changesound')
                        $('#volume_mute').addClass('changesound')
                    }
                    console.log(app.isMute)
                }

            },

            //load Song

            loadCurrentSong: function () {
                audio.attr("src", this.currrentSong.path)
                player_thumb.attr("src", this.currrentSong.image)
                player_artis.html(this.currrentSong.singer)
                player_tittle.html(this.currrentSong.name)
            },
            //next Song
            nextSong: function () {
                this.currentIndex++
                console.log(this, this.currentIndex)
                if (this.currentIndex >= this.songs.length) {
                    this.currentIndex = 0
                }
                $('.fa-play-circle').addClass("my pause")
                $('.fa-pause-circle').removeClass("pause")

                this.loadCurrentSong()
            },

            //prevSong
            prevSong: function () {
                this.currentIndex--
                console.log(this, this.currentIndex)
                if (this.currentIndex <= 0) {
                    this.currentIndex = 0
                }
                $('.fa-play-circle').addClass("my pause")
                $('.fa-pause-circle').removeClass("pause")

                this.loadCurrentSong()
            },

            //playRandomSong
            getRandomSong: function () {
                let newIndex
                do {
                    newIndex = Math.floor(Math.random() * this.songs.length)
                } while (newIndex == this.currentIndex)
                this.currentIndex = newIndex
                this.loadCurrentSong()
                app.render()
            },

            start: function () {
                //define properties for object
                this.defineProperties()
                //load current Song
                this.loadCurrentSong()
                //render playlist
                this.render()
                this.handleEvent()
            }
        }

        app.start()
    </script>

</html>


<!-- Function list  
    0.sync 2 play button control  --done
    1.Render and display songs      --done
    2.Play / pause /seek            --done
    3. Next/prev control            --done
    4. Random Songs control         -done
    5.Next/Repeat when song ended       -done
    6. Play song choosed in list when click on this song    --done
    7.Active love_button,sync 2 love_button
    8.Song active: music waves animation            --done
    9.More_button display text info when click, sync 2 more
    10.Volumn song control-->
<!-- Player Process -->
