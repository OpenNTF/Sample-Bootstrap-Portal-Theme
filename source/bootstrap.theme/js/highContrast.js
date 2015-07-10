(function(){
if(!i$.isIE){
i$.addOnLoad(function(){
var _1=document.createElement("div");
_1.style.cssText="border:1px solid;border-color:red green;position:absolute;height:5px;top:-999px;background-image:url(\"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\");";
document.body.appendChild(_1);
var _2=null;
try{
_2=document.defaultView.getComputedStyle(_1,"");
}
catch(e){
_2=_1.currentStyle;
}
if(_2){
var _3=_2.backgroundImage;
if((_2.borderTopColor==_2.borderRightColor)||(_3!=null&&(_3=="none"||_3=="url(invalid-url:)"))){
document.getElementsByTagName("body")[0].className+=" wpthemeImagesOff";
}
document.body.removeChild(_1);
}
});
}
})();

