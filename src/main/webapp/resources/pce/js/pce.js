var pce = pce || {}

pce.list=x=>{
	$.getJSON(`/gwland/place/${x.size}/${x.num}`,d=>{
		$('<ul/>')
		.attr({id:'ul'})
		.appendTo('#list')
		
		$.each(d.list,(i,j)=>{
			$(`<li>
				<a id="${j.pceNum}">
					<div class="img"><img src="${j.placeImg}"/></div>
					<div class="txt"><strong>${j.name}</strong></div>
				</a>
			</li>`)
			.appendTo('#ul')
		})
		$('#main #list ul li a').each(function(){
            $(this).click(e=>{
                localStorage.setItem('pceNum',this.id)
                location.href=`/gwland/pce/detailPlace`
            })
        })

		const page = d.page
		const range = (start, end) => {
		    const length = end - start + 1;
		    return Array.from({ length }, (_, i) => start + i);
		}
		if(page.existPrev){
			$('<a/>')
			.attr({href:'#'})
			.text('<<')
			.appendTo('#page')
			.click(e=>{
				$('#list').empty()
				$('#page').empty()
				pce.list({size:'6',num:page.prevBlock})
			})
		}
		$.each(range(page.startPage,page.endPage),(i,j)=>{
			$('<a/>')
			.attr({href:'#'})
			.text(j)
			.appendTo('#page')
			.click(e=>{
				$('#list').empty()
				$('#page').empty()
				pce.list({size:'6',num:j})
			})
		})
		if(page.existNext){
			$('<a/>')
			.attr({href:'#'})
			.text('>>')
			.appentTo('#page')
			.click(e=>{
				$('#list').empty()
				$('#page').empty()
				pce.list({size:'6',num:page.nextBlock})
			})
		}
    })
}

pce.detail = x=>{
	$.getJSON(`/gwland/place/${x}`,d=>{
		$('#name').text(d.name)
		$('#address').text(d.address)
		$('#phoneNumber').text(d.phoneNumber)
		$('#category').text(d.category)
		$('#city').text(d.city)
		$('#toggle').html('<button id="delete-btn">삭제하기</button>')
	})
}

pce.update = x=>{
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
	    				pceNum:x,
	    				name:$('#updateName').val(),
	    				address:$('#updateAddress').val(),
	    				phoneNumber:$('#updatePhoneNumber').val(),
	    				category:$('#updateCategory').val(),
	    				city:$('#updateCity').val()
	    			}),
	    			dataType:'json',
	    			contentType:'application/json',
	    			success:d=>{alert('성공')},
	    			error:e=>{alert('에러 발생')}
	    		})
    		})
    	})
}