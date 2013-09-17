<%@Control Language="C#" AutoEventWireup="true" Inherits="CSWeb.Cart_A.UserControls.PayPalResponseForm" CodeBehind="PayPalResponseForm.ascx.cs" %>
<asp:ScriptManager runat="server" ID="sm1">
</asp:ScriptManager>
<asp:UpdatePanel ID="upBillingForm" runat="server">
    <ContentTemplate>    
        <div class="cartA">        
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" Display="Dynamic"
                        ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblFirstNameError" runat="server" Visible="false">
                    </asp:Label>
                </div>
                <label class="label-1">
                    First Name*</label>
                <asp:TextBox ID="txtFirstName" runat="server" MaxLength="14" CssClass="text-1"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" Display="Dynamic"
                        ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblLastNameError" runat="server" Visible="false"></asp:Label>
                </div>
                <label class="label-1">
                    Last Name*</label>
                <asp:TextBox ID="txtLastName" runat="server" MaxLength="14" CssClass="text-1"></asp:TextBox>
            </div>
          
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" Display="Dynamic"
                        ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblAddress1Error" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    Billing Address*</label>
                <asp:TextBox ID="txtAddress1" runat="server" MaxLength="30" CssClass="text-1 billingad1"></asp:TextBox>
                  <label class="label-1">
                </label>
                <asp:TextBox ID="txtAddress2" runat="server" MaxLength="30" CssClass="text-1"></asp:TextBox>
            </div>
           
         
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="Dynamic"
                        ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblCityError" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    City*</label>
                <asp:TextBox ID="txtCity" runat="server" MaxLength="30" CssClass="text-1"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:Label ID="lblCountryError" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    Country*</label>
                <asp:DropDownList ID="ddlCountry" runat="server" DataTextField="Code" DataValueField="COUNTRYID"
                    AutoPostBack="true" OnSelectedIndexChanged="Country_SelectedIndexChanged"
                    CssClass="text-1">
                </asp:DropDownList>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:Label ID="lblStateError" runat="server" Visible="false"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" Display="Dynamic"
                        ControlToValidate="ddlState"></asp:RequiredFieldValidator>
                    </div>
                <label class="label-1">
                    State*</label>
                <asp:DropDownList ID="ddlState" runat="server" DataTextField="Abbreviation" CssClass="text-1"
                    size="1">
                </asp:DropDownList>
            </div>
              
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" Display="Dynamic"
                        ControlToValidate="txtZipCode"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblZiPError" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    Zip Code*</label>
                <asp:TextBox ID="txtZipCode" runat="server" MaxLength="7" CssClass="text-1"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" Display="Dynamic"
                        ControlToValidate="txtPhoneNumber1"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblPhoneNumberError" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    Phone*</label>
                <asp:TextBox ID="txtPhoneNumber1" runat="server" MaxLength="3" CssClass="text-4"></asp:TextBox>
                <asp:TextBox ID="txtPhoneNumber2" runat="server" MaxLength="3" CssClass="text-4"></asp:TextBox>
                <asp:TextBox ID="txtPhoneNumber3" runat="server" MaxLength="4" CssClass="text-4"></asp:TextBox>                
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        Display="Dynamic" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" />
                    <asp:Label ID="lblEmailError" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    Email*</label>
                <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" CssClass="text-1"></asp:TextBox>
            </div>
              <div class="form_line clearfix" style="padding-bottom: 0">
            <label class="label-1"></label>
            <p class="text-1" style="text-align:center"><em>We respect your privacy</em></p>
            </div>
            <asp:Panel ID="pnlQuantity" runat="server" Visible="false">
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:Label ID="lblQuantityList" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        Quantity*</label>
                    <asp:DropDownList ID="ddlQuantityList" runat="server" CssClass="text-1">
                        <asp:ListItem Value="select" Text="Select"></asp:ListItem>
                        <asp:ListItem Value="1" Text="1"></asp:ListItem>
                        <asp:ListItem Value="2" Text="2"></asp:ListItem>
                        <asp:ListItem Value="3" Text="3"></asp:ListItem>
                        <asp:ListItem Value="4" Text="4"></asp:ListItem>
                        <asp:ListItem Value="5" Text="5"></asp:ListItem>
                        <asp:ListItem Value="6" Text="6"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </asp:Panel>
            <div class="form_line clearfix" style="display: none">
                <div class="error-2">
                    Error</div>
                <label class="label-3">
                    Choose*</label>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="choosetable">
                    <tr>
                        <td>
                            <img name="" src="images/choice.png" width="52" height="52" alt="" />
                        </td>
                        <td>
                            <img name="" src="images/choice.png" width="52" height="52" alt="" />
                        </td>
                        <td>
                            <img name="" src="images/choice.png" width="52" height="52" alt="" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                choice 1</label><input type="radio" />
                        </td>
                        <td>
                            <label>
                                choice 2</label><input type="radio" />
                        </td>
                        <td>
                            <label>
                                choice 3</label><input type="radio" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="form_line clearfix" style="margin-left: 6px; padding-top: 10px;">
                <div class="error-2">
                    </div>
                <label class="label-3" style="text-align:center">
                    Is your shipping address different from your billing address?
</label>                
                   <%-- <asp:RadioButtonList ID="rblShippingDifferent" runat="server" OnSelectedIndexChanged="rblShippingDifferent_CheckedChanged"
        CssClass="text-5" AutoPostBack="true" RepeatDirection="Horizontal" TabIndex="124">
        <asp:ListItem Value="true">Yes</asp:ListItem>
        <asp:ListItem Value="false" Selected="True">No</asp:ListItem>
    </asp:RadioButtonList>--%>
     <asp:CheckBox ID="cbShippingSame" runat="server" CssClass="checkbox-right" OnCheckedChanged="cbShippingSame_CheckedChanged"
            AutoPostBack="true" Checked="true" />
            </div>
               <asp:Panel ID="pnlShippingAddress" runat="server" Visible="false">
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvShippingFirstName" runat="server" Display="Dynamic"
                            ControlToValidate="txtShippingFirstName"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblShippingFirstName" runat="server" Visible="false">
                        </asp:Label>
                    </div>
                    <label class="label-1">
                        First Name*</label>
                    <asp:TextBox ID="txtShippingFirstName" runat="server" MaxLength="14" CssClass="text-1"></asp:TextBox>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvShippingLastName" runat="server" Display="Dynamic" ControlToValidate="txtShippingLastName"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblShippingLastName" runat="server" Visible="false"></asp:Label>
                    </div>
                    <label class="label-1">
                        Last Name*</label>
                    <asp:TextBox ID="txtShippingLastName" runat="server" MaxLength="14" CssClass="text-1"></asp:TextBox>
                </div>                
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvShippingAddress1" runat="server" Display="Dynamic"
                            ControlToValidate="txtShippingAddress1"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblShippingAddress1Error" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        Shipping Address*</label>
                    <asp:TextBox ID="txtShippingAddress1" runat="server" MaxLength="30" CssClass="text-1"></asp:TextBox>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                    </div>
                    <label class="label-1">
                    </label>
                    <asp:TextBox ID="txtShippingAddress2" runat="server" MaxLength="30" CssClass="text-1"></asp:TextBox>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvShippingCity" runat="server" Display="Dynamic"
                            ControlToValidate="txtShippingCity"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblShippingCityError" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        City*</label>
                    <asp:TextBox ID="txtShippingCity" runat="server" MaxLength="30" CssClass="text-1"></asp:TextBox>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:Label ID="lblShippingCountryError" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        Country*</label>
                    <asp:DropDownList ID="ddlShippingCountry" runat="server" DataTextField="NAME" DataValueField="COUNTRYID"
                        AutoPostBack="true" OnSelectedIndexChanged="ShippingCountry_SelectedIndexChanged"
                        CssClass="text-1">
                    </asp:DropDownList>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:Label ID="lblShippingStateError" runat="server" Visible="false"></asp:Label>
                        <asp:RequiredFieldValidator ID="rfvShippingState" runat="server" Display="Dynamic"
                        ControlToValidate="ddlShippingState"></asp:RequiredFieldValidator>
                        </div>
                    <label class="label-1">
                        State*</label>
                    <asp:DropDownList ID="ddlShippingState" runat="server" DataTextField="NAME" CssClass="text-1" size="1" AutoPostBack="true">
                    </asp:DropDownList>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvShippingZipCode" runat="server" Display="Dynamic"
                            ControlToValidate="txtShippingZipCode"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblShippingZiPError" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        Zip Code*</label>
                    <asp:TextBox ID="txtShippingZipCode" runat="server" MaxLength="7" CssClass="text-1"></asp:TextBox>
                </div>
            </asp:Panel>

            <div class="form_line clearfix">
                <label class="label-3">
                    Additional Shipping Charge</label>
                <div class="error-2">                    
                <asp:DropDownList ID="ddlAdditionShippingCharge" runat="server" CssClass="text-2">
                </asp:DropDownList>
            </div>

            <div class="form_line clearfix">
                <label class="label-3">
                    Payment Method</label>
                <div class="error-2">
                    <asp:RequiredFieldValidator ID="rfvCCType" runat="server" Display="Dynamic"
                            ControlToValidate="ddlCCType"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblCCType" runat="server" Visible="false"></asp:Label></div>
                <asp:DropDownList ID="ddlCCType" runat="server" CssClass="text-2">
                </asp:DropDownList>
            </div>
           
            <div class="form_line clearfix">
                <label class="label-3">
                    Credit Card Number</label>
                <div class="error-2">
                    <asp:Label ID="lblCCNumberError" runat="server" Visible="false"></asp:Label></div>
                <table cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td><asp:TextBox ID="txtCCNumber1" runat="server" CssClass="text-4" MaxLength="4"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtCCNumber1" runat="server" Display="Dynamic" ErrorMessage="*" /></td>
                        <td><asp:TextBox ID="txtCCNumber2" runat="server" CssClass="text-4" MaxLength="4"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtCCNumber2" runat="server" Display="Dynamic" ErrorMessage="*" /></td>
                        <td><asp:TextBox ID="txtCCNumber3" runat="server" CssClass="text-4" MaxLength="4"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtCCNumber3" runat="server" Display="Dynamic" ErrorMessage="*" /></td>
                        <td><asp:TextBox ID="txtCCNumber4" runat="server" CssClass="text-4" MaxLength="4"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtCCNumber4" runat="server" Display="Dynamic" ErrorMessage="*" /></td>
                    </tr>
                </table>
            </div>
             <div class="form_line clearfix">
                <label class="label-3">
                    Expiration Date</label>
                <div class="error-2">
                <asp:RequiredFieldValidator ID="rfvExpMonth" runat="server" Display="Dynamic"
                            ControlToValidate="ddlExpMonth"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvExpYear" runat="server" Display="Dynamic"
                    ControlToValidate="ddlExpYear"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblExpDate" runat="server" Visible="false"></asp:Label></div>
                <asp:DropDownList ID="ddlExpMonth" runat="server" CssClass="text-3">
                    <asp:ListItem Value="" Text=""></asp:ListItem>
                    <asp:ListItem Value="1">01</asp:ListItem>
                    <asp:ListItem Value="2">02</asp:ListItem>
                    <asp:ListItem Value="3">03</asp:ListItem>
                    <asp:ListItem Value="4">04</asp:ListItem>
                    <asp:ListItem Value="5">05</asp:ListItem>
                    <asp:ListItem Value="6">06</asp:ListItem>
                    <asp:ListItem Value="7">07</asp:ListItem>
                    <asp:ListItem Value="8">08</asp:ListItem>
                    <asp:ListItem Value="9">09</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12" Selected="True">12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlExpYear" runat="server" CssClass="text-3">
                    <asp:ListItem Value="" Text=""></asp:ListItem>
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                    <asp:ListItem Value="2015">2015</asp:ListItem>
                    <asp:ListItem Value="2016">2016</asp:ListItem>
                    <asp:ListItem Value="2017">2017</asp:ListItem>
                    <asp:ListItem Value="2018">2018</asp:ListItem>
                    <asp:ListItem Value="2019">2019</asp:ListItem>
                    <asp:ListItem Value="2020" Selected="True">2020</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form_line clearfix">
                <label class="label-3">
                    CVV2: <a class="cvv" onclick="window.open('/b2/CreditCardCVV2.htm','cvv','width=620,height=400'); return false;">(What is this?)</a>
                </label>
                <div class="error-2">
                    <asp:RequiredFieldValidator ID="rfvCVV" ControlToValidate="txtCvv" runat="server" Display="Dynamic" />
                    <asp:Label ID="lblCvvError" runat="server" Visible="false"></asp:Label></div>
                <asp:TextBox ID="txtCvv" runat="server" CssClass="text-4" MaxLength="4"></asp:TextBox>
            </div>
            <div class="form_line_btn">
                <asp:ImageButton ID="imgBtn" runat="server" ImageUrl="https://d37t4f22sfrbdk.cloudfront.net/Images/submit-rush_e2.gif"
                    CssClass="form_line_center" OnClick="imgBtn_OnClick" />
            </div>
            <div class="form_line_guarantee" style="display:none"><a href="#">View 30-Day Guarantee</a></div>
                             

        </div>
    </ContentTemplate>
</asp:UpdatePanel>
