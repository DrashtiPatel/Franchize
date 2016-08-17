<%--
    Document   : header2
    Created on : Mar 3, 2013, 1:25:23 AM
    Author     : Shreeji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<head>
     <!-- this script for slider-->

<script language="JavaScript1.1">

//Pixelating Image slideshow
//Copyright Dynamic Drive 2001
//Visit http://www.dynamicdrive.com for this script

//specify interval between slide (in mili seconds)
var slidespeed=8000
//specify images
var slideimages=new Array("images/mcd.jpg","images/havmor.jpg","images/subway.jpg")
//specify corresponding links
var slidelinks=new Array("","","")

var imageholder=new Array()
var ie55=window.createPopup
for (i=0;i<slideimages.length;i++){
imageholder[i]=new Image()
imageholder[i].src=slideimages[i]
}

function gotoshow(){
window.location=slidelinks[whichlink]
}

//-->
</script>
</head>
<div id="header2_bg">
    <form action="findfranchise.jsp" method="get" >
    <div id="header2">
    	<div id="header2_left">
            <ul id="menu2">
             <h2 style="color:#849d0e"><center>SEARCH FRANCHISE</center></h2><br/>
                <li><center><label>
                                          <select name="category" id="category">
                                                    <option selected="selected">--category--</option>
                                                    <option value="Hotels">Hotels</option>
                                                    <option value="Education & Training">Education &amp; Training</option>
                                                    <option value="Food & Beverages">Food &amp; Beverages</option>
                                                    <option value="Jewelery">Jewelery</option>
                                                    <option value="Entertainment">Entertainment</option>
                                                    <option value="Automobiles">Automobiles</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </label></center></li>
                <li><center><label>
                                                <select name="investment" id="investment">
                                                    <option selected="selected">--Investment--</option>
                                                    <option value = "10" >Below Rs. 2,00,000</option>
                                                    <option value = "3" >2,00,001 - 5,00,000</option>
                                                    <option value = "4" >5,00,001 - 10,00,000</option>
                                                    <option value = "5" >10,00,001 - 15,00,000</option>
                                                    <option value = "12" >15,00,001 - 20,00,000</option>
                                                    <option value = "6" >20,00,001 - 30,00,000</option>
                                                    <option value = "7" >30,00,001 - 50,00,000</option>
                                                    <option value = "8" >50,00,001 - 1 crore</option>
                                                    <option value = "9" >1 Crore and above</option>
                                                </select>
                                            </label></center></li>
                <li><center><label>
                                                <select name="location" id="location">
                                                    <option selected="selected">--Location--</option>
                                                    <option value="all">All</option>
                                                    <option value="ap">Andhra Pradesh</option>
                                                    <option value="ap1">Arunachal Pradesh</option>
                                                    <option value="assam">Assam</option>
                                                    <option value="bihar">Bihar</option>
                                                    <option value="chandigarh">Chandigarh</option>
                                                    <option value="chattisgarh ">Chattisgarh</option>
                                                    <option value="dd">Daman &amp; Diu</option>
                                                    <option value="goa">Goa</option>
                                                    <option value="gujarat">Gujarat</option>
                                                    <option value="haryana">Haryana</option>
                                                    <option value="hp">Himachal Pradesh</option>
                                                    <option value="jk">Jammu &amp; Kashmir</option>
                                                    <option value="jharkhand">Jharkhand</option>
                                                    <option value="karnataka">Karnataka</option>
                                                    <option value="kerala">Kerala</option>
                                                    <option value="lakshadweep">Lakshadweep</option>
                                                    <option value="mp">Madhya Pradesh</option>
                                                    <option value="maharashtra">Maharashtra</option>
                                                    <option value="manipur">Manipur</option>
                                                    <option value="meghalaya">Meghalaya</option>
                                                    <option value="mizoram">Mizoram</option>
                                                    <option value="nagaland">Nagaland</option>
                                                    <option value="nd">New Delhi</option>
                                                    <option value="odisha">Odisha</option>
                                                    <option value="pondicherry">Pondicherry</option>
                                                    <option value="punjab">Punjab</option>
                                                    <option value="rajasthan">Rajasthan</option>
                                                    <option value="sikkim">Sikkim</option>
                                                    <option value="tn">Tamil Nadu</option>
                                                    <option value="tripura">Tripura</option>
                                                    <option value="up">Uttar Pradesh</option>
                                                    <option value="uttarakhand">Uttarakhand</option>
                                                    <option value="wb">West Bengal</option>
                                                </select>
                                            </label></center></li><br/>
                <center><input type="submit" name="search" id="search" value="Search" /></center>

            </ul>
        </div>

        <div id="header2_right">
            <a href="javascript:gotoshow()"><img src="" name="slide" height="240" width="400" border=0 style="filter:progid:DXImageTransform.Microsoft.Pixelate(MaxSquare=15,Duration=1)"></a>

<script language="JavaScript1.1">
<!--
var whichlink=0
var whichimage=0
var pixeldelay=(ie55)? document.images.slide.filters[0].duration*1000 : 0
function slideit(){
if (!document.images) return
if (ie55) document.images.slide.filters[0].apply()
document.images.slide.src=imageholder[whichimage].src
if (ie55) document.images.slide.filters[0].play()
whichlink=whichimage
whichimage=(whichimage<slideimages.length-1)? whichimage+1 : 0
setTimeout("slideit()",slidespeed+pixeldelay)
}
slideit()

//-->
</script>
       
        </div>

    </div>
    </form>
    </div>
