window.onload = change();
//图片轮番显示
function change(){
	var i = 1;
	setInterval(function(){
			if(i>3){
				i=1;
			}
			document.getElementById("change_image").src='./image/'+i+'.jpg';
			i++;
		},3000);
}
//QQ靓号下的搜索框
var search = document.getElementById("search");
search.style.display = "none";
function liang_into(){
	// alert(2)
	search.style.display = "block";
}
function liang_leave(){
	search.style.display = "none";
}
//简体中文下拉以及图标变换
var xiala_div = document.getElementById("xiala_div");
var xiala_img = document.getElementById("xiala_img");
xiala_div.style.display = "none";
function show_xiala(){
	xiala_div.style.display = "block";
	xiala_img.src="./image/up.png";
}
function hiden_xiala(){
	xiala_div.style.display = "none";
	xiala_img.src="./image/down.png";
}
//勾选框变换
var temp1 = 1//勾选
var temp2 = 1
var gou_img1 = document.getElementById("gou_img1");
var gou_img2 = document.getElementById("gou_img2");
function gouxuan1(){
	if(temp1 == 1 ){ //勾选了就不勾
		gou_img1.src = "./image/checkbox_normal.png";
		temp1 = 2;
	}else if(temp1 == 2){//没有勾选就勾选
		gou_img1.src = "./image/checkbox_check.png";
		temp1 = 1;
	}
}
function gouxuan1(){
	if(temp1 == 1 ){ //勾选了就不勾
		gou_img1.src = "./image/checkbox_normal.png";
		temp1 = 2;
	}else if(temp1 == 2){//没有勾选就勾选
		gou_img1.src = "./image/checkbox_check.png";
		temp1 = 1;
	}
}
//协议下拉框以及箭头
var jiantou_temp = 1;//向下
var jiantou_img = document.getElementById('jiantou_img');
var xieyi_div = document.getElementById("xieyi_div");
xieyi_div.style.display = "none";
function jiantou(){
	if(jiantou_temp==1){
		jiantou_img.src="./image/up.png";
		xieyi_div.style.display = "block";
		jiantou_temp=2;
	}else if(jiantou_temp==2){
		jiantou_img.src = "./image/down.png";
		xieyi_div.style.display = "none";
		jiantou_temp=1;
	}
}
function check(){
	var userName = $("#userName").val();
	var password =$("#password").val();
	if(userName ==""||userName==null){
		alert("用户名不能为空！");
		return;
	}else if(password ==""||password==null){
		alert("密码不能为空！");
		return;
	}
}

$(function(){
	$("#myForm").submit(function(){
		check();
	});
});
	



