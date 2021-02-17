<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<head>
<script src="/gwland/resources/cli/js/client.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객정보 입력창</title>
</head>
<body>
<form id="ClientUpdateForm" name="ClientUpdateForm" onsubmit="ClientUpdatecheck()">
<table border="1" >
<caption><b>고객정보 수정</b></caption>
 <colgroup>
  <col width=100/>
  <col width=100/>
 </colgroup>

 <tbody>
  <tr>
   <th>고객번호</th>
   <td>
    <span id= "cliNum"></span>
   </td>
  </tr>
   <tr>
   <th>고객아이디</th>
   <td>
    <span id = "cliId"></span>
   </td>
  </tr>
  <tr>
   <th>고객이름</th>
   <td>
    <input type ="text" id="name" name="name" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>성별(M/F)</th>
   <td>
    <input type ="text" id="gender" name="gender" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>연락처</th>
   <td>
    <input type ="text" id="phoneNum" name="phoneNum" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>생년월일<br>('-'는 생략)</th>
   <td>
    <input type ="text" id="regDate" name="regDate" maxlength=50 value=""/>
   </td>
  </tr>
 </tbody>
</table>
<p>
 <input type="button" value="돌아가기" onclick="history.back(-1)">
 <input type=button value="취소" onclick="location.reload()">
 <input type="submit" id="update-btn" value="수정하기"/>
</p>
</form>

<script>
	client.update()
</script>
<script>
	$('#cliNum').text(localStorage.getItem('cliNum'))
	$('#cliId').text(localStorage.getItem('cliId'))
</script>

</body>
</html>







