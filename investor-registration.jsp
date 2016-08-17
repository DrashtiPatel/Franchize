

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Investor-Registration</title>
        <script src="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextField.js" type="text/javascript"></script>
        <script src="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextarea.js" type="text/javascript"></script>
        <script src="SpryAssets/SpryValidationConfirm.js" type="text/javascript"></script>
        <script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
        <script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
        <link href="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextField.css" rel="stylesheet" type="text/css">
        <link href="file:///C|/Documents and Settings/Owner/Application Data/Adobe/Dreamweaver CS6/en_US/Configuration/Temp/Assets/eam188.tmp/SpryValidationTextarea.css" rel="stylesheet" type="text/css">
        <link href="SpryAssets/SpryValidationConfirm.css" rel="stylesheet" type="text/css">
        <link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css">
        <link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
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


                            <form action="fsee_reg_action" name="fsee_reg" method="post">
                                <table width="810">
                                    <tr>
                                        <td width="243">*Email-Id:</td>
                                        <td width="555"><span id="sprytextfield1">
                                                <label>
                                                    <input type="text" name="email" id="email">
                                                </label>
                                            </span></td>
                                    </tr>
                                    <tr>
                                        <td>*Re-enter Email-Id:</td>
                                        <td><span id="spryconfirm1">
                                                <label>
                                                    <input type="text" name="confirm_email" id="confirm_email">
                                                </label>
                                                <span class="confirmRequiredMsg">A value is required.</span><span class="confirmInvalidMsg">The values don't match.</span></span></tr>
                                    <tr>
                                        <td>*Password:</td>
                                        <td>
                                            <label><span id="sprypassword1">
                                                    <input type="password" name="password1" id="password1">
                                                    <span class="passwordRequiredMsg">A value is required.</span></span>                            </label></td>
                                    </tr>
                                    <tr>
                                        <td>*Confirm Password:</td>
                                        <td><label for="confirm_pass"></label>
                                            <span id="spryconfirm2">
                                                <input type="password" name="confirm_pass" id="confirm_pass">
                                                <span class="confirmRequiredMsg">A value is required.</span><span class="confirmInvalidMsg">The values don't match.</span></span></tr>
                                    <tr>
                                        <td>*Choose Security question:</td>
                                        <td><label for="sec_que"></label>
                                            <select name="sec_que" id="sec_que">
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
                                    <h3>Your Contact and Personal Details</h3></div>

                                <table width="810">
                                    <tr>
                                        <td width="243">*Firstname:</td>
                                        <td width="555"><span id="sprytextfield2">
                                                <label>
                                                    <input type="text" name="firstname" id="firstname">
                                                </label>
                                            </span></td>
                                    </tr>
                                    <tr>
                                        <td>*Surname:</td>
                                        <td><span id="sprytextfield3">
                                                <label>
                                                    <input type="text" name="surname" id="surname">
                                                </label>
                                            </span></td>
                                    </tr>
                                    <tr>
                                        <td>*Address:</td>
                                        <td><span id="sprytextarea1">
                                                <label>
                                                    <textarea name="address" id="address" cols="30" rows="3"></textarea>
                                                </label>
                                            </span></td>
                                    </tr>

                                    <tr>
                                        <td>*State:</td>
                                        <td><label for="state"></label>
                                            <span id="spryselect1">
                                                <select name="state" id="state">
                                                    <option selected="selected">--select--</option>
                                                    <option value="an">Andaman &amp; Nicobar</option>
                                                    <option value="ap1">Andhra Pradesh</option>
                                                    <option value="ap">Arunachal Pradesh</option>
                                                    <option value="assam">Assam</option>
                                                    <option value="bihar">Bihar</option>
                                                    <option value="chandigarh">Chandigarh</option>
                                                    <option value="chhattisgarh">Chhattisgarh</option>
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
                                                    <option value="nd">New Delhi</option>
                                                    <option value="nagaland">Nagaland</option>
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
                                                <span class="selectRequiredMsg">Please select an item.</span></span></td>
                                    </tr>
                                    <tr>
                                        <td>*City:</td>
                                        <td><span id="sprytextfield5">
                                                <label>
                                                    <input type="text" name="city" id="city">
                                                    <span id="spryselect2"><span class="selectRequiredMsg">Please select an item.</span></span></label>
                                            </span></td>
                                    </tr>
                                    <tr>
                                        <td>*Country:</td>
                                        <td><span id="sprytextfield6">
                                                <label>
                                                    <input type="text" name="country" id="country">
                                                </label>
                                            </span></td>
                                    </tr>
                                    <tr>
                                        <td>*Pin Code</td>
                                        <td><span id="sprytextfield7">
                                                <label>
                                                    <input type="text" name="pincode" id="pincode">
                                                </label>
                                            </span></td>
                                    </tr>

                                    <tr>
                                        <td>*Mobile No:</td>
                                        <td><span id="sprytextfield8">
                                                <label>
                                                    <input type="text" name="mobileno" id="mobileno">
                                                </label>
                                            </span></td>
                                    </tr>
                                    <tr>
                                        <td>Phone No:</td>
                                        <td><label>
                                                <input type="text" name="phone" id="phone">
                                            </label></td>
                                    </tr>
                                    <tr>
                                        <td>Fax:</td>
                                        <td><label>
                                                <input type="text" name="fax" id="fax">
                                            </label></td>
                                    </tr>
                                    <tr>
                                        <td>*Occupation:</td>
                                        <td><span id="sprytextfield9">
                                                <label>
                                                    <input type="text" name="occupation" id="occupation">
                                                </label>
                                            </span></td>
                                    </tr>
                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Business Experience in Franchise</h3></div>

                                <table width="810">

                                    <tr>
                                        <td width="290">Business Industry Type:</td>
                                        <td width="508"><label for="industry_type"></label>
                                            <select name="industry" id="industry">
                                                <option selected="selected">--select--</option>
                                                <option value="hotels">Hotels</option>
                                                <option value="et">Education &amp; Training</option>
                                                <option value="fb">Food &amp; Beverages</option>
                                                <option value="jewellery">Jewellery</option>
                                                <option value="entertainment">Entertainment</option>
                                                <option value="automobiles">Automobiles</option>
                                                <option value="others">Others</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Business Experience:(mention months or years )</td>
                                        <td><label>
                                                <input type="text" name="exp" id="exp">
                                            </label></td>
                                    </tr>

                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Business Preference</h3></div>

                                <table width="810">
                                    <tr>
                                        <td width="243">Preferred Brand:</td>
                                        <td width="555"><select name="brand" id="brand" class = "istyle">
                                                <Option value = "" selected="selected">-- Select --</Option>
                                                <option value = "0" CHECKED>International Brand</option>
                                                <option value = "1" >Local Brand</option>
                                                <option value = "2" >Any Brand</option>

                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Preference 1:</td>
                                        <td><select name="pref1" id="pref1">
                                                <option selected="selected">--select--</option>
                                                <option value="hotels">Hotels</option>
                                                <option value="et">Education &amp; Training</option>
                                                <option value="fb">Food &amp; Beverages</option>
                                                <option value="jewellery">Jewelery</option>
                                                <option value="entertainment">Entertainment</option>
                                                <option value="automobiles">Automobiles</option>
                                                <option value="others">Others</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Preference 2:</td>
                                        <td><select name="pref2" id="pref2">
                                                <option selected="selected">--select--</option>
                                                <option value="hotels">Hotels</option>
                                                <option value="et">Education &amp; Training</option>
                                                <option value="fb">Food &amp; Beverages</option>
                                                <option value="jewellery">Jewelery</option>
                                                <option value="entertainment">Entertainment</option>
                                                <option value="automobiles">Automobiles</option>
                                                <option value="others">Others</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Preference 3:</td>
                                        <td><select name="pref3" id="pref3">
                                                <option selected="selected">--select--</option>
                                                <option value="hotels">Hotels</option>
                                                <option value="et">Education &amp; Training</option>
                                                <option value="fb">Food &amp; Beverages</option>
                                                <option value="jewellery">Jewelery</option>
                                                <option value="entertainment">Entertainment</option>
                                                <option value="automobiles">Automobiles</option>
                                                <option value="others">Others</option>
                                            </select></td>
                                    </tr>
                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Investment Details</h3></div>

                                <table width="810">
                                    <tr>
                                        <td width="243">Investment Capacity:</td>
                                        <td width="555"><select name="capacity" id="capacity">
                                                <Option value = "" selected="selected">-- Select --</Option>
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Earliest Investment possible in:</td>
                                        <td><select name="invest_time" id="invest_time" class = "istyle">
                                                <Option value = "" selected="selected">-- Select --</Option>
                                                <option value = "8" >Immediate</option>
                                                <option value = "4" >1-3 months</option>
                                                <option value = "5" >3-6 months</option>
                                                <option value = "6" >6-12 months</option>
                                                <option value = "7" >More than 1 year</option>

                                            </select></td>
                                    </tr>
                                </table>
                                <br />
                                <div id="cont_top">
                                    <h3>Your Property Information</h3></div>

                                <table width="810">
                                    <tr>
                                        <td width="243" height="25">Property Address:</td>
                                        <td width="555"><label for="property_add"></label>
                                            <textarea name="property_add" id="property_add" cols="45" rows="5"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>Total Floor Area:(in sq. ft.)</td>
                                        <td><label>
                                                <input type="text" name="area" id="area">
                                            </label></td>
                                    </tr>
                                    <tr>
                                        <td>Best Usage:</td>
                                        <td><select name="usage" id="usage" class = "istyle">
                                                <Option value = "" selected="selected">-- Select --</Option>
                                                <option value = "5" >Office</option>
                                                <option value = "6" >Show Room</option>
                                                <option value = "7" >Shop</option>
                                                <option value = "8" >Other</option></select></td>
                                    </tr>
                                    <br />
                                    <tr>
                                        <td colspan="2" align="center"><input type="submit" name="finish" id="finish" value="finish"></td>

                                    </tr>
                                </table>
                                <p>&nbsp;</p>


                            </form>

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
            var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "email", {validateOn:["blur"]});
            var spryconfirm1 = new Spry.Widget.ValidationConfirm("spryconfirm1", "email", {validateOn:["blur"]});
            var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1", {validateOn:["blur"]});
            var spryconfirm2 = new Spry.Widget.ValidationConfirm("spryconfirm2", "password1");
            var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
            var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
            var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {validateOn:["blur"]});
            var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {validateOn:["blur"]});
            var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
            var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none", {validateOn:["blur"]});
            var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "none", {validateOn:["blur"]});
            var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7", "integer", {validateOn:["blur"]});
            var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8", "phone_number", {validateOn:["blur"], format:"phone_custom"});
            var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9", "none", {validateOn:["blur"]});
            var sprypassword2 = new Spry.Widget.ValidationPassword("sprypassword2", {validateOn:["blur"]});
        </script>
    </body>
</html>
