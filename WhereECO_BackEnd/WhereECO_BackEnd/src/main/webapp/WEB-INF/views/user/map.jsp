<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>WhereEco</title>
    <link rel="stylesheet" href="map.css" />
    <style>
        .name {
            background-color: #FFF7DA;
            height: 80px;
        }

        .midList {
            text-align: center;
            margin: 50px 0;
        }

        .txt1 {
            color: #554C2B;
        }

        .one {
            /*margin-top: 0px;*/
            width: 500px;
            height: 45px;
            background-color: #FFF7DA;
            border: 2px solid #A09672;
            border-radius: 7px;
            font-size: 15px;
        }

        .two {
            /*margin-top: 20px;*/
            width: 500px;
            height: 45px;
            background-color: #FFF7DA;
            border: 2px solid #A09672;
            border-radius: 7px;
            font-size: 15px;
        }

        .three {
            width: 500px;
            height: 45px;
            background-color: #FFF7DA;
            border: 2px solid #A09672;
            border-radius: 7px;
            font-size: 15px;
        }

        .txt2 {
            margin-bottom: 0px;
            text-align: center;
            color: #554C2B;
        }

        table {
            border: none;
            /* 이중 테두리 제거 */
            border-collapse: collapse;
            display: flex;
            justify-content: center;
        }

        .chart {
            display: flex;
            justify-content: center;
            margin-top: 0px;
        }

        td {
            height: 20px;
            width: 100px;
            border: none;
        }

        input[type=checkbox] {
            zoom: 1.5;
        }

        input:focus {
            border: 3px solid #A09672;
            outline: none;
        }

        .videoPlus {
            display: block;
            margin-top: 20px;
            margin-right: auto;
            margin-left: auto;
            margin-bottom: auto;
        }
    </style>
</head>
<body>
<div class="tool">
    <!-- 네브바랑 넘어가는 나뭇잎 이미지는 고정-->
    <div class="navbar">
        <!--logo를 클릭하면 map page로 이동-->
        <h1 class="logo">Where ECO</h1>
        </a>
        <img src="logout.png" class="logoutImg" />
    </div>
    <div class="nextButton">
        <a class="js-mapA"><img src="left.png" width="60" height="60" /></a>
    </div>
    <div class="mainNextButton">
        <a class="js-todoA"><img src="right.png" width="60" height="60" /></a>
    </div>
    <!-- map 페이지 -->
    <div>
        <div class="itemTool js-map noticeShowing">
            <div class="centerWrapper"><br><br>
                <div class="option">
                    <div>
                        <form class="searchform cf" onsubmit="searchPlaces(); return false;">
                            <input type="text" value="제로웨이스트샵" id="keyword" size="15">
                            <button type="submit">SEARCH</button>
                        </form>
                    </div>
                </div>
            </div>
            <br /><br />

            <div class="map-content">
                <div class="map_wrap">
                    <div id="mapa" style="width:900px; height: 460px; position:relative; overflow:hidden;">
                    </div>
                    <div id="menu_wrap" class="bg_white">
                        <ul id="placesList"></ul>
                        <div id="pagination"></div>
                    </div>
                    <script type="text/javascript"
                            src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=61eb4642306869b42c83d9bc71a5c1ba&libraries=services"></script>
                    <script src="map1.js"></script>
                    </script> <!-- 지도 js -->
                </div>
            </div>
        </div>

        <!-- todo 페이지 -->
        <div>
            <div class="itemTool js-todo">
                <div class="centerWrapper">
                    <div class="midList">
                        <h3 class="txt1">오늘의 실천해요!</h3><br>
                        <form>
                            <input class="one" type="text" placeholder="내용을 입력하세요">
                            <input type="checkbox" value="1"><br><br>

                            <input class="two" type="text" placeholder="내용을 입력하세요">
                            <input type="checkbox" value="2"><br><br>

                            <input class="three" type="text" placeholder="내용을 입력하세요">
                            <input type="checkbox" value="3"><br>
                        </form>
                    </div><br><br>
                    <div class="midVideo"></div>
                    <h3 class="txt2">더 찾아봐요!</h3>
                    <br>
                    <table class="chart">
                        <tbody>
                        <tr>
                            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/rsd5seVp-9I"
                                        title="YouTube video player" frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe></td>
                        </tr>
                        <tr>
                            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/nwbBpvss2sg"
                                        title="YouTube video player" frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe></td>
                        </tr>
                        <tr>
                            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/eYS2eMGKeeg"
                                        title="YouTube video player" frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe></td>
                        </tr>
                        <tr>
                            <td><img class="videoPlus" src="plus.png" width="60" height="60"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="todo.js"></script>
</body>

</html>