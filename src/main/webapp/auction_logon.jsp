<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<link href="${pageContext.request.contextPath}/css/common.css"rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css"rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function changeImage(){
		$("#kaptchaImage").prop("src","getKaptcha.long?t="+new Date().getTime());
	}

</script>
</head>

<body>
<div class="wrap">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
        <form action="${pageContext.request.contextPath}/logon.long" method="post">
          <table>
	            <tr>
		            <td>
			          <label> <small>*</small>用户名</label>
		              <input type="text" class="inputh lf" name="user_name" value="" />
		              <div class="lf red laba">用户名要求不低于6个字符</div>
	            	</td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>密码</label>
		              <input type="text" class="inputh lf" name="user_password" value="" />
		              <div class="lf red laba">密码要求不低于6个字符</div>
	             	</td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>身份证号</label>
		              <input type="text" class="inputh lf" name="user_card_no" value="" />
		              <div class="lf red laba">身份证号必填</div>
		            </td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>电话</label>
		              <input type="text" class="inputh lf" name="user_tel" value="" />
		              <div class="lf red laba">电话号码必填</div>
	             	</td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>住址</label>
		              <input type="text" class="inputh lf" name="user_address" value="" />
	             	</td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>邮政编码</label>
		              <input type="text" class="inputh lf" name="user_post_number" value="" />
	             	</td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>密保问题</label>
		              <input type="text" class="inputh lf" name="user_question" value="" />
	             	</td>
	            </tr>
	            <tr>
		            <td>
		              <label> <small>*</small>密保答案</label>
		              <input type="text" class="inputh lf" name="user_answer" value="" />
	             	</td>
	            </tr>
	            <tr>
		            <td class="hegas">
		              <label> <small>*</small>验证码</label>
		              <input type="text" name="kaptcha" class="inputh inputs lf" value="" />
		               <span class="wordp lf"><img id="kaptchaImage" src="getKaptcha.long" width="96" height="27" alt="" /></span>
		               <span class="blues lf"><a href="javascript:void(0)" onclick="changeImage()"title="">看不清？换一张</a></span>
	             	</td>
	            </tr>
	            <tr>
	            	<td>
	            	<span><font color="red">${requestScope.error}</font></span>
	            	</td>
	            </tr>
	            <tr>
		            <td class="hegas">
		              <label>&nbsp;</label>
		               <input name=""  type="checkbox" id="rem_u"   />
		              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
	             	</td>
	            </tr>
	            <tr>
		            <td class="hegas">
		              <label>&nbsp;</label>
		              <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
	             	</td>
	            </tr>
          </table>
         </form> 
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body>
</html>
