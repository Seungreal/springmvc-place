<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div id="header">
	<div>
		<a href="#" class="home">강원랜드</a>
			<ul id="navigation">
				<li class="menu">
					<a href="#">메뉴1</a>
				</li>
				<li class="menu">
					<a href="#">여행정보</a>
					<ul class="primary">
						<li>
							<a href="#">메뉴2-1</a>
						</li>
						<li>
							<a href="#" id="listPlace">관광지정보</a>
						</li>
					</ul>
				</li>
				<li class="menu">
					<a href="#">메뉴3</a>
					<ul class="secondary">
						<li>
							<a href="#">메뉴3-1</a>
						</li>
					</ul>
				</li>
				<li class="menu">
					<a href="#">메뉴4</a>
				</li>
			</ul>
	</div>
</div>
<script>
	$('.home').click(function(){location.href='/gwland'})
	$('#listPlace').click(function(){location.href='/gwland/pce/listPlace'})
</script>