
<%@ page import="java.util.List" %>
<%@ page import="com.ttms.entity.Studio" %>
<%@ page import="com.ttms.entity.Schedule" %>
<%@ page import="com.ttms.entity.Seat" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title></title>
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
        .pay{
            position: absolute;
            width:250px;
            height:500px;
            background-color:white;
            right: 50px;
            top: 100px;
        }
        seat_number{
            width: 250px;
            height: 200px;
            overflow: hidden;
            background-color: #f2f2f2;
            border-bottom: 2px solid #fff;
            margin-top: -33px;
        }
        .seat_number label{
            line-height: 60px;
            margin-left: 30px;
            font-size: 20px;
            font-family: "微软雅黑";
            color: #AAA;
        }
        phone{
            overflow: hidden;
            width: 250px;
            height: 200px;
            background-color: #f2f2f2;
            border-bottom: 2px solid #fff;
            margin-top: -33px;
        }
        .phone label{
            line-height: 60px;
            margin-left: 30px;
            font-size: 20px;
            font-family: "微软雅黑";
            color: #AAA;
        }
        .phone input{
            margin-left: 30px;
            height: 30px;
            width: 200px;
            font-size: 20px;
        }
        buy{
            overflow: hidden;
            width: 250px;
            height: 200px;
            line-height: 60px;
            margin-left: 30px;
            background-color: #f2f2f2;
            margin-top: -33px;
        }
        .buy label{
            line-height: 60px;
            margin-left: 30px;
            font-size: 20px;
            font-family: "微软雅黑";
            color: #AAA;
        }
        .buy a{
            color: #fff;
            font-size: 20px;
            padding: 10px 20px;
            background-color: #FF4747;
            opacity: 0.8;
            margin-left:50px;
            position: relative;
            top: 30px;
        }
        .buy a:hover{
            opacity: 1;
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

    <%

        Studio studio = (Studio)request.getAttribute("studio");
        int [][] seat_statu =  (int[][])request.getAttribute("seat_statu");
        Schedule schedule = (Schedule)request.getAttribute("schedule");
    %>

        <div class="mian_b">
            <div class="mian_b1">




                <div class="container">
                    <div class="container_wrap">
                        <div class="header_top">
                            <div class="seats">
                                <div class="pingmu"><label>影厅荧幕</label></div>
                                <div id="seat">
                                    <div>
                                        <span class="myspan"><span class="seet3"></span></span>
                                        <%

                                            int row = studio.getStudio_row_count();
                                            int col = studio.getStudio_col_count();
                                            for(int k=1; k< col+1; k++){

                                        %>
                                         <span class="myspan"><span class="seet3" style="font-size: 17px;color: #c3c3c3;"><%=k%></span></span>
                                        <%
                                            }
                                        %>
                                        <br/>
                                        <%
                                            for(int i = 1; i < row+1; i++){
                                        %>
                                        <span class="myspan"><span class="seet3" style="font-size: 17px;color: #c3c3c3;"><%=i%></span></span>
                                        <%        for(int j = 1; j < col+1; j++ ){
                                             if(seat_statu[i][j] == 0){

                                        %>
                                        <span class="myspan"><span class="seet0" onclick="test1(this,<%=i%>,<%=j%>,<%=studio.getStudio_id()%>,<%=schedule.getSched_id()%>,<%=schedule.getSched_ticket_price()%>)"></span></span>


                                        <%
                                        }
                                        else if(seat_statu[i][j] == 1){

                                        %>
                                        <span class="myspan"><span class="seet1"></span></span>                                       <%
                                        }
                                        else if(seat_statu[i][j] == -1){


                                        %>
                                        <span class="myspan"><span class="seet2"></span></span>
                                        <%

                                        }
                                        else{
                                        %>
                                        <span class="myspan"><span class="seet3"></span></span>


                                        <%
                                                }

                                            }
                                        %>


                                    </div>
                                    <div>
                                        <%
                                            }

                                        %>
                                    </div>

                                </div>
                            </div>
                            <div class="body_seat">
                                <div class="yuan">
                                    <div id="kexuan"></div><label>空置的座位</label>
                                </div>
                                <div class="yuan">
                                    <div id="use"></div><label>使用的座位</label>
                                </div>
                                <div class="yuan">
                                    <div id="huai"></div><label>损坏的座位</label>
                                </div>
                            </div>
                            <div class="pay">
                                <div class="seat_number">
                                    <label>你选择的座位:</label>
                                    <div id="choice"></div>
                                </div>
                                <div class="phone">
                                    <label>请输入取票的手机号:</label>
                                    <input type="text">
                                </div>
                                <div class="buy">
                                    <label class="uPrice">票价:<%=schedule.getSched_ticket_price()%>元</label></br>
                                    <label class="Price">共计:0元</label></br>
                                    <a href="/ticket/Seat" onclick="sendResult(<%=studio.getStudio_id()%>,<%=schedule.getSched_id()%>)">提交订单</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
<script type="text/javascript">

    var k = 0;
    var data={};
    var data1={};
    var order="";



    function sendResult(studio_id,sched_id) {

        data1.studio = studio_id;
        data1.sched = sched_id;

        var link = window.XMLHttpRequest?new XMLHttpRequest():new ActiveXObject("Microsoft.XMLHttp");
        link.open("post","/ticket/Saleitems",true);
        link.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        link.onreadystatechange=function(){

            if(link.readyState == 4 && link.status == 200) {

                    alert("您已订票成功!");

             }


        };
        data1.orders = order;
        link.send("data="+ JSON.stringify(data1));

    }

    function change(m,i, j, studio_id, sched_id,Sched_ticket_price) {

       str = "第" + i + "排第" + j + "列";
        order += i+","+j+"|";

        if ($(m).css("background-color") === "rgb(0, 128, 0)") {

            $(m).css("background-color", "#fff");
            k--;
            var st = "#" + str;
            $(st).remove();
            data.row = i;
            data.col = j;
            data.studio = studio_id;
            data.sched = sched_id;
            data.flag = 0;
        }

//        if ($(m).css("background-color") === "rgb(255, 255, 255)")
        else
        {
            $(m).css("background-color", "#008000");
            k++;
            var s = $("<div id='"+str+"'>" + str + "</div>");
            s.addClass("seatt");
            $("#choice").append(s);
            data.row = i;
            data.col = j;
            data.studio = studio_id;
            data.sched = sched_id;
            data.flag = -1;
        }
        var suns = Sched_ticket_price * k;
        $(".Price").html("共计:" + suns + "元");
        return data;
    }


    function test1(m,i, j, studio_id, sched_id, Sched_ticket_price){
        var link = window.XMLHttpRequest?new XMLHttpRequest():new ActiveXObject("Microsoft.XMLHttp");
        link.open("post","/ticket/lockTicket",true);
        link.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        link.onreadystatechange=function(){
            if(link.readyState == 4 && link.status == 200){

                alert("success!");
            }

        };
        var datas = change(m,i, j, studio_id, sched_id,Sched_ticket_price);
        link.send("data="+JSON.stringify(datas));
    }
</script>
</body>
</html>

