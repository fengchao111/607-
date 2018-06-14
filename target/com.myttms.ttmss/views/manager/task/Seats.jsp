
<%@ page import="java.util.List" %>
<%@ page import="com.ttms.entity.Studio" %>
<%@ page import="com.ttms.entity.Seat" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>座位管理</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); }
    </script>


    <style type="text/css">
        .myspan{
            text-align: center;
            display: inline-block;
        }
        .seats{
            width: 100%;
            margin-top: 80px;
            overflow: hidden;
        }
        #kexuan{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            float: left;
            background-color: #fff;
        }
        #use{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            float: left;
            background-color: green;

        }
        #huai{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            float: left;
            background-color: red;
        }
        .pingmu{
            position: relative;
            width: 750px;
            height: 50px;
            background-color: #AAAAAA;
            border-radius: 0 0 50px 50px;
            text-align: center;
            overflow: hidden;
            margin-left:120px;
        }
        .pingmu label{
            font-size: 20px;
            color: #fff;
        }
        #seat{
            width: 630px;
            margin-left: 160px;
            text-align:center;
        }

        .seet0{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            margin-top: 20px;
            margin-left: 20px;
            float:left;
            display: inline-block;
        }
        .seet0:hover{
            border:1px solid black;
        }
        .seet1{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            margin-top: 20px;
            margin-left: 20px;
            float:left;
            display: inline-block;
            background-color: green;
        }
        .seet1:hover{
            border:1px solid black;
        }

        .seet2{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            margin-top: 20px;
            margin-left: 20px;
            float:left;
            display: inline-block;
            background-color: red;
        }
        .seet2:hover{
            border:1px solid black;
        }

        .seet3{

            height: 20px;
            width: 20px;
            margin-top: 20px;
            margin-left: 20px;
            float:left;
            display: inline-block;
        }

        .yuan{
            float: left;
            margin-left: 180px;
            margin-right: -40px;
            margin-bottom: 50px;
        }
        .body_seat{
            margin-top: 50px;
            margin-left: 150px;
        }

        .mysit{
            font-size: 17px;
            color: #c3c3c3;
            margin-right: 50px;
        }
        .seatt{
            width: 90px;
            height: 20px;
            text-align: center;
            float: left;
            background-color: #FF4747;
            margin-left: 20px;
            margin-top: 10px;
        }

        #choice{
            width: 250px;
            height: 100px;
        }
        #sbutton{
            background: #f3f3f3;
            width: 90px;
            height: 35px;
            border-radius: 5px;
            margin-left: 10px;
            margin-top: 10px;

        }

        .seat_numbers{
            width: 250px;
            height: 300px;
            overflow: hidden;
            background-color: #f2f2f2;
            border-bottom: 2px solid #fff;
        }
        .seat_numbers label{
            font-size: 20px;
            font-family: "微软雅黑";
            color: #AAA;
        }

    </style>
</head>
<body class="mian_bj">
<div class="mian_top_01">
    <div class="mian_top_r"></div>
    <div class="mian_top_l"></div>
    <div class="mian_top_c">
        <ul>
            <li><a href="/seat/seatshow">
                <p>
                    座位一览</p>
            </a></li>
            <li><a href="/seat/tochangeseat">
                <p>
                    修改座位</p>
            </a></li>
            <li><a href="/seat/todelseat">
                <p>
                    删除座位</p>
            </a></li>
        </ul>
    </div>
</div>
</body>
</html>

