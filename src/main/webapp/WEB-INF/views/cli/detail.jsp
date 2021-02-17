<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/gwland/resources/cli/js/client.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>고객 상세 목록</h3>
<table id="client-detail">
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
	client.detail()
</script>

<input type="button" value="돌아가기" onclick="history.back(-1)">
<button type="button" onclick="location.href='http://localhost:8081/gwland/' ">홈으로</button>
<button id='update-btn'> 회원정보 수정</button>
<button id='delete-btn'> 회원정보 삭제</button>



<script>
client.delete()
</script>
<script>
$(`#update-btn`).click(function(){
	   location.href=`update`})
</script>


</body>
</html>