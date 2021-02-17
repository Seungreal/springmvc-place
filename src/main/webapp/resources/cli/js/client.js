var client = client || {}
client.list = x => {
	$.getJSON('/gwland/client/list', d=>{
	$.each(d.list,(i, j)=>{
		console.log(j.cliNum)
		$(`<tr>
		<td>${j.cliNum}</td>
		<td><a id = '${j.cliNum}' href='#'> ${j.cliId} </a></td>
		<td>${j.name}</td>
		<td>${j.gender}</td>
		<td>${j.phoneNum}</td>
		<td>${j.regDate}</td>
		</tr>`).appendTo('#client-list')
	})
	$('#client-list tr td a').each(function(){
		$(this).click(function(){
		localStorage.setItem('cliNum',this.id)
		localStorage.setItem('cliId',this.innerText)
		location.href=`/gwland/cli/detail`
		})
	})
	})
} 
client.delete = x => { 
	$('#delete-btn').click(function(e){
	e.preventDefault()
    $.ajax({
		url:'/gwland/client/delete',
		type:'DELETE',
		data:JSON.stringify({
			cliNum:localStorage.getItem('cliNum')
		}),
		dataType:'json',
		contentType:'application/json',
		success:
			function(d){
			if(d.message === "SUCCESS"){
				alert("고객정보를 성공적으로 삭제하셨습니다.")
				location.href=`list`
			}else{
				alert("고객정보 삭제를 실패하셨습니다.")
			}
		},
		error:function(e){
			alert("다시 입력해주세요.")
			}
    	})
    })
}


client.detail = x=>{
	$.getJSON(`/gwland/client/detail/${localStorage.getItem('cliId')}`,d=>{
		$(`<tr>
		<td>${d.detail.cliNum}</td>
		<td>${d.detail.cliId}</td>
		<td>${d.detail.name}</td>
		<td>${d.detail.gender}</td>
		<td>${d.detail.phoneNum}</td>
		<td>${d.detail.regDate}</td>
		</tr>`).appendTo('#client-detail')
	})
}

client.update = x => {
	$('#update-btn').click(function(e){
	e.preventDefault()
	$.ajax({
		url:'/gwland/client/update',
		type:'PUT',
		data:JSON.stringify({
			cliNum: $('#cliNum').text(),
			cliId: $('#cliId').text(),
			name: $('#name').val(),
			gender: $('#gender').val(),
			phoneNum: $('#phoneNum').val(),
			regDate: $('#regDate').val()
		}),
		dataType:'json',
		contentType:'application/json',
		success: 
			function(d){
			console.log(d)
			if(d.message === "SUCCESS"){
				alert("고객정보를 성공적으로 등록하셨습니다.")
				location.href=`list`
			}else{
				alert("고객정보입력를 실패하셨습니다.")
			}
		},
		error: function(e){
			alert("다시 입력해주세요.")
		}
	})
})
	
}



