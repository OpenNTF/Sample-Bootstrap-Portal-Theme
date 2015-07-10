(function(){
if(!i$.isIE){
i$.addOnLoad(function(){
var _1=document.getElementsByTagName("SECTION");
for(var i=0;i<_1.length;i++){
if(i$.hasClass(_1[i],"a11yRegionTarget")){
var _2=_1[i];
var _3=null;
var _4=_2.getElementsByTagName("SPAN");
for(var j=0;j<_4.length;j++){
if(i$.hasClass(_4[j],"a11yRegionLabel")){
_3=_4[j];
}
}
if(_3){
var _5=_3;
var _6=_2;
var _7=null;
while((_6=_6.parentNode)!=null){
if(i$.hasClass(_6,"component-control")){
var m=_6&&(_6.className||"").match(/id-([\S]+)/);
_7=m&&m[1];
break;
}
}
if(_7){
var _8="wpRegionId"+_7;
_5.setAttribute("id",_8);
_2.setAttribute("aria-labelledby",_8);
}
}
}
}
});
}
})();

