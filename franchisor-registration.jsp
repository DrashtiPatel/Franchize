<%--
    Document   : feedback
    Created on : Mar 14, 2013, 2:38:27 PM
    Author     : Shreeji
--%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script language="javascript" type="text/javascript">
            function enableAllCheckBoxes()
            {
                if(document.getElementById("checkAllAuto").checked == true)
                {
                    
                    document.getElementById("west").checked = true;
                    document.getElementById("west_1").checked =true ;
                    document.getElementById("west_2").checked =true ;
                    document.getElementById("west_3").checked =true ;
                    document.getElementById("west_4").checked =true ;

                    document.getElementById("south").checked =true ;
                    document.getElementById("south_1").checked =true ;
                    document.getElementById("south_2").checked =true ;
                    document.getElementById("south_3").checked =true ;
                    document.getElementById("south_4").checked =true ;

                    document.getElementById("east").checked =true ;
                    document.getElementById("east_1").checked =true ;
                    document.getElementById("east_2").checked =true ;
                    document.getElementById("east_3").checked =true ;
                    document.getElementById("east_4").checked =true ;
                    document.getElementById("east_5").checked =true ;
                    document.getElementById("east_6").checked =true ;
                    document.getElementById("east_7").checked =true ;
                    document.getElementById("east_8").checked =true ;
                    document.getElementById("east_9").checked =true ;
                    document.getElementById("east_10").checked =true ;

                            
                    document.getElementById("north").checked =true ;
                    document.getElementById("north_1").checked =true ;
                    document.getElementById("north_2").checked =true ;
                    document.getElementById("north_3").checked =true ;
                    document.getElementById("north_4").checked =true ;
                    document.getElementById("north_5").checked =true ;
                    document.getElementById("north_6").checked =true ;
                    document.getElementById("north_7").checked =true ;
                           

                    document.getElementById("central").checked =true ;
                    document.getElementById("central_1").checked =true ;
                    document.getElementById("central_2").checked =true ;
                    document.getElementById("central_3").checked =true ;
                    document.getElementById("central_4").checked =true ;
                            
                    document.getElementById("ut").checked =true ;
                    document.getElementById("ut_1").checked =true ;
                    document.getElementById("ut_2").checked =true ;
                    document.getElementById("ut_3").checked =true ;
                    document.getElementById("ut_4").checked =true ;
                    document.getElementById("ut_5").checked =true ;




                }
                else if(document.getElementById("checkAllAuto").checked == false)
                {
                    document.getElementById("west").checked = false;
                    document.getElementById("west_1").checked = false;
                    document.getElementById("west_2").checked = false;
                    document.getElementById("west_3").checked = false;
                    document.getElementById("west_4").checked = false;

                    document.getElementById("south").checked = false;
                    document.getElementById("south_1").checked = false;
                    document.getElementById("south_2").checked = false;
                    document.getElementById("south_3").checked = false;
                    document.getElementById("south_4").checked = false;

                    document.getElementById("east").checked = false;
                    document.getElementById("east_1").checked = false;
                    document.getElementById("east_2").checked = false;
                    document.getElementById("east_3").checked = false;
                    document.getElementById("east_4").checked = false;
                    document.getElementById("east_5").checked = false;
                    document.getElementById("east_6").checked = false;
                    document.getElementById("east_7").checked = false;
                    document.getElementById("east_8").checked = false;
                    document.getElementById("east_9").checked = false;
                    document.getElementById("east_10").checked = false;

                    document.getElementById("north").checked = false;
                    document.getElementById("north_1").checked = false;
                    document.getElementById("north_2").checked = false;
                    document.getElementById("north_3").checked = false;
                    document.getElementById("north_4").checked = false;
                    document.getElementById("north_5").checked = false;
                    document.getElementById("north_6").checked = false;
                    document.getElementById("north_7").checked = false;

                    document.getElementById("central").checked = false;
                    document.getElementById("central_1").checked = false;
                    document.getElementById("central_2").checked = false;
                    document.getElementById("central_3").checked = false;
                    document.getElementById("central_4").checked = false;

                    document.getElementById("ut").checked = false;
                    document.getElementById("ut_1").checked = false;
                    document.getElementById("ut_2").checked = false;
                    document.getElementById("ut_3").checked = false;
                    document.getElementById("ut_4").checked = false;
                    document.getElementById("ut_5").checked = false;




                }
            }
            function enableAllWest()
            {
                   
                if(document.getElementById("west").checked == true)
                {
                    document.getElementById("west_1").checked =true ;
                    document.getElementById("west_2").checked =true ;
                    document.getElementById("west_3").checked =true ;
                    document.getElementById("west_4").checked =true ;

                    if(document.getElementById("west").checked == true && document.getElementById("south").checked == true && document.getElementById("east").checked == true && document.getElementById("north").checked == true && document.getElementById("central").checked == true && document.getElementById("ut").checked == true)
                    {
                        document.getElementById("checkAllAuto").checked = true;
                    }
                }
                else if(document.getElementById("west").checked == false)
                {
                    document.getElementById("west_1").checked = false;
                    document.getElementById("west_2").checked = false;
                    document.getElementById("west_3").checked = false;
                    document.getElementById("west_4").checked = false;
                    document.getElementById("checkAllAuto").checked = false;
                }
            }

            function enableAllSouth()
            {

                if(document.getElementById("south").checked == true)
                {
                    document.getElementById("south_1").checked =true ;
                    document.getElementById("south_2").checked =true ;
                    document.getElementById("south_3").checked =true ;
                    document.getElementById("south_4").checked =true ;

                    if(document.getElementById("west").checked == true && document.getElementById("south").checked == true && document.getElementById("east").checked == true && document.getElementById("north").checked == true && document.getElementById("central").checked == true && document.getElementById("ut").checked == true)
                    {
                        document.getElementById("checkAllAuto").checked = true;
                    }
                }
                else if(document.getElementById("south").checked == false)
                {
                    document.getElementById("south_1").checked = false;
                    document.getElementById("south_2").checked = false;
                    document.getElementById("south_3").checked = false;
                    document.getElementById("south_4").checked = false;
                    document.getElementById("checkAllAuto").checked = false;
                }
            }

            function enableAllEast()
            {

                if(document.getElementById("east").checked == true)
                {
                    document.getElementById("east_1").checked =true ;
                    document.getElementById("east_2").checked =true ;
                    document.getElementById("east_3").checked =true ;
                    document.getElementById("east_4").checked =true ;
                    document.getElementById("east_5").checked =true ;
                    document.getElementById("east_6").checked =true ;
                    document.getElementById("east_7").checked =true ;
                    document.getElementById("east_8").checked =true ;
                    document.getElementById("east_9").checked =true ;
                    document.getElementById("east_10").checked =true ;

                    if(document.getElementById("west").checked == true && document.getElementById("south").checked == true && document.getElementById("east").checked == true && document.getElementById("north").checked == true && document.getElementById("central").checked == true && document.getElementById("ut").checked == true)
                    {
                        document.getElementById("checkAllAuto").checked = true;
                    }

                }
                else if(document.getElementById("east").checked == false)
                {
                    document.getElementById("east_1").checked = false;
                    document.getElementById("east_2").checked = false;
                    document.getElementById("east_3").checked = false;
                    document.getElementById("east_4").checked = false;
                    document.getElementById("east_5").checked = false;
                    document.getElementById("east_6").checked = false;
                    document.getElementById("east_7").checked = false;
                    document.getElementById("east_8").checked = false;
                    document.getElementById("east_9").checked = false;
                    document.getElementById("east_10").checked = false;
                    document.getElementById("checkAllAuto").checked = false;

                }
            }

            function enableAllNorth()
            {

                if(document.getElementById("north").checked == true)
                {
                    document.getElementById("north_1").checked =true ;
                    document.getElementById("north_2").checked =true ;
                    document.getElementById("north_3").checked =true ;
                    document.getElementById("north_4").checked =true ;
                    document.getElementById("north_5").checked =true ;
                    document.getElementById("north_6").checked =true ;
                    document.getElementById("north_7").checked =true ;

                    if(document.getElementById("west").checked == true && document.getElementById("south").checked == true && document.getElementById("east").checked == true && document.getElementById("north").checked == true && document.getElementById("central").checked == true && document.getElementById("ut").checked == true)
                    {
                        document.getElementById("checkAllAuto").checked = true;
                    }
                }
                else if(document.getElementById("north").checked == false)
                {
                    document.getElementById("north_1").checked = false;
                    document.getElementById("north_2").checked = false;
                    document.getElementById("north_3").checked = false;
                    document.getElementById("north_4").checked = false;
                    document.getElementById("north_5").checked = false;
                    document.getElementById("north_6").checked = false;
                    document.getElementById("north_7").checked = false;
                    document.getElementById("checkAllAuto").checked = false;
                }
            }

            function enableAllCentral()
            {

                if(document.getElementById("central").checked == true)
                {
                    document.getElementById("central_1").checked =true ;
                    document.getElementById("central_2").checked =true ;
                    document.getElementById("central_3").checked =true ;
                    document.getElementById("central_4").checked =true ;

                    if(document.getElementById("west").checked == true && document.getElementById("south").checked == true && document.getElementById("east").checked == true && document.getElementById("north").checked == true && document.getElementById("central").checked == true && document.getElementById("ut").checked == true)
                    {
                        document.getElementById("checkAllAuto").checked = true;
                    }
                }
                else if(document.getElementById("central").checked == false)
                {
                    document.getElementById("central_1").checked = false;
                    document.getElementById("central_2").checked = false;
                    document.getElementById("central_3").checked = false;
                    document.getElementById("central_4").checked = false;
                    document.getElementById("checkAllAuto").checked = false;
                }
            }

            function enableAllUt()
            {

                if(document.getElementById("ut").checked == true)
                {
                    document.getElementById("ut_1").checked =true ;
                    document.getElementById("ut_2").checked =true ;
                    document.getElementById("ut_3").checked =true ;
                    document.getElementById("ut_4").checked =true ;
                    document.getElementById("ut_5").checked =true ;

                    if(document.getElementById("west").checked == true && document.getElementById("south").checked == true && document.getElementById("east").checked == true && document.getElementById("north").checked == true && document.getElementById("central").checked == true && document.getElementById("ut").checked == true)
                    {
                        document.getElementById("checkAllAuto").checked = true;
                    }
                }
                else if(document.getElementById("ut").checked == false)
                {
                    document.getElementById("ut_1").checked = false;
                    document.getElementById("ut_2").checked = false;
                    document.getElementById("ut_3").checked = false;
                    document.getElementById("ut_4").checked = false;
                    document.getElementById("ut_5").checked = false;
                    document.getElementById("checkAllAuto").checked = false;
                }
            }




        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Franchisor-Registration</title>
        <script src="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextField.js" type="text/javascript"></script>
        <script src="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextarea.js" type="text/javascript"></script>
        <link href="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextField.css" rel="stylesheet" type="text/css">
        <link href="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextarea.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">


            function hideshow(){



                if ( document.getElementById("t_provided_0").checked)
                {
                    document.getElementById("t_venue_0").disabled=false;
                    document.getElementById("t_venue_1").disabled=false;

                }
                if ( document.getElementById("t_provided_1").checked)
                {
                       document.getElementById("t_venue_0").disabled=true;
                    document.getElementById("t_venue_1").disabled=true;


                }

            }
        </script>

        
    </head>
    <body>
       
        <%@include file="header.jsp" %>
    <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">

                    <div id="content"><div id="cont_top">
                            <h3>Your Login Details</h3></div>

                        <div class="text">


                            <html:form action="/fileuploadaction" method="post" enctype="multipart/form-data">
                                <table width="810">
                                    <tr>
                                        <td width="243">*Email-Id:</td>
                                        <td width="555">
                                            <label>
                                                <input type="text" name="email" id="email">
                                            </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>*Re-enter Email-Id:</td>
                                        <td>
                                            <label>
                                                <input type="text" name="confirm_email" id="confirm_email">
                                            </label>

                                    </tr>
                                    <tr>
                                        <td>*Password:</td>
                                        <td>
                                            <label>
                                                <input type="password" name="password" id="password">
                                            </label></td>
                                    </tr>
                                    <tr>
                                        <td>*Confirm Password:</td>
                                        <td><label for="confirm_pass"></label>
                                            <input type="password" name="confirm_pass" id="confirm_pass">
                                    </tr>

                                    <tr>
                          <td>*Choose Security question:</td>
                          <td><label for="sec_que"></label><select name="sec_que" id="sec_que">
                                  <option selected="selected">---select---</option>
                                                        <option>What is your Mobile number?</option>
                                                        <option>What is your nick name?</option>
                                                        <option>Which is your favourite game?</option>
                                                        <option>Your favourite food?</option>

                              </select>
                              </td>
                        </tr>
                        <tr>
                          <td>*Security Answer:</td>
                          <td><label for="sec_ans"></label>
                            <span id="sprypassword2">
                            <input type="password" name="sec_ans" id="sec_ans">
                          <span class="passwordRequiredMsg">A value is required.</span></span></tr>

                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Requirement Details</h3></div>

                                <table width="810">
                                    <tr>
                                        <td width="242" height="22">*Minimum Area Required:(in sq. ft.)</td>
                                        <td width="556"><label for="areareq"></label>
                                            <input type="text" name="area" id="area"></td>
                                    </tr>
                                    <tr>
                                        <td height="22">*Budget Required:(in Rs.)</td>
                                        <td><label for="budgetreq"></label>
                                            <input type="text" name="budget" id="budget"></td>
                                    </tr>
                                    <tr>
                                        <td height="22">*Where are you looking for expansion?</td>
                                        <td><p>
                                                <label>
                                                    <input type="checkbox" name="cb"  value="Across India" id="checkAllAuto" onChange="enableAllCheckBoxes();">
                                                    Across India
                                                </label>
                                                <br>
                                                <br>
                                            </p></td>
                                    </tr>
                                </table>
                                <table width="810">
                                    <tr>
                                        <td width="149" valign="top"><p>
                                                <label>
                                                    <input type="checkbox" name="cb" value="west" id="west" onchange="enableAllWest();">
                                                    <strong>West</strong></label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="goa" id="west_1">
                                                    Goa</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="gujarat" id="west_2">
                                                    Gujarat</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="maharashtra" id="west_3">
                                                    Maharashtra</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="rajasthan" id="west_4">
                                                    Rajasthan</label>
                                            </p>
                                            <p>&nbsp;</p>
                                            <p>
                                                <label>
                                                    <input type="checkbox" name="cb" value="south" id="south" onchange="enableAllSouth();">
                                                    <strong> South</strong></label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="andhra pradesh" id="south_1">
                                                    Andhra Pradesh</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="karnataka" id="south_2">
                                                    Karnataka</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="kerala" id="south_3">
                                                    Kerala</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="tamilnadu" id="south_4">
                                                    Tamil Nadu</label>
                                                <br>
                                            </p></td>
                                        <td width="157" valign="top"><p>
                                                <label>
                                                    <input type="checkbox" name="cb" value="east" id="east" onchange="enableAllEast();">
                                                    <strong>East</strong></label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="arunachal pradesh" id="east_1">
                                                    Arunachal Pradesh</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="assam" id="east_2">
                                                    Assam</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="manipur" id="east_3">
                                                    Manipur</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="meghalaya" id="east_4">
                                                    Meghalaya</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="mizoram" id="east_5">
                                                    Mizoram</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="nagaland" id="east_6">
                                                    Nagaland</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="odisha" id="east_7">
                                                    Odisha</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="sikkim" id="east_8">
                                                    Sikkim</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="tripura" id="east_9">
                                                    Tripura</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="west bengal" id="east_10">
                                                    West Bengal</label>
                                                <br>
                                                <br>
                                            </p></td>
                                        <td width="173" valign="top"><label>
                                                <input type="checkbox" name="cb" value="north" id="north" onchange="enableAllNorth();">
                                                <strong> North</strong></label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="haryana" id="north_1">
                                                Haryana</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="himachal pradesh" id="north_2">
                                                Himachal Pradesh</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="jammu & kashmir" id="north_3">
                                                Jammu & Kashmir</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="new delhi" id="north_4">
                                                New Delhi</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="punjab" id="north_5">
                                                Punjab</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="uttar pradesh" id="north_6">
                                                Uttar Pradesh</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="cb" value="uttarakhand" id="north_7">
                                                Uttarakhand</label></td>


                                        <td width="311" valign="top"><p>
                                                <label>
                                                    <input type="checkbox" name="cb" value="central" id="central" onchange="enableAllCentral();">
                                                    <strong>Central</strong></label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="bihar" id="central_1">
                                                    Bihar</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="chhattisgarh" id="central_2">
                                                    Chhattisgarh</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="jharkhand" id="central_3">
                                                    Jharkhand</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="madhya pradesh" id="central_4">
                                                    Madhya Pradesh</label>
                                            </p>
                                            <p>&nbsp;</p>
                                            <p>
                                                <label>
                                                    <input type="checkbox" name="cb" value="ut" id="ut" onchange="enableAllUt();">
                                                    <strong>Union Territories</strong></label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="andaman & nicobar" id="ut_1">
                                                    Andaman & Nicobar</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="chandigarh" id="ut_2">
                                                    Chandigarh</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="daman & diu" id="ut_3">
                                                    Daman & Diu</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="lakshadweep" id="ut_4">
                                                    Lakshadweep</label>
                                                <br>
                                                <label>
                                                    <input type="checkbox" name="cb" value="pondicherry" id="ut_5">
                                                    Pondicherry</label>
                                                <br>
                                            </p></td>
                                    </tr>
                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Business Details</h3></div>

                                <table width="810">
                                    <tr>
                                        <td width="242">*Company Name:</td>
                                        <td width="556"><label for="comp_name"></label>
                                            <input type="text" name="c_name" id="c_name"></td>
                                    </tr>
                                    <tr>
                                        <td>*Company Address:</td>
                                        <td><label for="comp_add"></label>
                                            <textarea name="c_address" id="c_address" cols="30" rows="3"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>*State:</td>
                                        <td><label for="state"></label>
                                            <select id="state" name="state">
                                                <option selected="selected">--select--</option>

                                                <option value="andaman">Andaman &amp; Nicobar</option>
                                                <option value="andhra">Andhra Pradesh</option>
                                                <option value="arunachal">Arunachal Pradesh</option>
                                                <option value="assam">Assam</option>
                                                <option value="bihar">Bihar</option>
                                                <option value="chandigarh">Chandigarh</option>
                                                <option value="chhattisgarh">Chhattisgarh</option>
                                                <option value="diu">Daman &amp; Diu</option>
                                                <option value="goa">Goa</option>
                                                <option value="gujarat">Gujarat</option>
                                                <option value="haryana">Haryana</option>
                                                <option value="himachal">Himachal Pradesh</option>
                                                <option value="jammu">Jammu &amp; Kashmir</option>
                                                <option value="jharkhand">Jharkhand</option>
                                                <option value="karnataka">Karnataka</option>
                                                <option value="kerala">Kerala</option>
                                                <option value="lakshadweep">Lakshadweep</option>
                                                <option value="madhya">Madhya Pradesh</option>
                                                <option value="maharashtra">Maharashtra</option>
                                                <option value="manipur">Manipur</option>
                                                <option value="meghalaya">Meghalaya</option>
                                                <option value="mizoram">Mizoram</option>
                                                <option value="delhi">New Delhi</option>
                                                <option value="nagaland">Nagaland</option>
                                                <option value="odisha">Odisha</option>
                                                <option value="pondicherry">Pondicherry</option>
                                                <option value="punjab">Punjab</option>
                                                <option value="rajasthan">Rajasthan</option>
                                                <option value="sikkim">Sikkim</option>
                                                <option value="tamil">Tamil Nadu</option>
                                                <option value="tripura">Tripura</option>
                                                <option value="uttar">Uttar Pradesh</option>
                                                <option value="uttarakhand">Uttarakhand</option>
                                                <option value="wb">West Bengal</option>
                                            </select>


                                        </td>
                                    </tr>

                                    <tr>
                                        <td>*City:</td>
                                        <td><label for="city"></label>
                                            <input type="text" name="city" id="city">
                                            </td>
                                    </tr>
                                    <tr>
                                       <td><p>*Country:</p>
                                        <td><label for="country"></label>
                                            <input type="text" name="country" id="country"></td>
                                    </tr>

                                    <tr>
                                        <td>*Pin code:</td>
                                        <td><label for="pincode"></label>
                                            <span id="sprytextfield2"><span id="sprytextfield1">
                                                    <input type="text" name="pincode" id="pincode">
                                                <span class="textfieldInvalidFormatMsg">Invalid format.</span></span></span></td>
                                    </tr>
                                    <tr>
                                        <td>*Mobile No:</td>
                                        <td><label for="mobno"></label>
                                          <span id="sprytextfield4">
                                          <input type="text" name="mob" id="mob">
                                        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
                                    </tr>
                                    <tr>
                                        <td><p>Phone No:(with city code)</p>
                                            <p>Ex:079-xxxxxxxx</p></td>
                                        <td><label for="phoneno"></label>
                                            <input type="text" name="phone" id="phone"></td>
                                    </tr>
                                    <tr>
                                        <td>Fax:</td>
                                        <td><label for="fax"></label>
                                            <input type="text" name="fax" id="fax"></td>
                                    </tr>
                                    <tr>
                                        <td>Website:</td>
                                        <td><label for="website"></label>
                                            <input type="text" name="website" id="website"></td>
                                    </tr>
                                    <tr>
                                        <td>Secondary Email:</td>
                                        <td><label for="sec_email"></label>
                                            <input type="text" name="sec_email" id="sec_email"></td>
                                    </tr>
                                    <tr>
                                        <td>*Industry Type:</td>
                                        <td><label for="industry_type"></label>
                                            <select name="industry" id="industry">
                                                <option selected="selected">--select--</option>
                                                <option value="Hotels">Hotels</option>
                                                <option value="Education & Training">Education &amp; Training</option>
                                                <option value="Food & Beverages">Food &amp; Beverages</option>
                                                <option value="Jewelery">Jewelery</option>
                                                <option value="Entertainment">Entertainment</option>
                                                <option value="Automobiles">Automobiles</option>
                                                <option value="Others">Others</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>*Total Outlets:</td>
                                        <td><label for="total_outlets"></label>
                                            <input type="text" name="total_outlets" id="total_outlets"></td>
                                    </tr>
                                    <tr>
                                        <td>*Company owned Outlets:</td>
                                        <td><label for="comp_outlets"></label>
                                            <input type="text" name="comp_outlets" id="comp_outlets"></td>
                                    </tr>
                                    <tr>
                                        <td>*Franchisee owned Outlets:</td>
                                        <td><label for="franchisee_outlets"></label>
                                            <input type="text" name="fsee_outlets" id="fsee_outlets"></td>
                                    </tr>
                                    <tr>
                                        <td>CEO Name:</td>
                                        <td><label for="ceo_name"></label>
                                            <input type="text" name="ceo_name" id="ceo_name"></td>
                                    </tr>
                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Training Details</h3></div>
                                <table width="810">
                                    <tr>
                                        <td width="242">Training Provided?</td>
                                        <td width="556"><p>
                                                <label>
                                                   <input type="radio" name="t_provided" value="yes" id="t_provided_0" checked onchange="hideshow()">
                                                    Yes   </label>
                                                <label>
                                                    <input type="radio" name="t_provided" value="no" id="t_provided_1" onchange="hideshow()" >
                                                    No</label>
                                            </p></td>
                                    </tr>
                                    <tr>
                                        <td>Training Venue:</td>
                                        <td><p>
                                                <label>
                                                    <input type="radio" name="t_venue" value="Head Office" id="t_venue_0" checked>
                                                    Head Office</label>
                                                <label>
                                                   <input type="radio" name="t_venue" value="Franchise Site" id="t_venue_1">
                                                    Franchise Site</label>
                                            </p></td>
                                    </tr>
                                    <tr>
                                        <td height="25">Company Logo:</td>
                                        <td>
                                            <br />
                                            <html:file property="file" size="10" />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="55">Write about Company:</td>
                                        <td><label>
                                                <textarea name="comp_details" id="comp_details" cols="45" rows="3"></textarea>
                                            </label></td>
                                    </tr>
                                    <tr>
                                        <td height="55" colspan="2" align="center"><html:submit value="Submit"></html:submit></td>
                                    </tr>
                                </table>
                                <p>&nbsp;</p>
                            </html:form>
                        </div>
                    </div>
                    <div id="cont_bot"></div>
                </div>
                <%@include file="loginpanel.jsp" %>
                <div style="clear:both"></div>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- end of footer -->

        <script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "integer", {validateOn:["blur"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none");
        </script>
    </body>
</html>
