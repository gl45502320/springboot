<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function submits(){
		if(names()&&prices()&&upsets()&&starts()&&ends()){
			return true;
		}else{
			return false;
		}
	}
	
	function names(){
		var name=$("[name=auction_name]").val().trim();
		console.log("name.length+ "+name.length);
	
		if(name.length!=0){
			$("#name").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#name").html("用户名不能为空！").prop("style","color: red");
		return false;
		}
	}
	
	function prices(){
		var name=$("[name=auction_start_price]").val().trim();
		console.log("name.length+ "+name.length);
		var acnprices= /^\d+.\d+$/;
		var acnprices2= /^\d+$/;
		acnprices.test(name)
		if(acnprices.test(name)||acnprices2.test(name)){
			$("#price").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#price").html("必须是数字！").prop("style","color: red");
		return false;
		}
	}
	function upsets(){
		var name=$("[name=auction_upset]").val().trim();
		console.log("name.length+ "+name.length);
		var acnprices= /^\d+.\d+$/;
		var acnprices2= /^\d+$/;
		acnprices.test(name)
		if(acnprices.test(name)||acnprices2.test(name)){
			$("#upset").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#upset").html("必须是数字！").prop("style","color: red");
		return false;
		}
	}

	function starts(){
		var name=$("[name=auction_start_time]").val().trim();
		console.log("name.length+ "+name.length);
		var starts1 = /^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$/;
		var starts2 = /^\d{4}-\d{2}-\d{2}$/;
		if(starts1.test(name)||starts2.test(name)){
			$("#start").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#start").html("格式：2000-01-01 12:00:00或2000-01-01").prop("style","color: red");
		return false;
		}
	}
	function ends(){
		var name=$("[name=auction_end_time]").val().trim();
		var starts1 = /^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$/;
		var starts2 = /^\d{4}-\d{2}-\d{2}$/;
		if(starts1.test(name)||starts2.test(name)){
			$("#end").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#end").html("格式：2000-01-01 12:00:00或2000-01-01").prop("style","color: red");
		return false;
		}
	}


</script>
</head>

<body>
<div class="wrap">
  <!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
        <form action="${pageContext.request.contextPath}/insertOne.long" method="post" enctype="multipart/form-data" onsubmit="return submits()">
				<dl>
					<dd >
					  <label>用户名：</label>
					  <input type="text" class="inputh lf" name="auction_name" onblur="names()"/><span id="name" ></span>
					  <div class="xzkbg spbg lf"></div>
					</dd>
					<dd >
					  <label>起拍价：</label>
					  <input type="text" class="inputh lf" name="auction_start_price"  onblur="prices()"/><span id="price"></span>
					  <div class="lf red laba"></div>
					</dd>
					<dd >
					  <label>底价：</label>
					  <input type="text" class="inputh lf" name="auction_upset" onblur="upsets()" /><span id="upset"></span>
					  <div class="lf red laba"></div>
					</dd>
					<dd >
					  <label>开始时间：</label>
					  <input type="text" class="inputh lf" name="auction_start_time"  onblur="starts()"/><span id="start"></span>
					  <div class="lf red laba"></div>
					</dd>
					<dd >
					  <label>结束时间：</label>
					  <input type="text" class="inputh lf" name="auction_end_time"  onblur="ends()"/><span id="end"></span>
					  <div class="lf red laba"></div>
					</dd>
					<dd class="dds">
					  <label>拍卖品图片：</label>
					   <div class="lf salebd"><a href="#"><img src="${pageContext.request.contextPath}/images/007.jpg" width="100" height="100" /></a></div>
					  <input name="tupian" type="file" class="offset10 lf" />
					</dd>
					 <dd class="dds">
					  <label>描述：</label>
					  <textarea name="auction_desc"  cols="" rows=""  class="textarea" ></textarea>
					</dd>
					<dd class="hegas">
					    <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
					    <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" />
					</dd>
				</dl>
        </form>
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body>
</html>
