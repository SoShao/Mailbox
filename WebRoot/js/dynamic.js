$(function () {
    $(".lm_sbar .txt").click(function () {
        $(this).val("");
    })
    $(".lm_sbar .txt").blur(function () {
        $(this).val("查找联系人...");
    })
    $("#aCC").click(function () {
        $("#trCC").show();
        $("#bCC").css("display","");
        $("#aCC").css("display","none");
    });
    $("#bCC").click(function () {
        $("#trCC").hide();
        $("#bCC").css("display","none");
        $("#aCC").css("display","");
    });
    $("#aBCC").click(function () {
        $("#trBCC").show();
        $("#acCC").css("display","");
        $("#aBCC").css("display","none");
    });
    $("#acCC").click(function () {
        $("#trBCC").hide();
        $("#acCC").css("display","none");
        $("#aBCC").css("display","");
    });
    $("#composebtn").click(function () {
        $("#write").show();
    });
    dates();
    $("#readmailbtn_link")
        .click(
            function() {
            	getEmailDataItem();
            });

    $("#btn_add").click(function() {
        getEmailBox();
    });
 
});
function getEmailData(){
	var mid=$("#mid").val();
	alert(mid);
	$.post("MessageServlet?opr=getmsg",{mid:mid},function(){
		
	},"JSON");
}
function per(){
	var currPageNo = parseInt($("#currPageNo").val());

			if (currPageNo == 1) {
				return;
			} else {
				currPageNo = currPageNo - 1;
			}

			$("#currPageNo").val(currPageNo);
			
			getEmailDataItem();
	}
	function next(){
	 var currPageNo = parseInt($("#currPageNo").val());

			if (currPageNo == parseInt($("#totalPageCount").val())) {
				return;
			} else {
				currPageNo = currPageNo + 1;
			}

			$("#currPageNo").val(currPageNo);
			
			getEmailDataItem();
	}
	function Last(){
	    	$("#currPageNo").val($("#totalPageCount").val());
	    	getEmailDataItem();
	}
function dates(){
    var date=new Date();
    var hours=date.getHours();
    var str="";
    switch(hours){
        case 0: case 1:case 2:case 3:case 4:case 5:case 6:case 7:case 8:case 9:case 10:case 11:
        str="早上好,";
        break;
        case 12:case 13:case 14: str="中午好,";break; case 15:case 16:case 17:str="下午好,";break;
        case 18:   case 19:  case 20:  case 21:   case 22: case 23:str="晚上好,";break;

    }
    $("#time").html(str);
}

function getEmailBox() {
    var gname=$("#toptitle").html();
    var cname = $("#cname").val();
    var bname = $("#bname").val();
    var rname = $("#rname").val();
    var cnameid = $("#cnameid").val();
    var bnameid = $("#bnameid").val();
    var rnameid = $("#rnameid").val();
    var caption=$("#caption").val();
    var conText=$("#conText").val();
    var state=$("#trCC").css("display");
    if(state=="none"){
        cnameid=0;

    }
  
    var states=$("#trBCC").css("display");
    if(states=="none"){
        bnameid=0;
    }
   
    $.post("MessageServlet?opr=add", {
        cname : cname,
        bname : bname,
        rname : rname,
        cnameid : cnameid,
        bnameid : bnameid,
        rnameid : rnameid,
        caption:caption,
        conText:conText,
        gname:gname
    }, function(result) {
        if (result) {
            alert("发送邮箱成功");
        } else {
            alert("发送邮箱失败");
        }
    }, "JSON");
};

function getEmailDataItem(){
    var cname = $("#toptitle").html();
    var currPageNo = $("#currPageNo").val();
    $
        .post(
            "MessageServlet",
            {
                opr : "getData",
                cname : cname,
                currPageNo : currPageNo
            },
            function(item) {
                var str = "<table cellspacing='0' class='message'>";
                $(item.list)
                    .each(
                        function() {
                            str += "<tr onclick='getEmailData();'><td class='td0'><input type='checkbox' name='checkbox'/></td><input type='hidden' value='"+this.mid+"' id='mid'> <td style='width: 200px'><input type='button' class='Ru'/></td>   <td class='td1'><a href='lookEmail.html' class='td1a'>"
                                + this.cname
                                + "</a></td><td class=’td2’>"
                                + this.caption
                                + "</td> <td class='td3' >"
                                + this.transmissionTime
                                + "</td><</tr>";
                        });
                str += "</table>";
                $("#mydiv").html(str);
                $("#nCurPage")
                    .html(
                        item.currPageNo);
                $("#nPageSize").html(
                    item.pageSize);
                $("#totalPageCount")
                    .val(
                        item.totalPageCount);
                location.href = "#receiving";
            }, "JSON");
}
