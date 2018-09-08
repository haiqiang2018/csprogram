var mnmytaobao=document.getElementsByClassName('mn-mytaobao')[0];
var menumt=document.getElementsByClassName('mn-menu-mt');
var mtba=document.getElementsByClassName("mytaobao-a");
var mtbb=document.getElementsByClassName("mytaobao-b");
var mnmyfavorite=document.getElementsByClassName('mn-myfavorite')[0];
var mobileDiv=document.getElementsByClassName('mobile-img')[0];
var mnmobile=document.getElementsByClassName('mn-mobile')[0];
var mnSeller=document.getElementsByClassName('mn-seller')[0];
var sdDiv=document.getElementsByClassName('sd-div')[0];

menumt[0].style.width='95px';
menumt[1].style.width='80px';

mnmytaobao.onmouseover=function () {
        menumt[0].style.display='block';
        mtba[0].style.background='#FFFFFF';
        mtba[0].style.color="red";
        mtba[0].style.borderLeft='1px solid #e5e5e5';
        mtba[0].style.borderRight='1px solid #e5e5e5';
        mtbb[0].className="glyphicon glyphicon-chevron-up mytaobao-b";
};
mnmytaobao.onmouseout=function () {
        menumt[0].style.display = 'none';
        mtba[0].style.background='#F2F2F2';
        mtba[0].style.color='#999';
        mtba[0].style.border='';
        mtbb[0].className="glyphicon glyphicon-chevron-down mytaobao-b";

};
mnmyfavorite.onmouseover=function () {
        menumt[1].style.display='block';
        mtba[1].style.background='#FFFFFF';
        mtba[1].style.color="red";
        mtba[1].style.borderLeft='1px solid #e5e5e5';
        mtba[1].style.borderRight='1px solid #e5e5e5';
        mtbb[1].className="glyphicon glyphicon-chevron-up mytaobao-b";
};
mnmyfavorite.onmouseout=function () {
        menumt[1].style.display = 'none';
        mtba[1].style.background='#F2F2F2';
        mtba[1].style.color='#999';
        mtba[1].style.border='';
        mtbb[1].className="glyphicon glyphicon-chevron-down mytaobao-b";

};
mnmobile.onmouseover=function () {
    mobileDiv.style.display='block';
};
mnmobile.onmouseout=function () {
    mobileDiv.style.display='none';
};

mnSeller.onmouseover=function () {
    sdDiv.style.display='block';
    mtba[2].style.background='#FFFFFF';
    mtba[2].style.color="red";
    mtba[2].style.width-=2;
    mtba[2].style.borderLeft='1px solid #e5e5e5';
    mtba[2].style.borderRight='1px solid #e5e5e5';
    mtbb[2].className="glyphicon glyphicon-chevron-up mytaobao-b";

};
mnSeller.onmouseout=function () {
    sdDiv.style.display='none';
    mtba[2].style.background='#F2F2F2';
    mtba[2].style.color='#999';
    mtba[2].style.border='';
    mtbb[2].className="glyphicon glyphicon-chevron-down mytaobao-b";

};