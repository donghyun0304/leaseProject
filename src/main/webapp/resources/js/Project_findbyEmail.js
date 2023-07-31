window.addEventListener('load', function(){
    let phoneCheck = document.querySelector('#check');
    phoneCheck.addEventListener('click',function(){

        document.querySelector('.findEmail_box_phone_check').classList.add('active');
    })
})


function phoneNum(){
    let num = document.querySelector('#userPhone');
    console.log(num.value.length);
    if (num.value.length == 3 || num.value.length == 8){
        num.value += "-";
    }
}