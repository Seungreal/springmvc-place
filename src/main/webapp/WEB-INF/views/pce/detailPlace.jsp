<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<a href="#" id="updatePlace">수정화면으로</a>
	<table>
		<tr>
			<td><span id="name">이름</span></td>
		</tr>
		<tr>
			<td><span id="address">주소</span></td>
			<td><span id="phoneNumber">전화번호</span></td>
		</tr>
		<tr>
			<td><span id="category">분류</span></td>
			<td><span id="city">지역</span></td>
		</tr>
	</table>
	<span id="toggle"></span>
	<script src="<c:url value="/resources/pce/js/pce.js"/>?ver=210215"></script>
    <script>
    	pce.detail(localStorage.getItem('pceNum'))
    	$('#delete-btn').click(e=>{
    		$.ajax({
    			url:'/gwland/place',
    			type:'DELETE',
    			data:JSON.stringify({pceNum:localStorage.getItem('pceNum')}),
    			dataType:'json',
    			contentType:'application/json',
    			success:d=>{alert(d.message);location.href='/gwland/pce/listPlace'},
    			error:e=>{alert('에러 발생')}
    		})
    	})
    	$('#updatePlace').click(e=>{
    		$('#updatePlace').text('')
    		$('#name').html('<input id="updateName" value="'+$('#name').text()+'">')
    		$('#address').html('<input id="updateAddress" value="'+$('#address').text()+'">')
    		$('#phoneNumber').html('<input id="updatePhoneNumber" value="'+$('#phoneNumber').text()+'">')
    		$('#category').html('<input id="updateCategory" value="'+$('#category').text()+'">')
    		$('#city').html('<input id="updateCity" value="'+$('#city').text()+'">')
    		$('#toggle').html('<button id="update-btn">수정하기</button>')
    		$('#update-btn').click(e=>{
	    		$.ajax({
	    			url:'/gwland/place',
	    			type:'PUT',
	    			data:JSON.stringify({
	    				pceNum:localStorage.getItem('pceNum'),
	    				name:$('#updateName').val(),
	    				address:$('#updateAddress').val(),
	    				phoneNumber:$('#updatePhoneNumber').val(),
	    				category:$('#updateCategory').val(),
	    				city:$('#updateCity').val()
	    			}),
	    			dataType:'json',
	    			contentType:'application/json',
	    			success:d=>{},
	    			error:e=>{alert('에러 발생')}
	    		})
    		})
    	})
    	
    </script>