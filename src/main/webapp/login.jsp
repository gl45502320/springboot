<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登陆</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function changeImage(){
		$("#kaptchaImage").prop("src","getKaptcha.long?t="+new Date().getTime());
	}
	function submits(){
		if(names()&&passwordses()){
			return true;
		}else{
			return false;
		}
	}
	function names(){
		var name=$("[name=user_name]").val().trim();
		if(name.length!=0){
			$("#namees").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#namees").html("用户名不能为空！").prop("style","color: red");
			return false;
		}
	}
	
	function passwordses(){
		var password=$("[name=user_password]").val().trim();
		if(password.length!=0){
			$("#passwordes").html("格式正确").prop("style","color: blue");
			return true;
		}else{
			$("#passwordes").html("密码不能为空！").prop("style","color: red");
			return false;
		}
	}

</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">  <%-- <s:url action="use_login" namespace="/"/> --%>
     <form action="${pageContext.request.contextPath}/login.long" method="post" target='_blank' onsubmit="return submits()" >
		<div class="login">
			<dl>
				<dt class="blues">用户登陆</dt>
				<dd>
					<label for="name">用户名：</label>
					<input type="text" class="inputh" name="user_name"  id="name" onblur="names()"/>
					<span id="namees"></span>
				</dd>
				<dd>
					<label for="password">密 码：</label>
					<input type="text" class="inputh" name="user_password"  id="password"  onblur="passwordses()"/>
					<span id="passwordes"></span>
				</dd>
				<dd>
				   <label class="lf" for="passwords">验证码：</label>
				   <input type="text" name="kaptcha" class="inputh inputs lf" value="" id="passwords"/>
				   <span class="wordp lf"><img id="kaptchaImage"  src="getKaptcha.long" width="96" height="27" alt="" /></span>
				   <span class="blues lf"><a href="javascript:void(0)" onclick="changeImage()" title="">看不清？换一张</a></span><br/>
				</dd>
				<dd>
				   <span><font color="red">${requestScope.error}</font></span>
				</dd>
				<dd>
				   <input name=""  type="checkbox" id="rem_u"  />
				   <span for="rem_u">下次自动登录</span>
				</dd>
				<dd class="buttom">
				   <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
				   <a href="${pageContext.request.contextPath}/auction_logon.jsp" class="spbg buttombg f14 lf">注 册</a>
				   <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
				   <div class="cl"></div>
				</dd>
			</dl>
		</div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
