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
    <h1 class="lf"><a href="${pageContext.request.contextPath}/selectAll.long" >在线拍卖系统</a></h1>
    <div class="logout right"><a href="${pageContext.request.contextPath}/use_remove" />注销</a></div>
  </div>
  <div class="forms">
  <form action="${pageContext.request.contextPath}/selectAll.long"  method="post">
	  <table>
		  <tr>
			  <td>
			    名称
			    <input name="auction_name"  type="text" class="nwinput" id="name"/>
			    描述
			    <input name="auction_desc" type="text" id="names" class="nwinput"/>
			    始时间
			    <input name="auction_start_time" type="text" id="time" class="nwinput"/>
			    终时间
			    <input name="auction_end_time" type="text" id="end-time" class="nwinput" />
			    起拍价
			    <input name="auction_start_price" type="text" id="price" class="nwinput" />
			    <input type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
			    <c:if test="${sessionScope.user.user_is_admin==1}">
				    <a href="${pageContext.request.contextPath}/private/add_auction.jsp">
				    	<input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb"/>
			    	</a>
			  	</c:if>
			  </td>
		  </tr>
	  </table>
  </form>  
  </div>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      <c:forEach items="${requestScope.list}" var="auc">
      <ul class="rows">
        <li><a href="<s:url value='/private/auction.jsp'/>" >${auc.auction_name}</a></li>
        <li class="list-wd">${auc.auction_desc}</li>
        <li>
        <fmt:formatDate value="${auc.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </li>
        <li>
        <fmt:formatDate value="${auc.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </li>
        <li>${auc.auction_start_price}</li>
        <li class="borderno red">
          <c:if test="${sessionScope.user.user_is_admin==0}">
           <a href="${pageContext.request.contextPath}/auctionOne.long?auction_id=${auc.auction_id}">竞拍</a>
        </c:if>
          <c:if test="${sessionScope.user.user_is_admin==1}">
		   <a href="javascript:void(0)" title="修改" onclick="dele(${auc.auction_id});">修改</a>|
        </c:if>
          <c:if test="${sessionScope.user.user_is_admin==1}">
          <a id="shanchu" href="javascript:void(0)" title="删除" onclick="abc(${auc.auction_id});">删除</a>
        </c:if>
        </li>
      </ul>
   </c:forEach>
      <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div>
  </div>
  <script>
   function abc(id){
	   
	   if(confirm("你真的确认要删除吗？请确认")){
		   location="${pageContext.request.contextPath}/deleteOne.long?auction_id="+id;
		 }
			 
	   };
	   function dele(id){
		   if(confirm("你真的确认要修改吗？请确认")){
			   location="${pageContext.request.contextPath}/selectOne.long?auction_id="+id;
		   }
	   };
		   
		  
	   
	/* 	function deleteOne(id){
			if(confirm("确认删除该信息?")){
				location="<s:url namespace="/private" action="/book_deleteOne"/>?book_id="+id;
			}
		} */
  </script>
<!-- main end-->
</div>
</body>
</html>
