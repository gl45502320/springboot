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
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称：</li>
        <li class="borderno">${requestScope.auc.auction_name}<s:property value="auction.auction_name" /></li>
      </ul>
      <ul class="rows">
        <li>描述：</li>
        <li class="borderno">${requestScope.auc.auction_name}<s:property value="auction.auction_desc" /></li>
      </ul>
      <ul class="rows">
        <li>开始时间：</li>
        <li class="borderno"><fmt:formatDate value="${auc.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss"/><s:date format="yyyy-MM-dd HH:mm:ss" name="auction.auction_start_time" /></li>
      </ul>
      <ul class="rows">
        <li>结束时间：</li>
        <li class="borderno"><fmt:formatDate value="${auc.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss"/><s:date format="yyyy-MM-dd HH:mm:ss" name="auction.auction_end_time" /></li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价：</li>
        <li class="borderno">${requestScope.auc.auction_upset}<s:property value="auction.auction_upset" /></li>
      </ul>
  </div>			<%-- /auctions/images/<s:property value="auction.auction_pic/>" --%>
  <div class="rg borders"><img src="${pageContext.request.contextPath}/images/${requestScope.auc.auction_name}.jpg"  width="270" height="185" alt="" /></div>
  <div class="cl"></div>
  <div class="top10 salebd">
  <form action="${pageContext.request.contextPath}/insertOneRecord.long" method="post">
       <p>
       <label for="sale">出价：</label>
       <input type="text"  class="inputwd" id="sale" name="auction_price"/>
       <input type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       <input  type="hidden" name="auction_id" value="${auc.auction_id}"/>
       </p>
       <p class="f14 red">不能低于最高竞拍价</p>
  </form>
  </div>
  <div class="top10">
  	<a href="#">
    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    </a>
    <a href="${pageContext.request.contextPath}/selectAll.long">
    	<input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
    </a>
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
      <c:forEach items="${requestScope.list}" var="lst">
      <ul class="rows">
        <li>${lst.auction_time }<s:property value="auction_time" /></li>
        <li>${lst.auction_price }<s:property value="auction_price" /></li>
        <li class="borderno">${lst.user.user_name }<s:property value="user.user_name" /></li>
      </ul>
      </c:forEach>
  </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
