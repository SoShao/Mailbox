<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-1.12.4.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
<SECTION id="body">
<div id="div">
        <div id="txt_title" class="one">
            收件箱<span>(共 &nbsp;<span id="number">60</span>&nbsp;&nbsp;页)</span>
        </div>
        <div id="div1">
            <a class="mya" href="javascript:void(0)" onclick="">删除</a>
            <a class="mya" href="javascript:void(0)" onclick="">彻底删除</a>
            <a class="mya" href="javascript:void(0)" onclick="">转发</a>
            <a class="mya" href="javascript:void(0)" onclick="">举报</a>
            <a class="mya" href="javascript:void(0)" onclick="">全部标为已读</a>
            <select class="select">
                <option>标记为...</option>
                <option>已读邮箱</option>
                <option>未读邮箱</option>
                <option>星标邮箱</option>
                <option>取消星标</option>
                <option>新建标签</option>
            </select>
        </div>

        <table border="0" cellpadding="0" cellspacing="0" class="table" >
                <tr>
                    <th id="th0"><input type="checkbox" id="checkboxId" /></th>
                    <th ><input type="button" id="img"></th>
                    <th id="th1">发件人</th>
                    <th id="th2">主题</th>
                    <th id="th3">时间</th>
                </tr>
        </table>
        <table cellspacing="0" class="message" >
            <tr>
                <td class="td0"><input type="checkbox" name="checkbox"/></td>
                <td style="width: 200px">
                    <input type="button" class="Ru"/>
                </td>
                <td class="td1">
                    <a href="lookEmail.html" class="td1a">小明</a>
                </td>
                <td class=’td2’>去图书馆</td>
                <td class='td3' >2021年12月24日</td>
            </tr>
        </table>
        <table cellspacing="0" class="message" >
            <tr>
                <td class="td0"><input type="checkbox" name="checkbox"/></td>
                <td style="width: 200px">
                    <input type="button" class="Ru"/>
                </td>
                <td class="td1">
                    <a href="javascript:void(0);" class="td1a">小明</a>
                </td>
                <td class="td2">去饭店</td>
                <td class="td3" >2021年10月24日</td>
            </tr>
        </table>
        <table cellspacing="0" class="message" id="">
            <tr>
                <td class="td0"><input type="checkbox" name="checkbox"/></td>
                <td style="width: 200px">
                    <input type="button" class="Ru"/>
                </td>
                <td class="td1">
                    <a href="javascript:void(0);" class="td1a">小刚</a>
                </td>
                <td class="td2">开黑</td>
                <td class="td3" >2021年11月23日</td>
            </tr>
        </table>
        <div class="footer">
                <a href="javascript:home()" class="tbodya">首页</a>&nbsp;&nbsp;&nbsp;
                <a href="javascript:per()" class="tbodya">上一页</a>&nbsp;&nbsp;&nbsp;
                <a href="javascript:next()" class="tbodya">下一页</a>&nbsp;&nbsp;&nbsp;
                <a href="javascript:last()" class="tbodya">末尾</a>&nbsp;&nbsp;&nbsp;&nbsp;
                1/9页
        </div>
</div>
</SECTION>
</body>
</html>