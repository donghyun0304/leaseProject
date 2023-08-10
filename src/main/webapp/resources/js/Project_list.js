window.addEventListener('load',function(){
    let getmore = document.querySelector(".getMore");
	var startRow = 0;
	var endRow = 0;
	
	
	if (getmore){
		getmore.addEventListener('click', function(){
			var list_length = $(".productList .product").length;
			var cri = cri;
			startRow = list_length + 1;
			endRow = startRow + 3;
	        var search = document.querySelector('#search').value;
	        var startDate = document.querySelector('#startDate').value;
	        var endDate = document.querySelector('#endDate').value;
	        var categoryId = document.querySelector('#categoryId').value;
	        

			var moreDate = {
				startRow : startRow,
				endRow : endRow,
				search: search, // 수정: 검색어 값
                startDate: startDate, // 수정: 대여 시작 날짜
                endDate: endDate, // 수정: 대여 종료 날짜
                categoryId: categoryId // 수정: 카테고리 ID
				
			};
			console.log(moreDate);
			var apiUrl = window.location.pathname + "/main";
	       
	        
			$.ajax({
				type: "GET",
				url : window.location.pathname + "/items",
				data : moreDate,
				contentType : "application/json",
				success : function(response){
					getMoreList(response);
				},
				error : function(error){
					
				}
			})
			
		})
	}


	function getMoreList(list){
		
		var locate = document.querySelector(".productList");
		var moreBox = document.querySelector(".moreBox");
		var length = list.length;
		console.log(length)
		for (var i=0;i<length;i++){
			var result = list[i];
			var content = '';

			if (result.productId != ''){  
				content += "<a href='/products/" + result.productId + "'>"
				content += "<li class='productImage'><img class='thumbnail' src='../../resources/images/" + result.storeImageName + "' alt='${item.productName}'></li>"
				content += "<li class='productName'><p class='product_title'>" + result.productName + "</p></li>"
				content += "<li class='productPrice'><p class='product_price'>" + result.productPrice + "원/일</p></li></a>"

				const tempUl = document.createElement("ul");
				tempUl.classList.add("product");
				tempUl.innerHTML = content;
				locate.insertBefore(tempUl, moreBox);
			}
		}
		moreBox = document.querySelector(".moreBox");
		if (list.length < 4){
			moreBox.remove();
		}
		
		
	}

})
// 액티브
function change_btn(e) {
    var btns = document.querySelectorAll(".actA");
    btns.forEach(function(btn, i) {
        if(e.currentTarget == btn) {
            btn.classList.add("active");
        }
        else {
            btn.classList.remove("active");
        }
    });
    console.log( e.currentTarget );
}


function change_btnPage(e) {
    var btns = document.querySelectorAll(".btnPage");
    btns.forEach(function(btn, i) {
        if(e.currentTarget == btn) {
            btn.classList.add("active");
        }
        else {
            btn.classList.remove("active");
        }
    });
    console.log( e.currentTarget );
    
}
