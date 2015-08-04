# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#example unit test generate -
#unit_test_no_generate: gift_card_payment_field, input.className(create_ats_regex_string("ats-giftcard"))


# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to checkout.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopCheckoutFinder

    # Returns a gift card payment field
    def gift_card_payment_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-giftcard")),__method__)
    end

    # Returns a gift card payment pin
    def gift_card_payment_pin
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-giftpin")),__method__)
    end

    # Returns a gift card payment apply
    def gift_card_payment_apply
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-applygiftcardbtn")),__method__)
    end

    # Returns a gift card quantity
    def gift_card_qty
        $tracer.trace(__method__)
        return ToolTag.new(input.name("/tbGiftQuantity/"), __method__)
    end

    # Returns a gift card amount
    def gift_card_amount
        $tracer.trace(__method__)
        return GameStopRadioButtons.new(ToolTag.new(input.name("/GiftAmount/"), __method__), self)
    end

    # Returns a gift card amount text field
    def gift_card_amount_text_field
        $tracer.trace(__method__)
        return ToolTag.new(input.name("/TextBox_GiftAmount/"), __method__)
    end

    # Returns a gift card type
    def gift_card_type
        $tracer.trace(__method__)
        return GameStopRadioButtons.new(ToolTag.new(input.name("/GiftType/"), __method__), self)
    end

    # Returns a cart discount
    def cart_discount
        $tracer.trace(__method__)
        return GameStopRadioButtons.new(ToolTag.new(tr.className("discount").td, __method__), self)
    end

    # Returns a confirmation page discount
    def confirmation_page_discount
        $tracer.trace(__method__)
        return GameStopRadioButtons.new(ToolTag.new(td.className("discount").label, __method__), self)
    end

    # Returns a gift card add to card button
    def gift_card_add_to_card_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-addgifttocartbtn")),__method__)

    end

    # Returns a search store address (misspelled address?)
    def search_store_adress
        $tracer.trace(__method__)
        return ToolTag.new(input.id("choosestoreAddress"), __method__)
    end

    # Returns a search store address button (misspelled address?)
    def search_store_adress_button
        $tracer.trace(__method__)
        return ToolTag.new(div.className("minisearch").find.a, __method__, self)
    end

    # Returns a choose store button
    def choose_store_button
        $tracer.trace(__method__)
        return ToolTag.new(div.className("storeunit").find.a, __method__)
    end

    # Returns a checkout confirm email bill to label
    def chkoutconfirmemail_bill_to_label
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/ConfirmEmailAddress/"), __method__)
    end

    # Returns a handling with discount amount
    def handling_with_discount_amount
        $tracer.trace(__method__)
        return ToolTag.new(td.className("discount"), __method__)
    end

    # Returns an aadd address button
    def add_address_button
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/AddShippingButton$/"), __method__)
    end

    # Returns an add billing address button
    def add_billing_address_button
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/AddBillingButton$/"), __method__)
    end

    # Returns a create billing address link
    def create_account_link
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-submitbtn")), __method__)
    end

    # Returns a create account panel
    def create_account_panel
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-loginsliderpanel")), __method__)
    end

    # Returns a create account form email
    def create_account_form_email
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-createemailaddr")), __method__)
    end

    # Returns a create account form confirm email
    def create_account_form_confirm_email
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-confirmemailaddrfield")), __method__)
    end

    # Returns a create account form confirm password
    def create_account_form_confirm_password
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-confirmpwdfield")), __method__)
    end

    # Returns a create account form pasword
    def create_account_form_password
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-createpwdfield")), __method__)
    end

    # Returns a create account form submit button
    def create_account_form_submit_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-createacctbtn")), __method__)
    end

    # Returns a create account form cancel button
    def create_account_form_cancel_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-cancelbtn")), __method__)
    end

    # Returns the "Continue Checkout" link from the "My Cart" page or from
    # subsequent pages during the checkout process.
    def continue_checkout_button()
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-checkoutbtn")), __method__)
    end

    # Returns the "Billing Address" label.
    def billing_address_label
        $tracer.trace(__method__)
        return ToolTag.new(h2.className(create_ats_regex_string("ats-billingaddresslbl")), __method__)
    end

    # Returns the "Country" label Checkout
    def chkcountry_label
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-countryfield")), __method__), self)
    end

    # Returns a wallet label
    def wallet_label
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.id("walletCards"), __method__), self)
    end

    # Returns the "First Name" label Checkout
    def chkoutfirstname_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-fnamefield")), __method__)
    end

    # Returns the "Last Name" label Checkout
    def chkoutlastname_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-lnamefield")), __method__)
    end

    # Returns the "Address1" label Checkout
    def chkoutaddress1_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-line1field")), __method__)
    end

    # Returns the "Address2" label Checkout
    def chkoutaddress2_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-line2field")), __method__)
    end

    # Returns the "City" label Checkout
    def chkoutcity_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-cityfield")), __method__)
    end

    # Returns the "State" label Checkout
    # @spec.jquery("select[cssclass=ats-usstate]").exists
    def chkoutstate_label
        $tracer.trace(__method__)
        return GameStopSelector.new(get_self.jquery("select[class~='ats-usstate']"))
    end

    # Returns the "Zip" label Checkout
    def chkoutzip_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-postalcodefield")), __method__)
    end

    # Returns the "Phone Number" label Checkout
    def chkoutphonenumber_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-phonefield")), __method__)
    end

    # Returns the "Purchase Email" label Checkout
    def chkoutpurchaseemail_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-emailfield")), __method__)
    end

    # Returns the "Confirm Email" label Checkout
    def chkoutconfirmemail_label
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/ShipTo_ConfirmEmailAddress/"), __method__)
    end

    # Returns the Sign up for Weekly Ads checkbox
    def chkoutweeklyadoffers_label
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-optinbox")), __method__)
    end

    # Returns the "Shipping Address" label.
    def shipping_address_label
        $tracer.trace(__method__)
        return ToolTag.new(h2.className(create_ats_regex_string("ats-shippingaddresslbl")), __method__)
    end

    # Returns the "Handling Options" label.
    def handling_options_label
        $tracer.trace(__method__)
        return ToolTag.new(span("Handling Options"), __method__)
    end

    # Returns the handling method radio button table.
    def handling_method_buttons
        $tracer.trace(__method__)
        return GameStopHandlingMethodRadioButtons.new(ToolTag.new(div.className("/hmethod/"), __method__), self)
    end

    # Returns a handling options page panel
    def handling_options_page_panel
        $tracer.trace(__method__)
        return GameStopHandlingPagePanel.new(ToolTag.new(div.className("/region/"), __method__), self)
    end

    # Returns the "Submit Order" button.
    def submit_order_button()
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-submitorder")), __method__)
    end

    # Returns an order summary button
    def chkoutbuy_ordersummary_button()
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-ordersummarybtn")), __method__)
    end

    # Returns the gift message checkbox.
    def chkoutgift_message_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-giftmsgcheckbox")), __method__)
    end

    # Returns the gift message field.
    def chkoutgift_message_field()
        $tracer.trace(__method__)
        return ToolTag.new(textarea.className(create_ats_regex_string("ats-giftmsgform")), __method__)
    end

    # Returns the gift message checkbox.
    def gift_message_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-giftmsgcheckbox")), __method__)
    end

    # Returns the gift message field.
    def gift_message_field()
        $tracer.trace(__method__)
        return ToolTag.new(textarea.id("/tbGiftMessage/"), __method__)
    end

    #DT 1-16-2013
    # Returns the order confirmation label.
    def order_confirmation_label()
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-orderconfirmlabel")), __method__)
    end

    # Returns order confirmation number.
    def order_confirmation_number
        $tracer.trace(__method__)

        inner_text = div.className(create_ats_regex_string("ats-orderconfirmlabel")).innerText.strip
        if (inner_text.match(/\D+/) == nil)
            $tracer.trace("Order Confirmation Number: #{inner_text}")
            return inner_text
        else
            # Least brittle assumption: order number is the last "token" of the inner text.
            array = inner_text.split(' ')
            $tracer.trace("Order Confirmation Number: #{array[array.length - 1]}")
            return array[array.length - 1]
        end
    end

    # Returns the order summary panel.
    def order_summary_panel
        $tracer.trace(__method__)
        return GameStopOrderSummaryPanel.new(ToolTag.new(table.id("ordersum_table"), __method__), self)
    end

    # Returns the order total panel
    def order_total_panel
        $tracer.trace(__method__)
        return GameStopOrderTotalPanel.new(ToolTag.new(table.className("ordersummary"), __method__), self)
    end

    # Returns the "I am 17 years of age or older" button from the age gate.
    def seventeen_or_older_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-ofagebtn")), __method__)
    end

    # Returns the "Buy as a Guest" button.
    def chkoutbuy_as_guest_button()
        $tracer.trace(__method__)
        return ToolTag.new(jquery("a[class~='ats-buyasguest'], input[name$='BuyAsGuestImageButton']"), __method__)
    end

    # Returns the "No thanks" link on the guest login create account window.
    def guest_login_create_account_no_thanks_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/CreateAccountModal1_btnClose/"), __method__)
    end

    # Returns the checkbox for specifying a different or same billing and
    # and shipping address.
    def same_address_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-sameaddressoptinbox")), __method__)
    end

    # Returns the card number field for payment using PUR, Edge, etc.
    def payment_card_number_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/GiftCard_AccountNumber_TextBox/"), __method__)
    end

    # Returns the PIN field for payment using PUR, Edge, etc.
    def payment_card_pin_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/GiftCard_Pin_TextBox/"), __method__)
    end

    # Returns the Shipping Address Details, this 'Deliver To' address or
    # the billing on the preview order page.
    def address_summary_value
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/lblAddressDetails$/"), __method__)
    end

    # Returns the edit Shipping Address link.
    def edit_shipping_address_link
        $tracer.trace(__method__)
        return ToolTag.new(span.href("/Addresses$/"), __method__)
    end

    # Returns the address Save link.
    def save_address_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/btnSubmitAddress$/"), __method__, self)
    end

    # Returns the gift message label label.
    def gift_message_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/lDisplayGiftMessage$/"), __method__)
    end

    # Returns the gift message value.
    def gift_message_value
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/lPhysicalGiftMessage$/"), __method__)
    end

    # Returns the credit card type required label.
    def credit_card_type_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/CreditCardType_Validator$/"), __method__)
    end

    # Returns the credit card number required label.
    def credit_card_number_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/CreditCardNumber_Validator$/"), __method__)
    end

    # Returns the credit card month required label.
    def credit_card_month_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/ExpirationMonth_Validator$/"), __method__)
    end

    # Returns the credit card year required label.
    def credit_card_year_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/ExpirationYear_Validator$/"), __method__)
    end

    # Returns the credit card year required label.
    def credit_card_date_invalid_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/CCDateInvalidVal$/"), __method__)
    end

    # Returns the credit card invalid label.
    def credit_card_number_invalid_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/CreditCardNumber_Mod10$/"), __method__)
    end

    # Returns the view rate handling link.
    def view_handling_rate_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/ShippingHandlingFeeHyperLink$/"), __method__)
    end

    # Returns the Checkout Shipping Address panel, the shipping address
    # under the Preview Order button.
    def checkout_shipping_address_panel
        $tracer.trace(__method__)
        return ToolTag.new(div.className("sub_group_leftbox"), __method__)
    end

    # Returns the Shipping Address on the Order Confirmation page.
    def order_confirmation_shipping_address_value
        $tracer.trace(__method__)
        return ToolTag.new(div.className("shipbox"), __method__)
    end

    # Returns the Shipping Address on the Order Confirmation page.
    def order_confirmation_billing_address_value
        $tracer.trace(__method__)
        return ToolTag.new(div.className("billbox"), __method__)
    end

    # Returns the 'Choose a different address' link
    def choose_a_different_address_link
        $tracer.trace(__method__)
        return ToolTag.new(a("Choose a different address"), __method__, self)
    end

    # Returns the 'Choose a different store' link
    def choose_a_different_store_link
        $tracer.trace(__method__)
        return ToolTag.new(a("Choose a different store"), __method__, self)
    end

    # Returns the in-store pickup phone field.
    def in_store_pickup_phone_number_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/txtISPPhone$/"), __method__)
    end

    # Returns the popup store panel used on the Handling Options page for in-store pickup items.
    def popup_store_panel
        $tracer.trace(__method__)
        return GameStopPopupStorePanel.new(ToolTag.new(div.id("/popAddressSelection_pnlPopup/"), __method__), self)
    end

    # Returns the pick up in a store instead link.
    def pick_up_in_a_store_instead_link
        $tracer.trace(__method__)
        return ToolTag.new(a("/Pick up in a store instead/"), __method__, self)
    end

    # Returns the shipping methods error label.
    def shipping_methods_error_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/ShippingMethodSelection$/"), __method__)
    end

    # Returns the in store pickup phone required label.
    def in_store_pickup_phone_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/rfvISPPhone$/"), __method__)
    end

    # Returns the in store pickup phone invalid label.
    def in_store_pickup_phone_invalid_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/ISPPhoneFormatRegEx$/"), __method__)
    end

    # Returns the Activate Powerup Rewards popup panel.
    def activate_powerup_rewards_popup_panel
        $tracer.trace(__method__)
        return ActivatePowerupRewardsPopupPanel.new(ToolTag.new(div.id("/activatePURModal$/"), __method__), self)
    end

    # Returns the Merge Account Popup panel.
    def merge_accounts_popup_panel
        $tracer.trace(__method__)
        return MergeAccountsPopupPanel.new(ToolTag.new(div.id("/MergeAccountsModal1/"), __method__), self)
    end

    # Returns a credit card type selector
    def chkoutcredit_cardtype_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-cardtype")), __method__), self)
    end

    # Returns the credit card month on the Credit Card Info page.
    def chkoutcredit_card_month_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-expmonth")), __method__), self)
    end

    # Returns the credit card year selector on the Credit Card Info page.
    def chkoutcredit_card_year_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-expyear")), __method__), self)
    end

    # Returns the credit card number on the Credit Card Info page.
    def chkoutcredit_card_number_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-ccnumber")), __method__)
    end

    # Returns the digital wallet checkbox on the Credit Card Info page.
    def chkoutadd_digital_wallet
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-addcctowallet")), __method__)
    end

    # Returns the credit card CVV2 number field on the Credit Card Info page.
    def chkoutcredit_card_security_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-securitycode")), __method__)
    end

    # Returns a check out credit card invalid field
    def chkoutcredit_card_invalid_field
        $tracer.trace(__method__)
        return ToolTag.new(id.className(create_ats_regex_string("ats-creditcardinvalidmsg")), __method__)
    end

    # Returns a checkout credit card invalid expiration field
    def chkoutcredit_card_invalid_expiration_field
        $tracer.trace(__method__)
        return ToolTag.new(id.className(create_ats_regex_string("ats-ccexpirationinvalidmsg")), __method__)
    end

    # Returns a checkout credit card invalid security code field
    def chkoutcredit_card_invalid_securitycode_field
        $tracer.trace(__method__)
        return ToolTag.new(id.className(create_ats_regex_string("ats-securitycodeinvalidmsg")), __method__)
    end

    # Returns a review first name label
    def review_first_name_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("addr-firstname")), __method__)
    end

    # Returns a review last name label
    def review_last_name_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("addr-lastname")), __method__)
    end

    # Returns a review address 1 label
    def review_address1_label
        $tracer.trace(__method__)
        return ToolTag.new(address.className(create_ats_regex_string("addr-line1")), __method__)
    end

    # Returns a review city label
    def review_city_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("addr-city")), __method__)
    end

    # Returns a review state label
    def review_state_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("addr-state")), __method__)
    end

    # Returns a review postal code label
    def review_postal_code_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("addr-postalcode")), __method__)
    end

    # Returns a review country label
    def review_country_label
        $tracer.trace(__method__)
        return ToolTag.new(address.className(create_ats_regex_string("addr-countryname")), __method__)
    end

    # Returns a review phone label
    def review_phone_label
        $tracer.trace(__method__)
        return ToolTag.new(address.className(create_ats_regex_string("addr-phonenumber")), __method__)
    end

    # Returns a preview order button
    def preview_order_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-ordersummarybtn")), __method__)
    end

    # Returns an order summary sub-total
    def order_summary_subtotal
        $tracer.trace(__method__)
        return ToolTag.new(jquery("label[data-bind*='SubTotal']"), __method__)
    end

    # Returns an order summary tax
    def order_summary_tax
        $tracer.trace(__method__)
        return ToolTag.new(jquery("label[data-bind*='EstimatedTax']"), __method__)
    end

    # Returns an order summary handling
    def order_summary_handling
        $tracer.trace(__method__)
				return ToolTag.new(jquery("label[data-bind*='ShippingCost']"), __method__)
    end

    # Returns an order summary total
    def order_summary_total
        $tracer.trace(__method__)
        return ToolTag.new(jquery("label[data-bind*='OrderTotal']"), __method__)
    end

    # Returns the order total panel - order confirmation page
    def confirm_order_details_panel
        $tracer.trace(__method__)
        return GameStopOrderedItemPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-confirmorderdetails")), __method__), self)
    end

    # Returns a confirm order note
    def confirm_order_note
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-confirmordernote")), __method__)
    end

    # Returns a confirm payment panel
    def confirm_payment_panel
        $tracer.trace(__method__)
        return ConfirmPaymentPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-confirmpymtbox")), __method__), self)
    end

    # Could not use the ats classname because it was the same - possible existing finder, but not a component
    def confirm_shipping_address_panel
        $tracer.trace(__method__)
        return ConfirmShipAddressPanel.new(ToolTag.new(div.className(create_ats_regex_string("shipbox")), __method__), self)
    end

    # Returns a confirm handling method panel
    def confirm_handling_method_panel
        $tracer.trace(__method__)
        return  ConfirmShipAddressPanel.new(ToolTag.new(div.className(create_ats_regex_string("handlingbox")), __method__), self)
    end

    # Could not use the ats classname because it was the same - possible existing finder, but not a component
    def confirm_billing_address_panel
        $tracer.trace(__method__)
        return ConfirmBillAddressPanel.new(ToolTag.new(div.className(create_ats_regex_string("billbox")), __method__), self)
    end

    # Returns a create account modal panel
    def create_acct_modal_panel
        $tracer.trace(__method__)
        return CreateAcctModal.new(ToolTag.new(div.className(create_ats_regex_string("overlayform")), __method__), self)
    end

		# Returns the sub-total amount
    def confirm_subtotal_value
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("ats-confirmationsubtotal")), __method__)
    end
		
		# Returns phone number
    def ispu_phone_number
        $tracer.trace(__method__)
        return ToolTag.new(div.className("ats-ispuphonenumber").find.input, __method__)
    end
		
		# Returns create account submit button
    def create_account_submit_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-submitbtn")), __method__)
    end
		
		# Returns error message label
		def error_message_label
			$tracer.trace(__method__)
			return ToolTag.new(span.className(create_ats_regex_string("ats-errormsg")), __method__)
		end
		
		# Returns order confirmation discount total
		def order_discount_total
			$tracer.trace(__method__)
			return ToolTag.new(td.className(create_ats_regex_string("ats-confirmationdiscounttotal")), __method__)
		end
		
		# Returns the Canada Province dropdown
		def chkoutprovince_label
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.id("/CAProvinces/"), __method__), self)
	 end
	 
	 # Returns the "I am under 17 years of age" button from the age gate.
    def under_seventeen_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-underagebtn")), __method__)
    end
		
		# Returns the "Information message from shopping cart" 
    def cart_info_message
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-infomsg")), __method__)
    end

		# Returns the discounts from order confirmation page
    def confirm_order_discount_panel
        $tracer.trace(__method__)
        return GameStopDiscountPanel.new(ToolTag.new(table.className("ats-confirmordersummary").tbody.find.tr.className("discount"), __method__), self)
    end		
		
		# Returns the sub-total amount
    def confirm_prediscount_subtotal
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("ats-confirmationprediscountsubtotal")), __method__)
    end

		# Returns the GameStop Digital Certificate Gift Message
    def gift_card_message
        $tracer.trace(__method__)
        return ToolTag.new(jquery("span[data-bind*='GiftMessage']"), __method__)
    end
		
		# Returns the Add GiftCard mesage checkbox
    def gift_card_message_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/AddGiftMessage/"), __method__)
    end
		
		# Returns the Gift Message textarea
    def create_gift_card_message
        $tracer.trace(__method__)
        return ToolTag.new(textarea.id("/GiftMessage/"), __method__)
    end

		# Returns the error msg panel
    def error_msg_panel
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-errormsgpanel")), __method__)
    end

    # Returns Login Email Label.
    def login_email_field
      $tracer.trace(__method__)
      #unit_test_no_generate: login_email_field, input.className(create_ats_regex_string("ats-emailaddrfield"))
      return ToolTag.new(input.className(create_ats_regex_string("ats-emailaddrfield")), __method__, self)
    end

    # Returns Login Password Label.
    def login_password_field
      $tracer.trace(__method__)
      #unit_test_no_generate: login_password_field, input.className(create_ats_regex_string("ats-pwdfield"))
      return ToolTag.new(input.className(create_ats_regex_string("ats-pwdfield")), __method__, self)
    end

    def user_login_anchor_button
      $tracer.trace(__method__)
      #unit_test_no_generate: user_login_button, button.className(create_ats_regex_string("ats-loginbtn"))
      return ToolTag.new(a.className(create_ats_regex_string("ats-loginbtn")), __method__, self)
    end

    def continue_checkout_anchor_button_handling
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-checkoutbtn")), __method__, self)
    end

    def gs_search_field
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-searchfield")), __method__, self)
    end

    def gs_results_header
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("results_header")), __method__, self)
    end

    def gs_product_info
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("product_info")).find.a, __method__, self)
    end

    def gs_add_to_cart
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("addToCartTrackable")), __method__, self)
    end

    def gs_add_to_cart_a
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("addToCartTrackable")), __method__, self)
    end

    def gs_add_to_cart_b
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("purchase_info")).find.input, __method__, self)
    end

    def gs_hops_pickup_lnk
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-hops-pickup-lnk")), __method__, self)
    end

    def gs_hops_pickup_submit_btn
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-hops-pickup-lnk")), __method__, self)
    end

    #

    def gs_purchase_info
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("purchase_info")), __method__, self)
    end

    def gs_ats_ftr_fullSite
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-ftr-fullSite")), __method__, self)
    end

    def gs_header_container
      $tracer.trace(__method__)
      return ToolTag.new(div.id("headerContainer").script, __method__, self)
    end

    def gs_header_container_d
      $tracer.trace(__method__)
      return ToolTag.new(div.id("header").script, __method__, self)
    end

    def gs_new_product
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("new_product")).find.a, __method__, self)
    end

    def gs_ats_login
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-login")),__method__, self)
    end

    def pickup_at_store_link_a
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("purchase_info")), __method__, self)
    end

    def gs_cart_checkout_btn
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-checkoutbtn")), __method__, self)
    end

    def gs_wrap
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("wrap")), __method__, self)
    end

    def gs_grid_20
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("grid_20")), __method__, self)
    end

    def gs_checkout_title
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("grid_20")).h2, __method__, self)
    end

    def gs_ats_submitorder
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-submitorder")), __method__, self)
    end

    def gs_ats_wish_list
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-wishlist")), __method__, self)
    end

    def gs_trade_pf_wiiu
      $tracer.trace(__method__)
      return ToolTag.new(div.id("pf_wiiu").find.ol.li, __method__, self)
    end

    def gs_game_search
      $tracer.trace(__method__)
      return ToolTag.new(input.id("gamesSearchbox"), __method__, self)
    end

    def gs_select_trade
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("bttnSelectTrade")), __method__, self)
    end

    def gs_trade_search_menu
      $tracer.trace(__method__)
      return ToolTag.new(ul.id("tradeSearchMenu").hgroup, __method__, self)
    end

    def gs_save_estimate
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("bttnSave")), __method__, self)
    end

    def gs_save_trade_link
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("circleCount")), __method__, self)
    end

    def gs_form
      $tracer.trace(__method__)
      return ToolTag.new(form, __method__, self)
    end

    def gs_pickup_at_store_search
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("zip_input")), __method__, self)
    end

    def gs_panel_submit_no_pur
      $tracer.trace(__method__)
      return ToolTag.new(div.id("panel_submit_no_pur").find.a, __method__, self)
    end

    def gs_paypal_radio_btn
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("radiopp")), __method__, self)
    end

    def gs_paypal_btn
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-paypalcheckoutbtn")), __method__, self)
    end

    def gs_xbox360
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-xbox360menu")), __method__, self)
    end

    def gs_trade_value_spotlight
      #tradeValueSpotlight
      $tracer.trace(__method__)
      return ToolTag.new(div.id("tradeValueSpotlight").find.a, __method__, self)
    end

end
