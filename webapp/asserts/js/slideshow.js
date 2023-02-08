var pic =document.getElementById('picture');
var next = document.querySelector(".arrow_right");
var prev = document.querySelector(".arrow_left");
var imgwidth=pic.children[0].offsetWidth;
var move=0;
console.log("imgWidth="+imgwidth);
next.onclick=function(){
    if(move==pic.children.length-1){
        move=0;
        pic.style.left=0+"px";
    }
    move++;
    animate(pic,-move*imgwidth);
}
prev.onclick=function(){
    if(move==0){
        move=pic.children.length-1;
        pic.style.left=-move*imgwidth+"px";
    }
    move--;
    animate(pic,-move*imgwidth);
}
var timer = null;
function autoPlay () {
    timer = setInterval(function () {
        next.onclick();
    },3000);
}
autoPlay();
var Carousel = document.querySelector(".Carousel");
Carousel.onmouseenter = function () {
    clearInterval(timer);
}
Carousel.onmouseleave = function () {
    autoPlay();
}
function animate(element,distance){
    clearInterval(element.timer)
    element.timer=setInterval(function(){
        var present=element.offsetLeft;//获取元素的当前的位置
        var movement=15;//每次移动的距离
        movement=present<distance?movement:-movement;
        present+=movement;//当前移动到位置
        if(Math.abs(present-distance)>Math.abs(movement)){
            element.style.left=present+"px"
        }else{
            clearInterval(element.timer);
            element.style.left=distance+"px"
        }
    },8);
}