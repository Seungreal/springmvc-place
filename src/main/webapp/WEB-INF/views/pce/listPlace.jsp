<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="main">
	<div id="add"><button id="addPlace">새 관광지 추가하기</button></div>
	<div id="list"></div>
	<div id="page"></div>
</div>
<script src="<c:url value="/resources/pce/js/pce.js"/>?ver=210215"></script>
<script>
	$('#addPlace').click(e=>{location.href='/gwland/pce/addPlace'})
	pce.list({size:'6',num:'1'})
</script>