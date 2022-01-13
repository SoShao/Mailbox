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
	<title>QQ注册</title>
	<link rel="icon" type="image/x-icon" href="./image/logo.png">
	<link rel="stylesheet" type="text/css" href="./css/login.css">
	<script src="js/jquery-1.12.4.js"></script>
<!-- 	<script type="text/javascript">
	function check(){
		var userName = $("input[name='userName']").val();
		var password =$("input[name='password']").val();
		if(userName ==""&&userName==null){
			alert("用户名不能为空！");
			return false;
		}else if(password == ""&&password==null){
			alert("密码不能为空！");
			return false;
		}
		return true;
	}
	
	$(function(){
		$("#myForm").submit(function(){
			return check();
		});
	});
	</script> -->
</head>
<body>
	<div id="logo_div">
		<div><img src="./image/logo.png"></div>
		<div>QQ</div>
	</div>
	<div id="left_div">
		<img id="change_image" src="./image/1.jpg">
	</div>
	<div id="right_div">
		<div id="right_top">
			<div class="iteam">
				<div class="iteamText">意见反馈</div>
			</div>
			<div id="allxiala_div" class="iteam" onmouseenter="show()"  onmouseleave="hide()">
				<div class="iteamText">简体中文</div>
				<div><img id="xiala_img" src="./image/down.png"></div>
				<div id="xiala_div">
					<div>繁體中文</div>
					<div>English</div>
				</div>
			</div>
			<div class="iteam" id="iteam_search">
				<div><img src="./image/logo3.png"></div>
				<div class="iteamText" id="iteam1" onmouseenter="liang_into()"  onmouseleave="liang_leave()">QQ靓号</div>
				<div id="search" onmouseenter="liang_into()" onmouseleave="liang_leave()">
					<div id="search_top">
						<input type="" name="" placeholder="输入QQ靓号，如1992,520">
						<a id="search_image"></a>
					</div>
					<div id="search_bottom">
						<a href="">生日</a>
						<a href="">星座</a>
						<a href="">爱情</a>
						<a href="">手机</a>
					</div>
				</div>
			</div>
		</div>
		<form action="../UserServlet?opr=regist" method="post" id="myForm">
			<div id="right_center">
				昵称<div id="text1">欢迎注册QQ</div>
				<div id="text2">
					<div id="text_div1">每一天乐在沟通</div>
				</div>
				<div class="input_div">
					<input class="input" type="text" placeholder="昵称" name="userName" id="userName" value="">
				</div>
				<div class="error-tips-wrap" id="nickname" style="display: none">
					<div class="error-tips" >昵称不可以为空</div>
				</div>
				<div class="input_div">
					<input class="input" type="password" placeholder="密码" name="password" id="password" value="">
				</div>
				<div class="error-tips-wrap" id="passwor" style="display: none">
					<div class="error-tips" >密码不能为空</div>
				</div>
				<div>
					<input type="submit" name="submit" id="submit" value="立即注册">
				</div>

				<div id="check">
					<div>
						<img id="gou_img1" src="./image/checkbox_check.png" onclick="gouxuan1()">
					    我已阅读并同意相关服务条款和隐私政策
						<img id="jiantou_img" src="./image/down.png" onclick="jiantou()">
						<div id="xieyi_div">
							<a href="">《QQ号码规则》</a>
							<a href="">《隐私政策》</a>
							<a href="">《QQ空间服务协议》</a>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="footer">
			Copyright © 1998-2018Tencent All Rights Reserved
		</div>
	</div>

	<script type="text/javascript" src="./js/login.js"></script>
</body>
</html>