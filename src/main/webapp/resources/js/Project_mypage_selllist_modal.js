window.onload=function(){
    let open = document.getElementById('product-sellReserve');
    let close = document.getElementById('close');
    let modal = document.getElementById('modal-box');

    open.addEventListener('click', function(){
        modal.classList.add('active');
    });

    close.addEventListener('click', function(){
        modal.classList.remove('active');
    });
}