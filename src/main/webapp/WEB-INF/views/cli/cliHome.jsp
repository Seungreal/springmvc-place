<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<head>
	<title>Home</title>
</head>
<body>
<h1> 고객관리 홈 </h1>
<P><a href='#' id="client-list">고객정보 보기</a></P>
<P><a href='#' id="client-insert">고객정보 입력</a></P>
<script>
$(`#client-list`).click(function(){
   location.href=`list`})
</script>
<script>
$(`#client-insert`).click(function(){
   location.href=`insert`})
</script>
</body>
</html>

