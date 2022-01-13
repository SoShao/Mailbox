<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录QQ邮箱</title>
    <link rel="stylesheet" href="style/style.css">


</head>
<style>
  

</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){

   $("#btn-login").click(function(){
		
     var userName=$("#userName").val();
   
     var password=$("#password").val();
    
      $.post("UserServlet",{userName:userName,password:password,opr:"login"},function(result){
         var str="";
          
       if(result){
          location.href="email.jsp";
       }else{
         str+="账号或密码错误";
       }
       $("#error").html(str);
     },"JSON");
   });
});
</script>
<link rel="shortcut icon" type="images/x-icon" href="img/x.ico">
<body style="overflow-x:hidden">
    <div class="header">
        <a class="header_logo" href="#">
            <img src="img/logo.png">
        </a>
        <div class="header_link">
            <a href="https://w.mail.qq.com/cgi-bin/loginpage?f=xhtml">基本版</a>
            &nbsp;|&nbsp;
            <a href="https://en.mail.qq.com">English</a>
            &nbsp;|&nbsp;
            <a href="https://app.mail.qq.com/">手机版</a>
            &nbsp;|&nbsp;
            <a href="https://exmail.qq.com?referrer=index_top">企业邮箱</a>
        </div>
    </div>
    <div class="container">
        <div class="login_picture">
            <img src="img/pic.jpg">
        </div>
        <div class="login_container">
            <div class="login_card_tab">账号密码登录</div>
            <form action="javascript:void(0);" method="post">
        
                <div class="uinarea">
                    <input type="text" class="inputstyle" value tabindex="1"  placeholder="支持QQ号/邮箱/手机号登录" style="font-size: 17px;padding-left: 10px;" id="userName">
                </div>
                <div class="pinarea">
                    <input type="password" class="inputstylep" value tabindex="2" placeholder="QQ密码" style="font-size: 17px;padding-left: 10px;"id="password">
                </div>
                <div class="autologin">
                    <input type="checkbox" value="yes" name="autologin">下次自动登录
                </div>
                
                <div class="login">
                    <input type="submit" value="登 录" class="btn" id="btn-login">
                </div>
                   <span style="color:red" id="error"></span>
            </form>
            <div class="bottom">
                <a href="https://aq.qq.com/cn2/findpsw/pc/pc_find_pwd_input_account" target="_blank">忘了密码？</a>
            </div>
            <div class="bottom1">
                <a href="login/logi.jsp" target="_blank">注册新账号</a>
            </div>
        </div>
    </div>
    <div class="footer">
        <a href="https://www.tencent.com" target="_blank">关于腾讯</a>
        &nbsp;|&nbsp;
        <a href="https://mail.qq.com/cgi-bin/readtemplate?check=false&t=mail_clause" target="_blank">服务条款</a>
        &nbsp;|&nbsp;
        <a href="https://privacy.qq.com/" target="_blank">隐私政策</a>
        &nbsp;|&nbsp;
        <a href="https://kf.qq.com/product/email.html" target="_blank">客服中心</a>
        &nbsp;|&nbsp;
        <a href="https://mail.qq.com/zh_CN/contact_us.html" target="_blank">联系我们</a>
        &nbsp;|&nbsp;
        <a href="https://service.mail.qq.com" target="_blank">帮助中心</a>
        &nbsp;|&nbsp;
        <span class="gray">©1998 - 2021 Tencent Inc. All Rights Reserved.</span>
    </div>
</body>
</html>