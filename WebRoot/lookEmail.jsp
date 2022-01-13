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
</head>
<body>
      <div id="div1">
          <div>
              <a href="index.html" class="mya">返回</a>
              <a href="javascript:void(0)" class="mya">回复</a>
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
      </div>
      <div class="div2">
            <table cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td class="biaoti">标题</td>
                </tr>
            </table>
            <table cellspacing="0" cellpadding="0" border="0" id="table2">
                    <tr>
                        <td class="">发件人:小明</td>
                    </tr>
                    <tr>
                        <td>时间: 2021年12月24日(星期五) 上午10:24</td>
                    </tr>
                    <tr>
                        <td>收件人:小红</td>
                    </tr>
            </table>
      </div>
      <div>
          <div class="div3">
            今天晚上去公园等我
          </div>
      </div>
      <div class="footer2">
          <a href="javascript:per()" class="tbodya">上一封</a>&nbsp;&nbsp;&nbsp;
          <a href="javascript:next()" class="tbodya">下一封</a>&nbsp;&nbsp;&nbsp;
      </div>
</body>
</html>