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
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.12.4.js"></script>
    <script src="js/dynamic.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-1.12.4.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
<!--头部-->
<div class="topdata">
    <img src="images/xiazai.png" height="60" width="215"/>
    <div class="topbg"><img src="images/byt.jpg" height="67" width="468"/></div>
    <div class="right"><a href="" class="toptitle">反馈建议</a><span class="addrtitle"> | </span> <a href="" class="toptitle">帮助中心</a><span class="addrtitle"> | </span><a href="" class="toptitle">退出</a></div>
    <div class="axz"><img src="images/xiaotubiao(1).png" height="24" width="28" class="acc"/><input type="text" value="" class="ttp" ></div>
    <div class="left">
        <b id="toptitle">${user.userName}</b><span><<span class="toptitle" >1440422013@qq.com</span>></span><br>
        <span class="addrtitle"><a href="#home">邮箱首页</a></span>
    </div>
</div>
<!--写信 收信 通讯录-->
<div id="sepLineTd"><div class="topline"><div class="toplineimg"></div></div></div>
<div class="fdbody"></div>
<div id="leftPanel" class="newskinbody"><div id="navBarDiv"><ul class="navbar">
<li class="composepart fs" id="composebtn_td"><a id="composebtn" href="#write">写信</a><input type="button" class="composebtn"></li>
    <li class="checkpart fs"><a id="readmailbtn_link" href="#receiving">收信</a><input type="button" class="checkbtn"></li>
    <li class="addrpart fs"><a class="lfg" href="#address">通讯录</a><input type="button" class="addrbtn"></li>
</ul>
</div>
</div>
<!--收信箱-->
<div id="navMidBar" class="listbg listflow">
    <div id="folder" class="folderDiv">
        <a id="detechFL"></a>
        <div>
            <div>
                <style>.max_width{width:110px;overflow:hidden;}</style>
                <div id="OutFolder">
                    <div id="SysFolderList">
                        <ul class="fdul">
                            <li class="fs" style><a class="the" href="#receiving" id="InBox"><b>收件箱</b><b>(0)</b></a></li>
                            <li class="fs"><a class="the" href="#star"  id="StarMail">星标邮件 <input class="ico_input icon_folderlist_star" type="button" ></a></li>
                            <li class="fs"><a class="the" href="#draftbox" id="Drafts">草稿箱</a></li>
                            <li class="fs"><a class="the" href="#send" id="get">已发送</a></li>
                            <li class="fs"><a class="the" href="#delete" id="deletes">已删除</a></li>
                            <li class="fs"><a class="the" href="#bin" id="TrushBox">垃圾箱</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--子窗体-->
<main>
    <!--写信-->
       <div id="write" style="display: none">
           <table cellpadding="0" cellspacing="0" border="0" class="composetab" >
               <tbody>
               <tr>
                   <td><div class="composetab_img"></div>
                       <div class="composetab_sel">
                           <div>普通邮箱</div>
                       </div>
                   </td>
               </tr>
               </tbody>
           </table>
           <div id="toolbar">
               <div class="toolbg toolbgline">
                   <a tabindex="-1" class="btn_gray btn_space" href="#" id="btn_add">发送</a>
                   <a tabindex="-1" class="btn_gray btn_space" href="#">定时发送</a>
                   <a tabindex="-1" class="btn_gray btn_space" href="#">存草稿</a>
                   <a tabindex="-1" class="btn_gray btn_space" href="#home" id="close">关闭</a>
               </div>
           </div>
           <div class="readmailinfo" style="border-bottom: 1px solid #fff;min-width: 650px;">
               <div id="rightArea" style="float: right;width: 179px !important;margin: 16px 12px 0 0 ;filter: none">
                   <div id="addr_cmd" class="cptab cpslt" style="width: 88px"><a href="#">通讯录</a></div>

               </div>
               <div id="AddrTab" class="addrtab cpright">
                   <div class="lm_sbar">
                       <input type="button" class="lm_sopen">
                       <div>
                           <input type="text" class="txt" value="查找联系人...">
                       </div>
                   </div>
                   <div class="lm_panel">
                       <div>
                           <div class="groupopen">
                               <div class="settingtable qqshowbd">
                                   <a class="lm_rt"></a>
                                   <span class="buddy">QQ好友</span>
                               </div>
                           </div>
                           <div class="groupsub">
                               <div class="groupclose">
                                   <div class="column">
                                       <div style="overflow: hidden;width: 100%" >
                                           <div class="lm_ca">
                                               <a>
                                                   <input type="button" class="lm_ico">
                                                   我的好友
                                               </a>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
           <div style="margin-right:22px;margin-top: 14px; clear: left;"
                class="woer">
               <div style="height:2px;display:block;*display:none;width:auto;">&nbsp;</div>
               <div id="addrsDiv" class="js_addr_div">
                   <table cellpadding="0" cellspacing="0" border="0" class="i"
                          style="width: auto;margin-bottom: 5px" id="trTO">
                       <tr>
                           <td><div
                                   style="width:58px;padding-right:10px;text-align:right;padding-top:6px"
                                   nowrap="">
                               <a id="to_btn" title="点击选择收件人" href="javascript:void(0);">收件人</a>
                           </div></td>
                           <td><input type="text" class="tex" id="rname"
                                      placeholder="每个收件人用;号分割">
                           <td><input type="hidden" value="0" id="rnameid"></input></td>
                           </td>
                       </tr>
                   </table>
                   <table cellpadding="0" cellspacing="0" border="0" class="i"
                          style="width: auto;margin-bottom: 5px;display: none" id="trCC">
                       <tr>
                           <td><div
                                   style="width:58px;padding-right:10px;text-align:right;padding-top:6px"
                                   nowrap="">
                               <a id="cc_btn" title="点击选择收件人" href="javascript:void(0);">抄送</a>
                           </div></td>
                           <td><input type="text" class="tex" id="cname"
                                      placeholder="每个收件人用;号分割"></td>
                           <td>
                               <input type="hidden" value="1" id="cnameid"></input></td>
                       </tr>
                   </table>
                   <table cellpadding="0" cellspacing="0" border="0" class="i"
                          style="width: auto;margin-bottom: 5px;display: none" id="trBCC">
                       <tr>
                           <td><div
                                   style="width:58px;padding-right:10px;text-align:right;padding-top:6px"
                                   nowrap="">
                               <a id="bcc_btn" title="点击选择收件人" href="javascript:void(0);">密送</a>
                           </div></td>
                           <td><input type="text" class="tex" id="bname"
                                      placeholder="每个收件人用;号分割"></td>
                           <td><input type="hidden" value="2" id="bnameid"></input></td>
                       </tr>
                   </table>
                   <div id="addOper"
                        style="overflow:hidden; min-height:22px; _zoom:1;">
                       <div class="input_title addrtitle">
                           <div style="float:left;white-space:nowrap;padding-left:1px;">
								<span> <a id="aCC" href="javascript:void (0)">添加抄送</a> <a
                                        id="bCC" style="display: none" href="javascript:void (0)">删除抄送</a>
									&nbsp;-&nbsp; <a id="aBCC" href="javascript:void (0)">添加密送</a>
									<a id="acCC" style="display: none" href="javascript:void (0)">删除密送</a>
								</span>
                           </div>
                       </div>
                   </div>
                   <table cellpadding="0" cellspacing="0" border="0" class="i"
                          style="width: auto;margin-bottom: 5px" id="i">
                       <tr>
                           <td><div
                                   style="width:58px;padding-right:10px;text-align:right;padding-top:6px"
                                   nowrap="">
                               <span style="font-size: 12px;">主题</span>
                           </div></td>
                           <td><input type="text" class="tex"  id="caption"></td>
                       </tr>
                   </table>
                   <table cellpadding="0" cellspacing="0" border="0" class="i"
                          style="width: auto;margin-bottom: 5px" id="obj">
                       <tr>
                           <td><div
                                   style="width:58px;padding-right:10px;text-align:right;padding-top:6px"
                                   nowrap="">
                               <span style="font-size: 12px;">正文</span>
                           </div></td>
                           <td><textarea class="ted" id="conText"></textarea></td>
                       </tr>
                   </table>
               </div>
           </div>
           <div class="toolbg toolbgline">
               <a tabindex="-1" class="btn_gray btn_space" href="#" onclick="getEmailBox();">发送</a>
               <a tabindex="-1" class="btn_gray btn_space" href="#">定时发送</a>
               <a tabindex="-1" class="btn_gray btn_space" href="#">存草稿</a>
               <a tabindex="-1" class="btn_gray btn_space" href="#home">关闭</a>
           </div>
   </div>
    <!--首页-->
    <div id="home">
        <body class="todaybody">
        <!-- 天气与提醒 -->
        <div class="todayTool" id="todayTool" style="display: inline;">
            <div>
                <div id="weather-box" style="margin:6px 6px 0 0;height:40px;"></div>
                <div id="TodayRightInbox">
                    <div class="recentPanel">
                        <div class="msg_info attbg rounded3 ">
                            <div class="content f_size" style="padding:5px 10px 2px 15px; position:relative; height:68px; z-index:1121;" id="phoneMail_tips">
                                <div style="height:68px;">
                                    <b class="b_size" style="display:block;height:20px;line-height:20px;">推荐使用QQ邮箱英文帐号</b><br>
                                    <ul class="f_size addrtitle" style="padding:0;list-style:none;margin:2px 0 6px 0;">
                                        <li id="errorinfo_pop">
                                         <span class="security">QQ邮箱英文帐号，不仅保护QQ号码安全，更适合用于发送正式邮件。</span>
                                            <a href="#">点击前往设置</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 邮件与新邮件提示 -->
        <div class="todayMain" id="todayMain" style="margin-right: 320px;">
            <div class="updateInfo">
                <ul class="leftpanel" style="margin-bottom:0;border:none; min-height:110px;height:auto;" id="TodayInBox">
                    <li id="TodayWelcome" class="welcomeinfo t_left1">
                        <div class="vbn"><span id="time"></span><a href="#" class="name"> ${user.userName}</a><span style="float: left">。</span></div>
                        <div class="level level_no">
                            <a href="#" style="font-size: 14px" class="bold">注册英文邮箱帐号</a>
                            <span class="f_size addrtitle" style="font-size: 12px"> (如：chen@foxmail.com)</span>
                        </div>
                    </li>
                    <li class="totalmail" style="display: block">
                        <div class="sepinfo">
                            <input type="button" class="ico_unreads ico_input" style="vertical-align:top;margin-top:-1px;">
                            <span>邮箱:&nbsp;</span><b>${totalCount}封</b><a href="#">未读邮件</a>
                        </div>
                    </li>
                    <li class="mailinfo1 t_left2">
                        <div class="bold unread_folderlist" style="padding-left:23px;zoom:1;">
                            <a id="folder_1" href="#" class="bold">收件箱()</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 温馨提示 -->
        <div class="todayNotice"></div>
        <!-- 右侧提醒，信息 -->
        <div class="todayTool" id="todayTool2" style="display: inline;">
            <div style="height:230px; bckaground:#FFF;" class="bd todayTool2_bd rounded3">
                <div id="rightPanelTitle_normal" class="tipstitle_title settingtable bold bd todayInfoPanelTab">
                    <div class="todayInfoTabCon bd clearfix">
                        <div class="first">
                            <div qmtab="birth" container="pannelBirthday" id_iframe="birthdayInfo" style_iframe="width:298px;height:200px;display:none;" attrs_iframe="frameborder=&quot;0&quot; scrolling=&quot;no&quot;" src_iframe="/cgi-bin/laddr_friend?func=birthcard&amp;hasrmd=1&amp;t=birth_friendlist&amp;sid=aRTquKAMxh3XeSxN&amp;s=todaypanel" id="birthTab" class="tab_list bd actived">我的信息</div>
                        </div>
                    </div>
                </div>
                <div id="panelPersonInfo">
                    <div class="personInfo">
                        <div class="pInfoItem">
                            <span class="itemHead">积分等级：</span>
                            <a href="#" style="float: left"><span></span>级)&nbsp;&nbsp;</a> <a href="#" style="float: left">自助查询</a>
                        </div>
                        <div class="pInfoItem">
                            <span class="itemHead">邮箱容量：</span>
                            <span class="capacity_normal"><a href="#" style="float: left">2G&nbsp;</a><span style="font-size: 12px;float: left">(已使用8M，0%)</span></span>
                        </div>
                        <div class="pInfoItem">
                            <span class="itemHead">上次登录：</span>
                            <a href="#" style="float: left">6小时前</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 左侧推荐 -->
        <div class="todayMain" id="todayMain2" style="margin-right: 320px;">
            <div style="height:230px; _overflow-y:hidden;" class="bd rounded3" id="TodayPartNoticeLeft">
                <div class="tipstitle_title bd settingtable bold" style="border-width:0 0 1px 0;padding-top:5px; height:23px;">
                    <span id="todaybarTitle">
                        <a href="#" style="float: left;font-size: 14px">邮箱推荐</a>&nbsp;
                    </span>
                </div>
                <div class="bd tipbook-top" style="position:relative;padding:0 2px 2px 2px;margin:0 0 6px;height: 83px;overflow:hidden;border-width: 0 0 1px 0;">
                    <div class="todaybarnormal" id="todaybarNormal" style="margin: 0 2px;">
                        <a href="#" class="todaybar_ad_bg"  id="todaybarnormallink" ><span class=".todaybar_ad_img" style="width: 690px"></span></a>

                    </div>
                </div>
                <ul class="today_linkPanel addrtitle">
                    <li class="today_linkItem_left">
                        <div class="today_itemDiv">
                            <span class="today_linkIcons today_link_1"></span>
                            <a class="today_linkText" href="#" style="float: left;font-size: 14px">iPhone版</a>
                        </div>
                    </li>
                    <li class="today_linkItem">
                        <div class="today_itemDiv">
                            <span class="today_linkIcons today_link_2"></span>
                            <a class="" href="#" style="float: left;font-size: 14px">贺卡</a>
                        </div>
                    </li>
                    <li class="today_linkItem_left">
                        <div class="today_itemDiv">
                            <span class="today_linkIcons today_link_3"></span>
                            <a class="" href="#" style="font-size: 14px;float: left">iPad版</a>
                        </div>
                    </li>
                    <li class="today_linkItem">
                        <div class="today_itemDiv">
                            <span class="today_linkIcons today_link_4"></span>
                            <a class="" href="#" style="float: left;font-size: 14px">记事本&nbsp;-&nbsp;日历</a>
                        </div>
                    </li>
                    <li class="today_linkItem_left">
                        <div class="today_itemDiv">
                            <span class="today_linkIcons today_link_5"></span>
                            <a class="" href="#" style="font-size: 14px; float: left">Android版</a>
                        </div>
                    </li>
                    <li class="today_linkItem">
                        <div class="today_itemDiv">
                            <span class="today_linkIcons today_link_6"></span>
                            <a class="" href="#" style="float: left;font-size: 14px">文件中转站</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!--版权-->
        <div class="clear todaybottominfo">
            <a href="#" class="copyright">企业邮箱&nbsp;|&nbsp;</a>
            <a href="#" class="copyright">体验室&nbsp;|&nbsp;</a>
            <a href="#" class="copyright">邮箱助手&nbsp;|&nbsp;</a>
            <a href="#" class="copyright">自助查询&nbsp;|&nbsp;</a>
            <a href="#" class="copyright">隐私政策</a><br>
            <div style="margin-top: 4px">
                <a href="#" class="copyright">标准版&nbsp;-&nbsp;</a>
                <a href="#" class="copyright">基本版&nbsp;|&nbsp;</a>
                <span style="font-size: 11px;float: left">© 1998 - 2021 Tencent Inc. All Rights Reserved</span>
            </div>
        </div>
        </body>
    </div>
    <!--收信-->
    <div id="receiving">
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
                <div id="mydiv">
                    <table cellspacing="0" class="message" id="textData">
                        <!-- 		<tr>
                            <td class="td0"><input type="checkbox" name="checkbox" /></td>
                            <td style="width: 200px"><input type="button" class="Ru" />
                            </td>
                            <td class="td1"><a href="lookEmail.html" class="td1a">小明</a>
                            </td>
                            <td class="td2">去图书馆</td>
                            <td class="td3">2021年12月24日</td>
                        </tr>  -->
                    </table>
                </div>
                <div class="footer">
                    <a href="javascript:home()" class="tbodya">首页</a>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:per()" class="tbodya">上一页</a>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:next()" class="tbodya">下一页</a>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:last()" class="tbodya">末尾</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    1/9页
                </div>
            </div>
        </SECTION>
    </div>
    <!--通讯录-->
    <div id="address">ccc</div>
    <!--星星邮箱-->
    <div id="star">ddd</div>
    <!--草稿箱-->
    <div id="draftbox">fff</div>
    <!--已发送-->
    <div id="send">xxx</div>
    <!--已删除-->
    <div id="delete">zzz</div>
    <!--垃圾箱-->
    <div id="bin">sss</div>
</main>
</body>
</html>