<%@ page import="com.ttms.entity.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>人员增加</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
</head>
<body class="mian_bj">
<%
    Employee employee = (Employee)request.getAttribute("employee");
%>
<form class="mian_top_01" action="/employee/changetopemp?id=<%=employee.getEmp_id()%>" method="post">
    <div class="mian_top_r">
    </div>
    <div class="mian_top_l">
    </div>
    <div class="mian_top_c">
        <ul>
            <li><a href="/employee/showemp">
                <p>
                    用户信息</p>
            </a></li>
            <li><a href="/employee/showtopemp">
                <p>
                    管理员信息</p>
            </a></li>

        </ul>
    </div>
    <div class="mian_b">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
            <tr>
                <td width="5%" class="mian_b_bg_lm">&nbsp;

                </td>
                <td colspan="4" class="mian_b_bg_lm">
                    更新员工信息
                </td>
            </tr>
        </table>
        <table width="100%" border="1" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
            <tr style="background-color: White; height: 30px">
                <td style="width: 8%;" align="center">
                    姓名
                    <span style="color:red">*</span>
                </td>
                <td style="width: 8%" align="center">
                    性别
                    <span style="color:red">*</span>
                </td>
                <td style="width: 8%" align="center">
                    出生年月
                    <span style="color:red">*</span>
                </td>
                <td style="width: 8%" align="center">
                    密码
                </td>
                <td style="width: 8%" align="center">
                    手机
                </td>
                <td style="width: 8%" align="center">
                    邮箱
                </td>
                <td style="width: 8%" align="center">
                    住址
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td>
                    <input id="Text1" name="truename" type="text" placeholder="<%=employee.getEmp_name()%>" style="border: 0px; width: 100px" class="mess">
                </td>
                <td>
                    <select id="Select1" style="width: 80px" class="mess" name="sex">
                        <option value=""><%=employee.getEmp_sex()%></option>
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </td>
                <td>
                    <input id="Text2" name="birth" type="text" placeholder="<%=employee.getEmp_birth()%>" style="border: 0px; width: 100px" class="mess">
                </td>
                <td>
                    <input id="Text3"  name="password" type="text" placeholder="<%=employee.getEmp_pass()%>" style="border: 0px; width: 100px">
                </td>
                <td>
                    <input id="Text4" name="tel" type="text" placeholder="<%=employee.getEmp_tel_num()%>" style="border: 0px; width: 100px">
                </td>
                <td>
                    <input id="Text5" name="mail" type="text" placeholder="<%=employee.getEmp_email()%>" style="border: 0px; width: 100px">
                </td>
                <td>
                    <input id="Text6" name="address" type="text" placeholder="<%=employee.getEmp_addr()%>" style="border: 0px; width: 100px">
                </td>
            </tr>



            <tr style="background-color: White; height: 30px" id="mysub">
                <td align="center" colspan="8">
                    <a href="#mysub"><input type="image" src="/images/bnt_03.gif" name="img" style="margin-top:8px; margin-right: 10px;" width="80" height="22" onclick="return checkmess();" ></a>
                    <img src="/images/bnt_05.gif" alt="" width="80" height="22" style="margin-bottom: 10px;" onclick="javascript:window.history.go(-1);">
                    <span style="color: red">${requestScope.errors}</span>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>


