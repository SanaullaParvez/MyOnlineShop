<%-- 
    Document   : payment
    Created on : Mar 23, 2012, 2:58:17 PM
    Author     : Abdulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .top_name{
                font-family:"Times New Roman", Times, serif;
                width:600px;
                height:460px;
                overflow:scroll;
                border:1px solid red;
                padding:20px;
            }
            .input_area {
                overflow:hidden;
                width:600px;
                margin:5px;
                font-size:14px;        
            }
            .input_area h2{
                font-size:20px;
                line-height:20px;	
            }
            .input_area input {
                color:#666;
            }
            .input_area div{
                padding: 5px;
            }
            .input_title {
                font-size:14px;
                float:left;
                width:150px;
            }
            .submit {
                margin-left:105px;
            }

            a.dp-choose-date {
                float: left;
                width: 16px;
                height: 16px;
                padding: 0;
                margin: 5px 3px 0;
                display: block;
                text-indent: -2000px;
                overflow: hidden;
                background: url(Resources/calendar.png) no-repeat; 
            }
            a.dp-choose-date.dp-disabled {
                background-position: 0 -20px;
                cursor: default;
            }
            /* makes the input field shorter once the date picker code
             * has run (to allow space for the calendar icon
            */
            input.dp-applied {
                width: 140px;
                float: left;
            }		


        </style>
        <title>Payment Page</title>
        <!-- firebug lite -->
        <SCRIPT type="text/javascript" src="Resources/calendar/firebug.js"></SCRIPT>
        <!-- jQuery -->
        <SCRIPT type="text/javascript" src="Resources/calendar/jquery.min.js"></SCRIPT>
        <!-- required plugins -->
        <SCRIPT type="text/javascript" src="Resources/calendar/date.js"></SCRIPT>
        <!--[if lt IE 7]><script type="text/javascript" src="scripts/jquery.bgiframe.min.js"></script><![endif]-->
        <!-- jquery.datePicker.js -->
        <SCRIPT type="text/javascript" src="Resources/calendar/jquery.datePicker.js"></SCRIPT>
        <!-- datePicker required styles -->
        <LINK rel="stylesheet" type="text/css" media="screen" href="Resources/calendar/datePicker.css">
        <!-- page specific scripts -->
        <SCRIPT type="text/javascript" charset="utf-8">
            $(function()
            {
                $('.date-pick').datePicker({autoFocusNextInput: true});
            });
        </SCRIPT>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div class="top_name">     

            <div class="input_area">
                <div>
                    <div align="left"><font size="+1" color="#FF9900">Enter the shipping address for this order</font><br />Please enter a shipping address for this order. Please also indicate whether your billing address is the same as the shipping address entered.&nbsp;When finished, click the "Continue" button.&nbsp;&nbsp;Or, if you're sending items to more than one address, click the "Add another address" button to enter additional addresses.
                    </div>
                </div>
                <div>
                    <div align="left"><font size="+1" color="#FF9900">Enter a new shipping address.</font><br />When finished, click the "Continue" button.
                    </div>
                </div>
                <div align="left"><br />
                </div>
                <form name="login" action="PayControll" method="post">  
                    <div class="input_title">
                        <div align="left">Full name:
                        </div>
                    </div>
                    <div>
                        <div align="left">
                            <input name="Full name" type="text" value="${user.name}"/>
                        </div>
                    </div>
                    <div class="input_title">
                        <div align="left">Address:
                        </div>
                    </div>
                    <div>
                        <div align="left">
                            <input name="Address" type="text" />
                        </div>
                    </div>
                    <div class="input_title">
                        <div align="left">City:
                        </div>
                    </div>
                    <div>
                        <div align="left">
                            <input name="City" type="text" />
                        </div>
                    </div>
                    <div class="input_title">
                        <div align="left">State/Province/Region:
                        </div>
                    </div>
                    <div>
                        <div align="left">
                            <input name="State/Province/Region" type="text" />
                        </div>
                    </div>
                    <div class="input_title">
                        <div align="left">Zip:
                        </div>
                    </div>
                    <div>
                        <div align="left">
                            <input name="Zip" type="text" />
                        </div>
                    </div>
                    <div class="input_title">
                        <div align="left">Country:
                        </div>
                    </div>            
                    <div>
                        <div align="left">
                            <select name="Country">
                                <option >--</option>
                                <option >Afghanistan</option>
                                <option >Aland Islands</option>
                                <option >Albania</option>
                                <option >Algeria</option>
                                <option >American Samoa</option>
                                <option >Andorra</option>
                                <option >Angola</option>
                                <option >Anguilla</option>
                                <option v>Antarctica</option>
                                <option >Antigua and Barbuda</option>
                                <option >Argentina</option>
                                <option >Armenia</option>
                                <option >Aruba</option>
                                <option >Australia</option>
                                <option >Austria</option>
                                <option >Azerbaijan</option>
                                <option >Bahamas, The</option>
                                <option >Bahrain</option>
                                <option selected="selected">Bangladesh</option>
                                <option >Barbados</option>
                                <option >Belarus</option>
                                <option >Belgium</option>
                                <option >Belize</option>
                                <option >Benin</option>
                                <option >Bermuda</option>
                                <option >Bhutan</option>
                                <option >Bolivia</option>
                                <option >Bonaire</option>
                                <option >Bosnia and Herzegovina</option>
                                <option >Botswana</option>
                                <option >Bouvet Island</option>
                                <option >Brazil</option>
                                <option >British Indian Ocean Territory</option>
                                <option >Brunei Darussalam</option>
                                <option >Bulgaria</option>
                                <option >Burkina Faso</option>
                                <option >Burundi</option>
                                <option >Cambodia</option>
                                <option >Cameroon</option>
                                <option >Canada</option>
                                <option >Cape Verde</option>
                                <option >Cayman Islands</option>
                                <option >Central African Republic</option>
                                <option >Chad</option>
                                <option >Chile</option>
                                <option >China</option>
                                <option >Christmas Island</option>
                                <option >Cocos (Keeling) Islands</option>
                                <option >Colombia</option>
                                <option >Comoros</option>
                                <option >Congo</option>
                                <option >Congo</option>
                                <option value="CK">Cook Islands</option>
                                <option value="CR">Costa Rica</option>
                                <option value="CI">Cote D'ivoire</option>
                                <option value="HR">Croatia</option>
                                <option value="CW">Curaçao</option>
                                <option value="CY">Cyprus</option>
                                <option value="CZ">Czech Republic</option>
                                <option value="DK">Denmark</option>
                                <option value="DJ">Djibouti</option>
                                <option value="DM">Dominica</option>
                                <option value="DO">Dominican Republic</option>
                                <option value="EC">Ecuador</option>
                                <option value="EG">Egypt</option>
                                <option value="SV">El Salvador</option>
                                <option value="GQ">Equatorial Guinea</option>
                                <option value="ER">Eritrea</option>
                                <option value="EE">Estonia</option>
                                <option value="ET">Ethiopia</option>
                                <option value="FK">Falkland Islands (Malvinas)</option>
                                <option value="FO">Faroe Islands</option>
                                <option value="FJ">Fiji</option>
                                <option value="FI">Finland</option>
                                <option value="FR">France</option>
                                <option value="GF">French Guiana</option>
                                <option value="PF">French Polynesia</option>
                                <option value="TF">French Southern Territories</option>
                                <option value="GA">Gabon</option>
                                <option value="GM">Gambia, The</option>
                                <option value="GE">Georgia</option>
                                <option value="DE">Germany</option>
                                <option value="GH">Ghana</option>
                                <option value="GI">Gibraltar</option>
                                <option value="GR">Greece</option>
                                <option value="GL">Greenland</option>
                                <option value="GD">Grenada</option>
                                <option value="GP">Guadeloupe</option>
                                <option value="GU">Guam</option>
                                <option value="GT">Guatemala</option>
                                <option value="GG">Guernsey</option>
                                <option value="GN">Guinea</option>
                                <option value="GW">Guinea-Bissau</option>
                                <option value="GY">Guyana</option>
                                <option value="HT">Haiti</option>
                                <option value="HM">Heard Island</option>
                                <option value="VA">Holy See</option>
                                <option value="HN">Honduras</option>
                                <option value="HK">Hong Kong</option>
                                <option value="HU">Hungary</option>
                                <option value="IS">Iceland</option>
                                <option value="IN">India</option>
                                <option value="ID">Indonesia</option>
                                <option value="IQ">Iraq</option>
                                <option value="IE">Ireland</option>
                                <option value="IM">Isle Of Man</option>
                                <option value="IL">Israel</option>
                                <option value="IT">Italy</option>
                                <option value="JM">Jamaica</option>
                                <option value="JP">Japan</option>
                                <option value="JE">Jersey</option>
                                <option value="JO">Jordan</option>
                                <option value="KZ">Kazakhstan</option>
                                <option value="KE">Kenya</option>
                                <option value="KI">Kiribati</option>
                                <option value="KR">Korea, Republic Of</option>
                                <option value="KW">Kuwait</option>
                                <option value="KG">Kyrgyzstan</option>
                                <option value="LA">Lao Democratic Republic</option>
                                <option value="LV">Latvia</option>
                                <option value="LB">Lebanon</option>
                                <option value="LS">Lesotho</option>
                                <option value="LR">Liberia</option>
                                <option value="LY">Libya</option>
                                <option value="LI">Liechtenstein</option>
                                <option value="LT">Lithuania</option>
                                <option value="LU">Luxembourg</option>
                                <option value="MO">Macao</option>
                                <option value="MK">Macedonia</option>
                                <option value="MG">Madagascar</option>
                                <option value="MW">Malawi</option>
                                <option value="MY">Malaysia</option>
                                <option value="MV">Maldives</option>
                                <option value="ML">Mali</option>
                                <option value="MT">Malta</option>
                                <option value="MH">Marshall Islands</option>
                                <option value="MQ">Martinique</option>
                                <option value="MR">Mauritania</option>
                                <option value="MU">Mauritius</option>
                                <option value="YT">Mayotte</option>
                                <option value="MX">Mexico</option>
                                <option value="FM">Micronesia</option>
                                <option value="MD">Moldova, Republic Of</option>
                                <option value="MC">Monaco</option>
                                <option value="MN">Mongolia</option>
                                <option value="ME">Montenegro</option>
                                <option value="MS">Montserrat</option>
                                <option value="MA">Morocco</option>
                                <option value="MZ">Mozambique</option>
                                <option value="MM">Myanmar</option>
                                <option value="NA">Namibia</option>
                                <option value="NR">Nauru</option>
                                <option value="NP">Nepal</option>
                                <option value="NL">Netherlands</option>
                                <option value="AN">Netherlands Antilles</option>
                                <option value="NC">New Caledonia</option>
                                <option value="NZ">New Zealand</option>
                                <option value="NI">Nicaragua</option>
                                <option value="NE">Niger</option>
                                <option value="NG">Nigeria</option>
                                <option value="NU">Niue</option>
                                <option value="NF">Norfolk Island</option>
                                <option value="MP">Northern Mariana Islands</option>
                                <option value="NO">Norway</option>
                                <option value="OM">Oman</option>
                                <option value="PK">Pakistan</option>
                                <option value="PW">Palau</option>
                                <option value="PS">Palestinian Territories</option>
                                <option value="PA">Panama</option>
                                <option value="PG">Papua New Guinea</option>
                                <option value="PY">Paraguay</option>
                                <option value="PE">Peru</option>
                                <option value="PH">Philippines</option>
                                <option value="PN">Pitcairn</option>
                                <option value="PL">Poland</option>
                                <option value="PT">Portugal</option>
                                <option value="PR">Puerto Rico</option>
                                <option value="QA">Qatar</option>
                                <option value="RE">Reunion</option>
                                <option value="RO">Romania</option>
                                <option value="RU">Russian Federation</option>
                                <option value="RW">Rwanda</option>
                                <option value="BL">Saint Barthelemy</option>
                                <option value="SH">Saint Helena</option>
                                <option value="KN">Saint Kitts and Nevis</option>
                                <option value="LC">Saint Lucia</option>
                                <option value="MF">Saint Martin</option>
                                <option value="PM">Saint Pierre and Miquelon</option>
                                <option value="VC">Saint Vincent </option>
                                <option value="WS">Samoa</option>
                                <option value="SM">San Marino</option>
                                <option value="ST">Sao Tome and Principe</option>
                                <option value="SA">Saudi Arabia</option>
                                <option value="SN">Senegal</option>
                                <option value="RS">Serbia</option>
                                <option value="SC">Seychelles</option>
                                <option value="SL">Sierra Leone</option>
                                <option value="SG">Singapore</option>
                                <option value="SX">Sint Maarten</option>
                                <option value="SK">Slovakia</option>
                                <option value="SI">Slovenia</option>
                                <option value="SB">Solomon Islands</option>
                                <option value="SO">Somalia</option>
                                <option value="ZA">South Africa</option>
                                <option value="GS">South Georgia</option>
                                <option value="ES">Spain</option>
                                <option value="LK">Sri Lanka</option>
                                <option value="SR">Suriname</option>
                                <option value="SJ">Svalbard and Jan Mayen</option>
                                <option value="SZ">Swaziland</option>
                                <option value="SE">Sweden</option>
                                <option value="CH">Switzerland</option>
                                <option value="TW">Taiwan</option>
                                <option value="TJ">Tajikistan</option>
                                <option value="TZ">Tanzania, United Republic Of</option>
                                <option value="TH">Thailand</option>
                                <option value="TL">Timor-leste</option>
                                <option value="TG">Togo</option>
                                <option value="TK">Tokelau</option>
                                <option value="TO">Tonga</option>
                                <option value="TT">Trinidad and Tobago</option>
                                <option value="TN">Tunisia</option>
                                <option value="TR">Turkey</option>
                                <option value="TM">Turkmenistan</option>
                                <option value="TC">Turks and Caicos Islands</option>
                                <option value="TV">Tuvalu</option>
                                <option value="UG">Uganda</option>
                                <option value="UA">Ukraine</option>
                                <option value="AE">United Arab Emirates</option>
                                <option value="GB">United Kingdom</option>
                                <option value="US">United States</option>
                                <option value="UM">United States Minor</option>
                                <option value="UY">Uruguay</option>
                                <option value="UZ">Uzbekistan</option>
                                <option value="VU">Vanuatu</option>
                                <option value="VE">Venezuela</option>
                                <option value="VN">Vietnam</option>
                                <option value="VG">Virgin Islands, British</option>
                                <option value="VI">Virgin Islands, U.S.</option>
                                <option value="WF">Wallis and Futuna</option>
                                <option value="EH">Western Sahara</option>
                                <option value="YE">Yemen</option>
                                <option value="ZM">Zambia</option>
                                <option value="ZW">Zimbabwe</option>
                            </select>
                            <!--input name="login.name" type="text" value="Enter your country ..." onFocus="this.value=''" onBlur="this.value" /-->
                        </div>
                    </div>            
                    <div class="input_title">
                        <div align="left">Delivery date:
                        </div>
                    </div>
                    <div>
                        <div align="left">                            
                            <INPUT name="Delivery date" id="date1" class="date-pick dp-applied">
                        </div>
                    </div>
                    <div style="clear:both;"></div>
                    <div class="input_title">
                        <div align="left">Total Shipping Price:
                        </div>
                    </div>                    
                    <div>
                        <div align="left">                            
                            <input disabled="disabled" name="Total Shipping Price" type="text" value="$${totalPrice}.00"/>
                        </div>
                    </div>                    
                    <div class="submit">
                        <div align="left">                            
                            <input src="Resources/continue.gif" alt="Continue" tabindex="3" value="Continue" border="0" height="22" type="image" width="91">
                        </div>
                    </div>
                </form>
                <div>
                    <div align="left"><font size="+1" color="#FF9900"><b>Address Accuracy&nbsp;:</b></font><br />Make sure you get your stuff! If the address is not entered correctly, your package may be returned as undeliverable. You would then have to place a new order. Save time and avoid frustration by entering the address information in the appropriate boxes and double-checking for typos and other errors.Need help? Click for address tips: 
                        <ul>
                            <li><a target="AmazonHelp" onclick="window.open(this.href,'AmazonHelp','width=340,height=340,resizable=1,scrollbars=1,toolbar=1,status=1').focus();false;" href="Resources/help_payment.html">General Address Tips</a>                            
                            </li>
                        </ul>            </div>
                </div>            

                <div align="left">                       
                    <!--input type="submit" value="Log In"/-->
                </div>
            </div>

        </div>
    </body>
</html>
