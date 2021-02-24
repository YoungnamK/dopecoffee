/*===========================
	커피 상품 등록 
==============================*/









$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});

/*===========================
	유효성 검사  
==============================*/
var font_color = '#5080BF';


$(document).ready(function(){ // 페이지 로딩 될때 

	// 주제
  $("#c_type").click(function(){
   	var c_type = $('#c_type option:selected').val(); 
	// alert(c_type);
	
	if(c_type == '-'){
		$('#err_c_type').text('주제를 선택하세요!');
		$('#err_c_type').css('color' , font_color);
	}else{
		$('#err_c_type').text('');
	}
	

  });
	
	// 상품명

	
	$("#c_name").keyup(function(){
		
		
		if(c_name.length < 4 ){
			var c_name = $("#c_name").val();
			$('#err_c_name').text('상품명은 4글자이상으로 해주세요.');
			$('#err_c_name').css('color' , font_color);
		}else {
			$('err_c_name').text('');
		}
	});
	
	var c_name_check = /^[0-9]$/;
	//var c_name_check = /^[a-zA-Z]$/;
	//var c_name_check = /^[가-힣]$/;
	
	$("#c_name").blur(function(){
		var c_name = $("#c_name").val();
		if(c_name.length == 0){
			$('#err_c_name').text('상품명을 입력해주세요.');			
			$('#err_c_name').css('color' , font_color);
		}else if(c_name.length != 0){
			$('err_c_name').text('');
		}
	});
	
	//가격
	
	
	
	$("#c_price").blur(function(){
		var c_price = $("#c_price").val();
		if(c_price.length == 0){
			$('#err_c_price').text('상품의 가격을 입력하여 주세요.');
			$('#err_c_price').css('color' , font_color);
		}else if(c_price.length != 0){
			$('#err_c_price').text('');
		}
	});
	
		$("#c_price").keyup(function(){
		
		if(c_price.length == 0){
			$('#err_c_price').text('상품의 가격을 입력하여 주세요.');
			$('#err_c_price').css('color' , font_color);
		}
	});
	
	//원산지
	
	
	
	$("#c_origin").blur(function(){
		var c_origin = $('#c_origin').val();
			if(c_origin.length == 0){
			$('#err_c_origin').text('원산지를 입력해주세요.');			
			$('#err_c_origin').css('color' , font_color);
		}else if(c_qty.length != 0){
			$('#err_c_origin').text('');
		}
	});
	
	//무게
		
	$('#c_weight').blur(function(){
		var c_weight = $('#c_weight').val();
		if(c_weight.length == 0){
			$('#err_c_weight').text('재고를 입력해주세요.');			
			$('#err_c_weight').css('color' , font_color);	
		}else if(c_weight.length != 0){
			$('#err_c_weight').text('');
		}

		});		
	
	
	//로스팅여부
	var c_roasting = $('#c_roasting').val();
	
	$("#c_roasting").blur(function(){
		var c_roasting = $('#c_roasting').val();
			if(c_origin.length == 0){
			$('#err_c_roasting').text('로스팅여부를 입력해주세요.');			
			$('#err_c_roasting').css('color' , font_color);
		}else if(c_roasting.length != 0){
			$('#err_c_roasting').text('');
		}
	});
	
	//블렌딩종류
	var c_blending = $('#c_blending').val();
	
	$("#c_blending").blur(function(){
		var c_blending = $('#c_blending').val();
			if(c_blending.length == 0){
			$('#err_c_blending').text('블렌딩 종류를 입력해주세요.');			
			$('#err_c_blending').css('color' , font_color);
		}else if(c_blending.length != 0){
			$('#err_c_blending').text('');
		}
	});
	//분쇄타입
	$("#c_crushing_status").click(function(){
		var c_crushing_status = $('#c_crushing_status option:selected').val();
		
		if(c_crushing_status == '-'){
		$('#err_c_crushing_status').text('분쇄타입을 선택하세요!');
		$('#err_c_crushing_status').css('color' , font_color);
	}else{
		$('#err_c_crushing_status').text('');
		}
	});
	
	//재고 수량
	

	$('#c_qty').blur(function(){
			var c_qty = $('#c_qty').val();
		if(c_qty.length == 0){
			$('#err_c_qty').text('재고를 입력해주세요.');			
			$('#err_c_qty').css('color' , font_color);	
		}else if(c_qty.length != 0){
			$('#err_c_qty').text('');
		}

		});		
	
		$('#c_qty').keyup(function(){
				var c_qty = $('#c_qty').val();
			if(c_qty < 10){
			$('#err_c_qty').text('재고수량은 10개이상 입력해주세요.');			
			$('#err_c_qty').css('color' , font_color);
			}else if (c_qty.length != 0){
				$('#err_c_qty').text('');				
			}

		});		
	
	
});

// 페이지가 로딩되었을 때 실행되는 함수 //
function today() {
	$('#search').hide(); // 검색 부분 (===> 상품 리스트 목록 부분)
	
	
}


