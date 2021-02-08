<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<head>
<script src="/gwland/resources/cli/js/list.js"></script>
<meta charset="UTF-8">

</head>
<body>
<h2>고객 목록 </h2>
<table id="client-list">
 <thead>
  <tr>
   <th>고객번호&nbsp;</th>
   <th>고객아이디&nbsp;</th>
   <th>고객이름&nbsp;</th>
   <th>성별&nbsp;</th>
   <th>연락처&nbsp;</th>
   <th>생년월일</th>
  </tr>
 </thead>

</table>
<script>
	client.list()
</script>
 <tfoot>
    <tr>
      <th></th>
      <td>
        <a class="btn btn-info" href="/articles/edit/{{id}}">수정</a>
        <button class="btn btn-danger" id="article-destroy-btn">삭제</button>
      </td>
    </tr>
  </tfoot>


 <p>
<input type="button" value="홈으로" onclick="history.back(-1)">
</p>
</body>
</html>










