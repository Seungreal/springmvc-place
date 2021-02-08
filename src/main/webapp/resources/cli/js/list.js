var client = client || {}
client.list = () => {
	$.getJSON('/gwland/client/list', function(d){
	$.each(d.list,function(i, j){
		console.log(j.cliNum)
		$(`<tr>
		<td>${j.cliNum}</td>
		<td>${j.cliId}</td>
		<td>${j.name}</td>
		<td>${j.gender}</td>
		<td>${j.phoneNum}</td>
		<td>${j.regDate}</td>
		</tr>`).appendTo('#client-list')
	})
})
	
} 