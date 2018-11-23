<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
       	 <form action="${pageContext.request.contextPath}/updateOne.long"  method="post" enctype="multipart/form-data" >
	          <table>
	            <tr >
		            <td>
		              <label>名称：</label>
		              <input type="text" class="inputh lf" name="auction_name" value="${requestScope.auc.auction_name}" />
		              <input  type="hidden" name="auction_id" value="${requestScope.auc.auction_id}"/>
		              <div class="xzkbg spbg lf"></div>
		         	</td>
	            </tr>
	            <tr>
		            <td>
		              <label>起拍价：</label>
		              <input type="text" class="inputh lf" name="auction_start_price" value="${requestScope.auc.auction_start_price}" />
		              <div class="lf red laba">必须为数字</div>
		         	</td>
	            </tr>
	            <tr>
		            <td>
		              <label>底价：</label>
		              <input type="text" class="inputh lf" name="auction_upset" value="${requestScope.auc.auction_upset}" />
		              <div class="lf red laba">必须为数字</div>
		         	</td>
	            </tr>
	            <tr>
		            <td>
		              <label>开始时间：</label>
		              <input type="text" class="inputh lf" name="auction_start_time" value="<fmt:formatDate value="${auc.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss"/>" />
		              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
		         	</td>
	            </tr>
	            <tr>
		            <td>
		              <label>结束时间：</label>
		              <input type="text" class="inputh lf" name="auction_end_time" value="<fmt:formatDate value="${auc.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss"/>" />
		              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
		         	</td>
	            </tr>
	            <tr>
		            <td class="dds">
		              <label>描述：</label>
		              <textarea name="auction_desc" cols="" rows="" class="textarea">${requestScope.auc.auction_desc}</textarea>
		         	</td>
	            </tr>
	            <tr>
		            <td>
		              <label>修改图片：</label>
		              <div class="lf salebd"><a href="#"><img src="${pageContext.request.contextPath}/images/${requestScope.auc.auction_pic}" width="100" height="100" /></a></div>
		               <input name="tupian" type="file" class="marg10" />
		         	</td>
	            </tr>
	            <tr>
		            <td class="hegas">
		                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs f14 lf buttomb" />
		                <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb" />
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
