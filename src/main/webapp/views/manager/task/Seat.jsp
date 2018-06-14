<%@ page import="com.ttms.entity.Studio" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ttms.entity.Page" %><%--
  Created by IntelliJ IDEA.
  User: 刘
  Date: 2018/6/11
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
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

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

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
        #huai{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            float: left;
            background-color: red;
        }
        #use{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            float: left;
            background-color: green;

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
        }
        .seets{
            height: 20px;
            width: 20px;
            border:1px solid #AAA;
            border-radius: 20px;
            margin-top: 20px;
            margin-left: 20px;
            float:left;
            display: inline-block;
        }
        .seets:hover{
            border:1px solid black;
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
        .pagenum a{
            display: inline-block;
            height: 22px;
            margin:0 2px;
            padding: 0 8px;
            border:solid 1px #dbe5ee;
            border-radius: 2px;
            background: #fff;
            color: #333;
            font:normal 12px Arial, Helvetica,Sans-Serif;
            cursor: pointer;
        }

    </style>

</head>
<body class="mian_bj">
<div class="mian_top_01">
    <div class="mian_top_r"></div>
    <div class="mian_top_l"></div>
    <div class="studio_list">
        <table class="table table-hover">
            <tr>
                <td>影厅名称</td>
                <td>座位行数</td>
                <td>座位列数</td>
                <td>介绍</td>
                <td>状态</td>
            </tr>
            <%
                List<Studio> lists= (List<Studio>)request.getAttribute("list");
                for(Studio list : lists){
            %>
            <tr>
                <td>
                    <a href="/seat/seat_detail?studioId=<%=list.getStudio_id()%>&&row=<%=list.getStudio_row_count()%>&&col=<%=list.getStudio_col_count()%>"><%=list.getStudio_name()%></a>
                </td>
                <td><%=list.getStudio_row_count()%></td>
                <td><%=list.getStudio_col_count()%></td>
                <td><%=list.getStudio_introduction()%></td>
                <td><%=list.getStudio_flag()%></td>
            </tr>
            <% } %>
        </table>
        <div>

            <%
                Page pages = (Page)request.getAttribute("pages");
                int pagenow = pages.getPageNow();
            %>

            <div id="pagenum" class="pagenum">


                <strong style="color:black;padding-right: 8px;">第<%=pagenow%>页</strong>

                <a href="/seat/seatshow?pageNow=1">首页</a>

                <% if(pagenow - 1 > 0){ %>

                <a href="/seat/seatshow?pageNow=<%=pagenow - 1%>">上一页</a>
                <% } %>

                <% if(pagenow - 1 <= 0){ %>
                <a href="/seat/seatshow?pageNow=1">上一页</a>
                <% } %>

                <%
                    int pagecount = pages.getTotalPageCount();
                    for(int i = 1; i <= pagecount; i++ ){

                %>
                <a href="/seat/seatshow?pageNow=<%=i%>"><%=i%></a>

                <%}%>
                <%
                    if(pagecount == 0){
                %>
                <a href="/seat/seatshow?pageNow=<%=pagenow%>">下一页</a>
                <%
                    }
                    if(pagenow + 1 < pagecount){
                %>
                <a href="/seat/seatshow?pageNow=<%=pagenow + 1%>">下一页</a>
                <%
                    }
                    if(pagenow + 1 >= pagecount){
                %>
                <a href="/seat/seatshow?pageNow=<%=pagecount%>">下一页</a>
                <% } %>
                <a href="/seat/seatshow?pageNow=<%=pagecount%>">尾页</a>



            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>

</body>
</html>


