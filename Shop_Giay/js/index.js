// Nút
var mybutton = document.getElementById("myBtn-scroll");

// Cuộn xuống 20px từ đầu trang, thì hãy hiển thị nút
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}