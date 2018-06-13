<%@ page import="com.ttms.entity.Play" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加影片</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="http://www.jq22.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery.date_input.pack.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".date_picker").date_input();
        })

    </script>
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); }
    </script>

    <style type="text/css">
        .date_selector_ieframe{position: absolute;z-index: 99999;display: none;}
        .date_selector .nav{width: 17.5em;}

        .date_selector .nav p{clear: none;}

        .date_selector .month_nav, .date_selector .year_nav{margin: 0 0 3px 0;padding: 0;display: block;position: relative;text-align: center;}

        .date_selector .month_nav{float: left;width: 55%;}

        .date_selector .year_nav{float: right;width: 42%;margin-right: -8px;}

        .date_selector .month_name, .date_selector .year_name{font-weight: bold;line-height: 20px;}

        .date_selector .button{display: block;position: absolute;top: 0;width:18px;height:18px;line-height:16px;font-weight:bold;color:#5985c7;text-align: center;font-size:12px;overflow:hidden;border: 1px solid #ccc;border-radius:2px;}

        .date_selector .button:hover, .date_selector .button.hover{background:#5985c7;color: #fff;cursor: pointer;border-color:#3a930d;}

        .date_selector .prev{left: 0;}

        .date_selector .next{right: 0;}

        .date_selector table{border-spacing: 0;border-collapse: collapse;clear: both;margin: 0; width:220px;}

        .date_selector th, .date_selector td{width: 2.5em;height: 2em;padding: 0 !important;text-align: center !important;color: #666;font-weight: normal;}

        .date_selector th{font-size: 12px;}

        .date_selector td{border:1px solid #f1f1f1;line-height: 2em;text-align: center;white-space: nowrap;color:#5985c7;background: #fff;}

        .date_selector td.today{background: #eee;}

        .date_selector td.unselected_month{color: #ccc;}

        .date_selector td.selectable_day{cursor: pointer;}

        .date_selector td.selected{background:#2b579a;color: #fff;font-weight: bold;}

        .date_selector td.selectable_day:hover, .date_selector td.selectable_day.hover{background:#5985c7;color: #fff;}
        .col-sm-3 img{
            width: 100px;
        }
        .ulul a{
            margin-top: 15px;
            color: #333;
            padding: 10px 20px;
        }
        .ulul a:hover{
            color: red;
        }
        .footer_right{
            overflow: hidden;
            position: relative;
            margin-top: 37px;
        }
        .footer_right input{
            border: none;
            background-color: #ededee;
            width: 320px;
            height: 40px;
            margin: 14px 8px;
            border-radius: 5px;
            padding-left: 55px;
        }
        .footer_right span{
            position: relative;
            /*left: 57px;*/
        }
        .foot_left{
            overflow: hidden;
            position: relative;
            left: 145px;
            margin-right: 130px;
        }
        .foot_left input{
            border: none;
            background-color: #ededee;
            width: 320px;
            height: 40px;
            border-radius: 5px;
        }
        .foot_left textarea{
            background-color: #ededee;
            border: none;
            border-radius: 5px;
            padding:10px;
            width: 790px;
            overflow: hidden;
        }
        .foot_left textarea:hover{
            box-shadow: 1px 1px 3px #E74F4D;
        }
        #submit{
            width: 750px;
        }
        .foot_left input:hover{
            box-shadow: 1px 1px 3px #E74F4D;
        }


        .box1
        {
            position: relative;
            width: 250px;
            height: 400px;
            background-color: #ededee;
            background-repeat: no-repeat;
            background-position: 0 0;
            background-attachment: scroll;
            line-height: 400px;
            text-align: center;
            color: #AAA;
            font-size: 22px;
            font-family: "微软雅黑";
            cursor: pointer;
            overflow: hidden;
            z-index: 1;
            left: -150px;
            top: 50px;
            float: left;
        }
        .box1 input
        {
            position: absolute;
            width: 250px;
            height: 400px;
            line-height: 40px;
            font-size: 23px;
            opacity: 0;
            filter: "alpha(opacity=0)";
            filter: alpha(opacity=0);
            -moz-opacity: 0;
            left: -5px;
            top: -2px;
            cursor: pointer;
            z-index: 2;
        }

        @media screen and (max-width : 1280px){
            .foot_left{
                overflow: hidden;
                position: relative;
                left:145px;
                margin-right: 130px;
            }
            .foot_left input{
                border: none;
                background-color: #ededee;
                width: 320px;
                height: 40px;
                border-radius: 5px;
            }
            .foot_left textarea{
                background-color: #ededee;
                border: none;
                border-radius: 5px;
                padding:10px;
                width: 790px;
                overflow: hidden;
            }
            .foot_left textarea:hover{
                box-shadow: 1px 1px 3px #E74F4D;
            }
            #submit{
                width: 750px;
            }
            .foot_left input:hover{
                box-shadow: 1px 1px 3px #E74F4D;
            }

            .myspan{
                background-color: #ededee;
                width: 320px;
                height: 40px;
                margin:14px 8px;
                border:none;
                border-radius: 5px;
                padding-left: 55px;
            }

            #mybody{
                background-color: #3c3c3c;
            }
            label {
                display: inline-block;
                margin-bottom: 0px;
                font-weight: bold;
            }

        }
    </style>
</head>
<body class="mian_bj" id="mybody">
<div class="mian_top_r"></div>
<div class="mian_top_l"></div>
<div class="mian_top_c">
    <ul>
        <li><a href="/play/showplay">
            <p>
                影片一览</p>
        </a></li>
        <li><a href="/play/addplayshow">
            <p>
                修改影片</p>
        </a></li>
        <li><a href="/play/delplayshow">
            <p>
                删除影片</p>
        </a></li>
    </ul>
</div>
<div class="mian_b">
    <div class="mian_b1" style="height: 3px;">

        <%--<p class="mian_b1_sousuo">--%>
            <%--<input name="" type="text" id="searchcontent"></p>--%>
        <%--<a href="#" title="搜索" onclick="checkcontent();">--%>
            <%--<p class="mian_b1_a3">--%>
            <%--</p>--%>
        <%--</a>--%>
    </div>
    <%
        Play play = (Play)request.getAttribute("play");
    %>
    <form method="post" action="/play/updateplay?id=<%=play.getPlay_id()%>" name="joinForm" enctype="multipart/form-data">
        <div class="header_top">
            <div class="col-sm-3 header_right">
            </div>
            <div class="box1">
                <input type="file" name="play_image">
                <img src="<%=play.getPlay_image()%>" width="250" height="400">
                <%=play.getPlay_image()%>
            </div>
            <div class="footer_right">
                <label><span>名字:</span><input type="text" name="play_name" placeholder="<%=play.getPlay_name()%>"/></label>
                <%--<label><span>类别:</span><input type="text" name="play_type" placeholder="<%=play.getPlay_type()%>"/></label><br/>--%>
                <label><span>类别:</span>
                    <select  name="play_type" class="myspan">
                        <option value="<%=play.getPlay_type()%>"><%=play.getPlay_type()%></option>
                        <option value="剧情片">剧情片</option>
                        <option value="动作片">动作片</option>
                        <option value="动画片">动画片</option>
                        <option value="科幻片">科幻片</option>
                        <option value="纪录片">纪录片</option>
                        <option value="爱情片">爱情片</option>
                        <option value="喜剧片">喜剧片</option>
                        <option value="其他">其他</option>
                    </select>
                </label><br/>
                <label><span>语言:</span><input type="text" name="play_lang" placeholder="<%=play.getPlay_lang()%>"/></label>
                <label><span>时长:</span><input type="text" name="play_length" placeholder="<%=play.getPlay_length()%>"/></label><br/>
                <label><span>价格:</span><input type="text" name="play_price" placeholder="<%=play.getPlay_ticket_price()%>"/></label>
                <label><span>演员:</span><input type="text" name="play_actor" placeholder="<%=play.getPlay_actor()%>"/></label><br/>
                <label><span>上映时间:</span><input class="date_picker" type="text" name="play_up_time" placeholder="<%=play.getPlay_up_time()%>"/></label>
                <%--<label><span>下架时间:</span><input type="text" name="play_down_time" placeholder="<%=play.getPlay_down_time()%>"/></label><br/>--%>
                <label><span>国家:</span><input type="text" name="play_orign" placeholder="<%=play.getPlay_orign()%>"/></label>
                <label><span>导演:</span><input type="text" name="play_director" placeholder="<%=play.getPlay_director()%>"/></label><br/>


                <label><span>状态:</span>
                    <select  name="play_status" class="myspan">
                        <%
                            if(play.getPlay_status() == 0){
                        %>
                            <option value="">未上映</option>
                        <%
                            }else if(play.getPlay_status() == 1){
                        %>
                            <option value="">上映中</option>
                        <%
                            }else{
                        %>
                        <option value="">下架</option>
                        <%
                            }
                        %>
                        <option value="0">未上映</option>
                        <option value="1">上映中</option>
                        <option value="-1">下架</option>
                    </select>

                </label><br/>
            </div>
            <div class="foot_left">
                <textarea cols="8" rows="8" name = "play_introduction" placeholder="<%=play.getPlay_introduction()%>"></textarea><br/>
            </div>
            &nbsp;
            &nbsp;
            &nbsp;

            <div style="margin-left:400px;">
                <input type="image" src="/images/bnt_03.gif" style="margin-right:10px;" width="80" height="22">
                <img src="/images/bnt_05.gif" alt="" width="80" height="22" style="margin-bottom: 10px;" onclick="javascript:window.history.go(-1);">

            </div>
            <div>
                <span style="color: red">${requestScope.errors}</span>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<script src="/js/common.js"></script>


