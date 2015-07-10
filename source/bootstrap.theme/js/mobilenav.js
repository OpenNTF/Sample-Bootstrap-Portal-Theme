(function(){
if(typeof wptheme==="undefined"||!wptheme){
wptheme={};
}
i$.mash(wptheme,{mobileNavResizeBinding:null,mobileNavSideLastExpanded:[],mobileNavSideExpanded:[],mobileNavSideTogglingRoot:false,mobileBaseFeedURL:"",mobileNavInitialized:false,resizeMobileNavSide:function(e){
var _1=document.getElementsByTagName("header")[0];
var _2,id;
_2=document.getElementById("wpthemeNavRoot");
if(_2){
_2.style.top=_1.offsetHeight+"px";
_2.style.height=(window.innerHeight-_1.offsetHeight)+"px";
}
for(var i=0;i<wptheme.mobileNavSideExpanded.length;i++){
id=wptheme.mobileNavSideExpanded[i];
id=id.substr(0,id.length-4)+"Subnav";
_2=document.getElementById(id);
if(_2){
_2.style.top=_1.offsetHeight+"px";
_2.style.height=(window.innerHeight-_1.offsetHeight)+"px";
}
}
},animateMobileNavSidePanel:function(_3,_4,_5){
var _6=_3.offsetLeft;
if(ibmCfg.themeConfig.isRTL){
_6=parseInt(_3.style.right);
}
if(this.mobileNavSideTogglingRoot&&_4<_6){
_4=-_3.offsetWidth;
}
var _7=0;
var _8=Math.ceil(Math.abs(_4-_6)/5);
if(_6==_4){
_8=0;
}else{
if(_6>_4){
_8=-_8;
}
}
if(_8>0&&!this.mobileNavSideTogglingRoot){
if(ibmCfg.themeConfig.isRTL){
_3.style.clip="rect(0px,0px,"+_3.offsetHeight+"px,0px)";
}else{
_3.style.clip="rect(0px,"+_3.offsetWidth+"px,"+_3.offsetHeight+"px,"+_3.offsetWidth+"px)";
}
}
var _9=false;
var _a=setInterval(function(){
if(_9){
clearInterval(_a);
_3.style.clip="";
if(_5){
_5.call();
}
}else{
if(_8>0&&_6+_8>_4){
_8=_4-_6;
}
if(_8<0&&_6+_8<_4){
_8=-(_6-_4);
}
if(_8<0&&!wptheme.mobileNavSideTogglingRoot){
if(ibmCfg.themeConfig.isRTL){
_3.style.clip="rect(0px,"+(_3.offsetWidth-(_7-=_8))+"px,"+_3.offsetHeight+"px,0px)";
}else{
_3.style.clip="rect(0px,"+_3.offsetWidth+"px,"+_3.offsetHeight+"px,"+(_7-=_8)+"px)";
}
}
if(_8>0&&!wptheme.mobileNavSideTogglingRoot){
if(ibmCfg.themeConfig.isRTL){
_3.style.clip="rect(0px,"+(_7+=_8)+"px,"+_3.offsetHeight+"px,0px)";
}else{
_3.style.clip="rect(0px,"+_3.offsetWidth+"px,"+_3.offsetHeight+"px,"+(_3.offsetWidth-(_7+=_8))+"px)";
}
}
if(ibmCfg.themeConfig.isRTL){
_3.style.right=(_6+=_8)+"px";
}else{
_3.style.left=(_6+=_8)+"px";
}
if(_8>0&&_6>=_4||_8<0&&_6<=_4||_8==0){
_9=true;
}
}
},1);
},hideMobileNav:function(){
var _b=document.getElementById("wpthemeNavRootLink");
_b.style.display="none";
},loadMobileNav:function(_c,id,_d,_e){
if(_c){
wptheme.mobileBaseFeedURL=_c;
}
i$.xhrGet({url:wptheme.mobileBaseFeedURL+"&parentID="+id+"&level="+_d,sync:true}).then(function(_f){
_e.innerHTML=_f.data;
},function(_10){
var _11=_10.xhr.getResponseHeader("Content-Type")||"";
if((_11.indexOf("text/html")==0)||(_10.xhr.status==401)){
window.setTimeout(function(){
document.location.reload();
},0);
}
console.log("Error trying to load the child pages: "+_10);
});
},toggleMobileNavRoot:function(pid,_12,_13,_14,_15,url,_16,_17,_18,_19){
wptheme.toggleMobileNav(pid,_12,_13,_14,_15,url,_16,_17,_18,_19);
if(_19==0&&!wptheme.mobileNavInitialized){
var _1a=document.getElementById("wpthemeMobileSearchBoxSource");
var _1b=_1a.removeChild(_1a.children[0]);
document.getElementById("wpthemeMobileSearchBox").appendChild(_1b);
var _1c=_18.split(" "),len=_1c.length;
if(len>3){
for(var i=2;i<len-1;i++){
var des=_1c[i];
if(document.getElementById(des+"_navigationLink")){
wptheme.toggleMobileNav(des,_12,_13,_14,_15,null,_16,des,null,i-1);
}
}
}
wptheme.mobileNavInitialized=true;
}
},toggleMobileNav:function(pid,_1d,_1e,_1f,_20,url,_21,_22,_23,_24){
var id=(pid==_20)?pid:pid+"_navigation";
var _25=document.getElementById(id);
var _26=document.getElementById("wpthemeNavRootLink");
var _27=document.getElementById(id+"Link");
var _28=document.getElementById(id+"Access");
var _29=document.getElementById(id+"Subnav");
var _2a=(pid==_20)?document.getElementById(pid):_29;
var _2b=document.getElementsByTagName("header")[0];
var _2c=document.getElementById("layoutContainers");
if(_2a&&_2a.children.length==0){
wptheme.loadMobileNav(url,_22,_24,_2a);
}
if(_25){
if(_24==0){
if(i$.hasClass(_26,"wpthemeNavOpened")){
i$.removeClass(_26,"wpthemeNavOpened");
}else{
i$.addClass(_26,"wpthemeNavOpened");
}
}
if(i$.hasClass(_25,_1d)){
if(id==_20&&_21){
this.mobileNavSideTogglingRoot=true;
_25.style.top=_2b.offsetHeight+"px";
_25.style.height=(window.innerHeight-_25.offsetTop)+"px";
if(ibmCfg.themeConfig.isRTL){
_25.style.right=(-_25.offsetWidth)+"px";
}else{
_25.style.left=(-_25.offsetWidth)+"px";
}
this.mobileNavResizeBinding=i$.bindDomEvt(window,"resize",this.resizeMobileNavSide);
}
i$.removeClass(_25,_1d);
_25.setAttribute("aria-expanded","true");
_27.setAttribute("aria-label",_1f);
_27.title=_28.innerHTML=_1f;
if(id==_20&&_21){
_2b.style.position="fixed";
_2b.style.width="100%";
_2c.style.paddingTop=_2b.offsetHeight+10+"px";
_2b.style.zIndex="9998";
_2b.style.top="0px";
this.animateMobileNavSidePanel(_25,0,function(){
if(wptheme.mobileNavSideLastExpanded.length==0){
wptheme.mobileNavSideTogglingRoot=false;
}
});
}
if(_21){
if(id==_20){
for(var i=0;i<this.mobileNavSideLastExpanded.length;i++){
document.getElementById(this.mobileNavSideLastExpanded[i]).onclick.call();
}
}else{
this.mobileNavSideExpanded.push(id+"Link");
_27.parentNode.parentNode.parentNode.onclick=_27.onclick;
}
}
if(_29&&_21){
var _2d=document.getElementById(_20);
var _2e=_2d.parentNode;
if(_29.parentNode!=_2e){
_29=_29.parentNode.removeChild(_29);
_2e.appendChild(_29);
}
var _2f=Math.min((_24*70),Math.floor(window.innerWidth-_29.offsetWidth)-1);
_29.style.top=_2d.offsetTop+"px";
_29.style.height=(window.innerHeight-_29.offsetTop)+"px";
if(this.mobileNavSideTogglingRoot){
if(ibmCfg.themeConfig.isRTL){
_29.style.right=(-_29.offsetWidth)+"px";
}else{
_29.style.left=(-_29.offsetWidth)+"px";
}
}else{
if(ibmCfg.themeConfig.isRTL){
_29.style.right=(_2f-_29.offsetWidth)+"px";
}else{
_29.style.left=(_2f-_29.offsetWidth)+"px";
}
}
i$.removeClass(_29,_1d);
this.animateMobileNavSidePanel(_29,_2f,function(){
if(wptheme.mobileNavSideTogglingRoot&&id+"Link"==wptheme.mobileNavSideLastExpanded[wptheme.mobileNavSideLastExpanded.length-1]){
wptheme.mobileNavSideTogglingRoot=false;
}
});
}
}else{
if(_21){
if(id==_20){
this.mobileNavSideTogglingRoot=true;
this.mobileNavSideLastExpanded=this.mobileNavSideExpanded.slice(0);
for(var i=this.mobileNavSideExpanded.length-1;i>=0;i--){
document.getElementById(this.mobileNavSideExpanded[i]).onclick.call();
}
}else{
var _30=id+"Link";
var i=-1;
for(var j=this.mobileNavSideExpanded.length-1;j>=0;j--){
if(this.mobileNavSideExpanded[j]==_30){
i=j;
break;
}
}
if(i!=-1){
var _31;
for(var j=this.mobileNavSideExpanded.length-1;j>=i;j--){
_31=this.mobileNavSideExpanded.pop();
if(_30!=_31){
document.getElementById(_31).onclick.call();
}
}
}
_27.parentNode.parentNode.parentNode.onclick=null;
}
}
if(_29&&_21){
var _2f=_29.offsetLeft;
if(ibmCfg.themeConfig.isRTL){
_2f=parseInt(_29.style.right);
}
this.animateMobileNavSidePanel(_29,_2f-_29.offsetWidth,function(){
i$.addClass(_29,_1d);
if(_29.parentNode!=_25){
_29=_29.parentNode.removeChild(_29);
_25.appendChild(_29);
}
});
}
if(id==_20&&_21){
_2b.style.position="static";
_2c.style.paddingTop="";
_2b.style.width="auto";
_2b.style.zIndex="auto";
this.animateMobileNavSidePanel(_25,-_25.offsetWidth,function(){
i$.addClass(_25,_1d);
_25.setAttribute("aria-expanded","false");
_27.setAttribute("aria-label",_1e);
_27.title=_28.innerHTML=_1e;
wptheme.mobileNavSideTogglingRoot=false;
});
i$.unbindDomEvt(this.mobileNavResizeBinding);
this.mobileNavResizeBinding=null;
}else{
i$.addClass(_25,_1d);
_25.setAttribute("aria-expanded","false");
_27.setAttribute("aria-label",_1e);
_27.title=_28.innerHTML=_1e;
}
}
}
},toggleMobileTopNav:function(_32,_33){
var _34=document.getElementById("wpthemeTopNavToggleBtn");
var _35=document.getElementById("wpthemeTopNavToggleBtnAccess");
var _36=document.getElementsByTagName("header")[0];
var _37=_36.children[0];
if(i$.hasClass(_34,"wpthemeTopNavOpened")){
_37.style.display="none";
i$.removeClass(_34,"wpthemeTopNavOpened");
_34.setAttribute("aria-label",_32);
_34.title=_35.innerHTML=_32;
}else{
_37.style.display="block";
i$.addClass(_34,"wpthemeTopNavOpened");
_34.setAttribute("aria-label",_33);
_34.title=_35.innerHTML=_33;
}
this.resizeMobileNavSide();
}});
})();

