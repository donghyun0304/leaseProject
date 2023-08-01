window.addEventListener('load', function(){
  
    let userPhoneCheck = document.querySelector('.phoneCheck');
    let checkForm = document.querySelector('.userPhoneCheckForm');

    userPhoneCheck.addEventListener('click', function(){
        checkForm.classList.remove('active');
    })
})