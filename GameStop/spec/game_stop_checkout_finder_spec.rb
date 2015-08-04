ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopCheckoutFinder, "finders" do

    before(:all) do
        class GameStopCheckoutFinderTest
            include GameStopCheckoutFinder
        end

        @browser = GameStopCheckoutFinderTest.allocate

        #$tracer.mode = :on
    end

    after(:all) do
        Object.send(:remove_const, :GameStopCheckoutFinderTest) if Object.const_defined?(:GameStopCheckoutFinderTest)
    end


    it "should have a gift card payment field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_card_payment_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftcard").ordered.and_return("ats-giftcard")
        mocked_input.should_receive(:className).with("ats-giftcard").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_card_payment_field).ordered.and_return(mocked_tooltag)

        @browser.gift_card_payment_field.should == mocked_tooltag
    end


    it "should have a gift card payment pin" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_card_payment_pin).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftpin").ordered.and_return("ats-giftpin")
        mocked_input.should_receive(:className).with("ats-giftpin").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_card_payment_pin).ordered.and_return(mocked_tooltag)

        @browser.gift_card_payment_pin.should == mocked_tooltag
    end


    it "should have a gift card payment apply" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_card_payment_apply).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-applygiftcardbtn").ordered.and_return("ats-applygiftcardbtn")
        mocked_a.should_receive(:className).with("ats-applygiftcardbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_card_payment_apply).ordered.and_return(mocked_tooltag)

        @browser.gift_card_payment_apply.should == mocked_tooltag
    end


    it "should have a gift card qty" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")

        $tracer.should_receive(:trace).with(:gift_card_qty).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("/tbGiftQuantity/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :gift_card_qty).ordered.and_return(mocked_tooltag)

        @browser.gift_card_qty.should == mocked_tooltag
    end


    it "should have a gift card amount" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")
        mocked_gamestopradiobuttons = double("GameStopRadioButtons")

        $tracer.should_receive(:trace).with(:gift_card_amount).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("/GiftAmount/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :gift_card_amount).ordered.and_return(mocked_tooltag)
        GameStopRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopradiobuttons)

        @browser.gift_card_amount.should == mocked_gamestopradiobuttons
    end


    it "should have a gift card amount text field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")

        $tracer.should_receive(:trace).with(:gift_card_amount_text_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("/TextBox_GiftAmount/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :gift_card_amount_text_field).ordered.and_return(mocked_tooltag)

        @browser.gift_card_amount_text_field.should == mocked_tooltag
    end


    it "should have a gift card type" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")
        mocked_gamestopradiobuttons = double("GameStopRadioButtons")

        $tracer.should_receive(:trace).with(:gift_card_type).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("/GiftType/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :gift_card_type).ordered.and_return(mocked_tooltag)
        GameStopRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopradiobuttons)

        @browser.gift_card_type.should == mocked_gamestopradiobuttons
    end


    it "should have a cart discount" do
        mocked_tooltag = double("ToolTag")
        mocked_tr = double("tr")
        mocked_className = double("className")
        mocked_td = double("td")
        mocked_gamestopradiobuttons = double("GameStopRadioButtons")

        $tracer.should_receive(:trace).with(:cart_discount).ordered

        @browser.should_receive(:tr).ordered.and_return(mocked_tr)
        mocked_tr.should_receive(:className).with("discount").ordered.and_return(mocked_className)
        mocked_className.should_receive(:td).ordered.and_return(mocked_td)
        ToolTag.should_receive(:new).with(mocked_td, :cart_discount).ordered.and_return(mocked_tooltag)
        GameStopRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopradiobuttons)

        @browser.cart_discount.should == mocked_gamestopradiobuttons
    end


    it "should have a confirmation page discount" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")
        mocked_label = double("label")
        mocked_gamestopradiobuttons = double("GameStopRadioButtons")

        $tracer.should_receive(:trace).with(:confirmation_page_discount).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:className).with("discount").ordered.and_return(mocked_className)
        mocked_className.should_receive(:label).ordered.and_return(mocked_label)
        ToolTag.should_receive(:new).with(mocked_label, :confirmation_page_discount).ordered.and_return(mocked_tooltag)
        GameStopRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopradiobuttons)

        @browser.confirmation_page_discount.should == mocked_gamestopradiobuttons
    end


    it "should have a gift card add to card button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_card_add_to_card_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-addgifttocartbtn").ordered.and_return("ats-addgifttocartbtn")
        mocked_a.should_receive(:className).with("ats-addgifttocartbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_card_add_to_card_button).ordered.and_return(mocked_tooltag)

        @browser.gift_card_add_to_card_button.should == mocked_tooltag
    end


    it "should have a search store adress" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:search_store_adress).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("choosestoreAddress").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :search_store_adress).ordered.and_return(mocked_tooltag)

        @browser.search_store_adress.should == mocked_tooltag
    end


    it "should have a search store adress button" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:search_store_adress_button).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("minisearch").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :search_store_adress_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.search_store_adress_button.should == mocked_tooltag
    end


    it "should have a choose store button" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")

        $tracer.should_receive(:trace).with(:choose_store_button).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("storeunit").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :choose_store_button).ordered.and_return(mocked_tooltag)

        @browser.choose_store_button.should == mocked_tooltag
    end


    it "should have a chkoutconfirmemail bill to label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkoutconfirmemail_bill_to_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/ConfirmEmailAddress/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkoutconfirmemail_bill_to_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutconfirmemail_bill_to_label.should == mocked_tooltag
    end


    it "should have a handling with discount amount" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:handling_with_discount_amount).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:className).with("discount").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :handling_with_discount_amount).ordered.and_return(mocked_tooltag)

        @browser.handling_with_discount_amount.should == mocked_tooltag
    end


    it "should have a add address button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:add_address_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/AddShippingButton$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :add_address_button).ordered.and_return(mocked_tooltag)

        @browser.add_address_button.should == mocked_tooltag
    end


    it "should have a add billing address button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:add_billing_address_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/AddBillingButton$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :add_billing_address_button).ordered.and_return(mocked_tooltag)

        @browser.add_billing_address_button.should == mocked_tooltag
    end


    it "should have a create account link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-submitbtn").ordered.and_return("ats-submitbtn")
        mocked_a.should_receive(:className).with("ats-submitbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_link).ordered.and_return(mocked_tooltag)

        @browser.create_account_link.should == mocked_tooltag
    end


    it "should have a create account panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-loginsliderpanel").ordered.and_return("ats-loginsliderpanel")
        mocked_div.should_receive(:className).with("ats-loginsliderpanel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_panel).ordered.and_return(mocked_tooltag)

        @browser.create_account_panel.should == mocked_tooltag
    end


    it "should have a create account form email" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_form_email).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-createemailaddr").ordered.and_return("ats-createemailaddr")
        mocked_input.should_receive(:className).with("ats-createemailaddr").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_form_email).ordered.and_return(mocked_tooltag)

        @browser.create_account_form_email.should == mocked_tooltag
    end


    it "should have a create account form confirm email" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_form_confirm_email).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmemailaddrfield").ordered.and_return("ats-confirmemailaddrfield")
        mocked_input.should_receive(:className).with("ats-confirmemailaddrfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_form_confirm_email).ordered.and_return(mocked_tooltag)

        @browser.create_account_form_confirm_email.should == mocked_tooltag
    end


    it "should have a create account form confirm password" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_form_confirm_password).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmpwdfield").ordered.and_return("ats-confirmpwdfield")
        mocked_input.should_receive(:className).with("ats-confirmpwdfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_form_confirm_password).ordered.and_return(mocked_tooltag)

        @browser.create_account_form_confirm_password.should == mocked_tooltag
    end


    it "should have a create account form password" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_form_password).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-createpwdfield").ordered.and_return("ats-createpwdfield")
        mocked_input.should_receive(:className).with("ats-createpwdfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_form_password).ordered.and_return(mocked_tooltag)

        @browser.create_account_form_password.should == mocked_tooltag
    end


    it "should have a create account form submit button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_form_submit_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-createacctbtn").ordered.and_return("ats-createacctbtn")
        mocked_a.should_receive(:className).with("ats-createacctbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_form_submit_button).ordered.and_return(mocked_tooltag)

        @browser.create_account_form_submit_button.should == mocked_tooltag
    end


    it "should have a create account form cancel button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_form_cancel_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-cancelbtn").ordered.and_return("ats-cancelbtn")
        mocked_a.should_receive(:className).with("ats-cancelbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_form_cancel_button).ordered.and_return(mocked_tooltag)

        @browser.create_account_form_cancel_button.should == mocked_tooltag
    end


    it "should have a continue checkout button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:continue_checkout_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-checkoutbtn").ordered.and_return("ats-checkoutbtn")
        mocked_a.should_receive(:className).with("ats-checkoutbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :continue_checkout_button).ordered.and_return(mocked_tooltag)

        @browser.continue_checkout_button.should == mocked_tooltag
    end


    it "should have a billing address label" do
        mocked_tooltag = double("ToolTag")
        mocked_h2 = double("h2")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:billing_address_label).ordered

        @browser.should_receive(:h2).ordered.and_return(mocked_h2)
        @browser.should_receive(:create_ats_regex_string).with("ats-billingaddresslbl").ordered.and_return("ats-billingaddresslbl")
        mocked_h2.should_receive(:className).with("ats-billingaddresslbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :billing_address_label).ordered.and_return(mocked_tooltag)

        @browser.billing_address_label.should == mocked_tooltag
    end


    it "should have a chkcountry label" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:chkcountry_label).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-countryfield").ordered.and_return("ats-countryfield")
        mocked_select.should_receive(:className).with("ats-countryfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkcountry_label).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.chkcountry_label.should == mocked_gamestopselector
    end


    it "should have a wallet label" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:wallet_label).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("walletCards").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :wallet_label).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.wallet_label.should == mocked_gamestopselector
    end


    it "should have a chkoutfirstname label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutfirstname_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-fnamefield").ordered.and_return("ats-fnamefield")
        mocked_input.should_receive(:className).with("ats-fnamefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutfirstname_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutfirstname_label.should == mocked_tooltag
    end


    it "should have a chkoutlastname label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutlastname_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-lnamefield").ordered.and_return("ats-lnamefield")
        mocked_input.should_receive(:className).with("ats-lnamefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutlastname_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutlastname_label.should == mocked_tooltag
    end


    it "should have a chkoutaddress1 label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutaddress1_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-line1field").ordered.and_return("ats-line1field")
        mocked_input.should_receive(:className).with("ats-line1field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutaddress1_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutaddress1_label.should == mocked_tooltag
    end


    it "should have a chkoutaddress2 label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutaddress2_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-line2field").ordered.and_return("ats-line2field")
        mocked_input.should_receive(:className).with("ats-line2field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutaddress2_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutaddress2_label.should == mocked_tooltag
    end


    it "should have a chkoutcity label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutcity_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-cityfield").ordered.and_return("ats-cityfield")
        mocked_input.should_receive(:className).with("ats-cityfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcity_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutcity_label.should == mocked_tooltag
    end


    it "should have a chkoutstate label" do
        mocked_jquery = double("jquery")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:chkoutstate_label).ordered

        @browser.should_receive(:jquery).with("select[class~='ats-usstate']").ordered.and_return(mocked_jquery)
        GameStopSelector.should_receive(:new).with(mocked_jquery).ordered.and_return(mocked_gamestopselector)

        @browser.chkoutstate_label.should == mocked_gamestopselector
    end


    it "should have a chkoutzip label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutzip_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-postalcodefield").ordered.and_return("ats-postalcodefield")
        mocked_input.should_receive(:className).with("ats-postalcodefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutzip_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutzip_label.should == mocked_tooltag
    end


    it "should have a chkoutphonenumber label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutphonenumber_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-phonefield").ordered.and_return("ats-phonefield")
        mocked_input.should_receive(:className).with("ats-phonefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutphonenumber_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutphonenumber_label.should == mocked_tooltag
    end


    it "should have a chkoutpurchaseemail label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutpurchaseemail_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-emailfield").ordered.and_return("ats-emailfield")
        mocked_input.should_receive(:className).with("ats-emailfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutpurchaseemail_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutpurchaseemail_label.should == mocked_tooltag
    end


    it "should have a chkoutconfirmemail label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkoutconfirmemail_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/ShipTo_ConfirmEmailAddress/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkoutconfirmemail_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutconfirmemail_label.should == mocked_tooltag
    end


    it "should have a chkoutweeklyadoffers label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutweeklyadoffers_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-optinbox").ordered.and_return("ats-optinbox")
        mocked_input.should_receive(:className).with("ats-optinbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutweeklyadoffers_label).ordered.and_return(mocked_tooltag)

        @browser.chkoutweeklyadoffers_label.should == mocked_tooltag
    end


    it "should have a shipping address label" do
        mocked_tooltag = double("ToolTag")
        mocked_h2 = double("h2")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_address_label).ordered

        @browser.should_receive(:h2).ordered.and_return(mocked_h2)
        @browser.should_receive(:create_ats_regex_string).with("ats-shippingaddresslbl").ordered.and_return("ats-shippingaddresslbl")
        mocked_h2.should_receive(:className).with("ats-shippingaddresslbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_address_label).ordered.and_return(mocked_tooltag)

        @browser.shipping_address_label.should == mocked_tooltag
    end


    it "should have a handling options label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")

        $tracer.should_receive(:trace).with(:handling_options_label).ordered

        @browser.should_receive(:span).with("Handling Options").ordered.and_return(mocked_span)
        ToolTag.should_receive(:new).with(mocked_span, :handling_options_label).ordered.and_return(mocked_tooltag)

        @browser.handling_options_label.should == mocked_tooltag
    end


    it "should have a handling method buttons" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestophandlingmethodradiobuttons = double("GameStopHandlingMethodRadioButtons")

        $tracer.should_receive(:trace).with(:handling_method_buttons).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/hmethod/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :handling_method_buttons).ordered.and_return(mocked_tooltag)
        GameStopHandlingMethodRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestophandlingmethodradiobuttons)

        @browser.handling_method_buttons.should == mocked_gamestophandlingmethodradiobuttons
    end


    it "should have a handling options page panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestophandlingpagepanel = double("GameStopHandlingPagePanel")

        $tracer.should_receive(:trace).with(:handling_options_page_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/region/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :handling_options_page_panel).ordered.and_return(mocked_tooltag)
        GameStopHandlingPagePanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestophandlingpagepanel)

        @browser.handling_options_page_panel.should == mocked_gamestophandlingpagepanel
    end


    it "should have a submit order button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:submit_order_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-submitorder").ordered.and_return("ats-submitorder")
        mocked_a.should_receive(:className).with("ats-submitorder").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :submit_order_button).ordered.and_return(mocked_tooltag)

        @browser.submit_order_button.should == mocked_tooltag
    end


    it "should have a chkoutbuy ordersummary button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutbuy_ordersummary_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-ordersummarybtn").ordered.and_return("ats-ordersummarybtn")
        mocked_a.should_receive(:className).with("ats-ordersummarybtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutbuy_ordersummary_button).ordered.and_return(mocked_tooltag)

        @browser.chkoutbuy_ordersummary_button.should == mocked_tooltag
    end


    it "should have a chkoutgift message checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutgift_message_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftmsgcheckbox").ordered.and_return("ats-giftmsgcheckbox")
        mocked_input.should_receive(:className).with("ats-giftmsgcheckbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutgift_message_checkbox).ordered.and_return(mocked_tooltag)

        @browser.chkoutgift_message_checkbox.should == mocked_tooltag
    end


    it "should have a chkoutgift message field" do
        mocked_tooltag = double("ToolTag")
        mocked_textarea = double("textarea")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutgift_message_field).ordered

        @browser.should_receive(:textarea).ordered.and_return(mocked_textarea)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftmsgform").ordered.and_return("ats-giftmsgform")
        mocked_textarea.should_receive(:className).with("ats-giftmsgform").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutgift_message_field).ordered.and_return(mocked_tooltag)

        @browser.chkoutgift_message_field.should == mocked_tooltag
    end


    it "should have a gift message checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_message_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftmsgcheckbox").ordered.and_return("ats-giftmsgcheckbox")
        mocked_input.should_receive(:className).with("ats-giftmsgcheckbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_message_checkbox).ordered.and_return(mocked_tooltag)

        @browser.gift_message_checkbox.should == mocked_tooltag
    end


    it "should have a gift message field" do
        mocked_tooltag = double("ToolTag")
        mocked_textarea = double("textarea")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:gift_message_field).ordered

        @browser.should_receive(:textarea).ordered.and_return(mocked_textarea)
        mocked_textarea.should_receive(:id).with("/tbGiftMessage/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :gift_message_field).ordered.and_return(mocked_tooltag)

        @browser.gift_message_field.should == mocked_tooltag
    end


    it "should have a order confirmation label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_confirmation_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-orderconfirmlabel").ordered.and_return("ats-orderconfirmlabel")
        mocked_div.should_receive(:className).with("ats-orderconfirmlabel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_confirmation_label).ordered.and_return(mocked_tooltag)

        @browser.order_confirmation_label.should == mocked_tooltag
    end

    it "should have a order confirmation number that is digits" do
        $tracer.should_receive(:trace).with(:order_confirmation_number).ordered

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-orderconfirmlabel").ordered.and_return("ats-orderconfirmlabel")
        mocked_className = double("className")
        mocked_div.should_receive(:className).with("ats-orderconfirmlabel").ordered.and_return(mocked_className)
        mocked_className.should_receive(:innerText).with(no_args).ordered.and_return("1234567890")

        $tracer.should_receive(:trace).with("Order Confirmation Number: 1234567890")

        @browser.order_confirmation_number.should == "1234567890"
    end

    it "should have a order confirmation number that has number as last digits of inner text" do
        $tracer.should_receive(:trace).with(:order_confirmation_number).ordered

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-orderconfirmlabel").ordered.and_return("ats-orderconfirmlabel")
        mocked_className = double("className")
        mocked_div.should_receive(:className).with("ats-orderconfirmlabel").ordered.and_return(mocked_className)
        mocked_className.should_receive(:innerText).with(no_args).ordered.and_return("Some Number 1234567890")

        $tracer.should_receive(:trace).with("Order Confirmation Number: 1234567890")

        @browser.order_confirmation_number.should == "1234567890"
    end

    it "should have a order summary panel" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_gamestopordersummarypanel = double("GameStopOrderSummaryPanel")

        $tracer.should_receive(:trace).with(:order_summary_panel).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("ordersum_table").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :order_summary_panel).ordered.and_return(mocked_tooltag)
        GameStopOrderSummaryPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopordersummarypanel)

        @browser.order_summary_panel.should == mocked_gamestopordersummarypanel
    end


    it "should have a order total panel" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_className = double("className")
        mocked_gamestopordertotalpanel = double("GameStopOrderTotalPanel")

        $tracer.should_receive(:trace).with(:order_total_panel).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:className).with("ordersummary").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_total_panel).ordered.and_return(mocked_tooltag)
        GameStopOrderTotalPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopordertotalpanel)

        @browser.order_total_panel.should == mocked_gamestopordertotalpanel
    end


    it "should have a seventeen or older button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:seventeen_or_older_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-ofagebtn").ordered.and_return("ats-ofagebtn")
        mocked_a.should_receive(:className).with("ats-ofagebtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :seventeen_or_older_button).ordered.and_return(mocked_tooltag)

        @browser.seventeen_or_older_button.should == mocked_tooltag
    end


    it "should have a chkoutbuy as guest button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:chkoutbuy_as_guest_button).ordered

        @browser.should_receive(:jquery).with("a[class~='ats-buyasguest'], input[name$='BuyAsGuestImageButton']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :chkoutbuy_as_guest_button).ordered.and_return(mocked_tooltag)

        @browser.chkoutbuy_as_guest_button.should == mocked_tooltag
    end


    it "should have a guest login create account no thanks link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:guest_login_create_account_no_thanks_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/CreateAccountModal1_btnClose/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :guest_login_create_account_no_thanks_link).ordered.and_return(mocked_tooltag)

        @browser.guest_login_create_account_no_thanks_link.should == mocked_tooltag
    end


    it "should have a order summary panel" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_gamestopordersummarypanel = double("GameStopOrderSummaryPanel")

        $tracer.should_receive(:trace).with(:order_summary_panel).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("ordersum_table").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :order_summary_panel).ordered.and_return(mocked_tooltag)
        GameStopOrderSummaryPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopordersummarypanel)

        @browser.order_summary_panel.should == mocked_gamestopordersummarypanel
    end


    it "should have a order total panel" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_className = double("className")
        mocked_gamestopordertotalpanel = double("GameStopOrderTotalPanel")

        $tracer.should_receive(:trace).with(:order_total_panel).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:className).with("ordersummary").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_total_panel).ordered.and_return(mocked_tooltag)
        GameStopOrderTotalPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopordertotalpanel)

        @browser.order_total_panel.should == mocked_gamestopordertotalpanel
    end


    it "should have a same address checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:same_address_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-sameaddressoptinbox").ordered.and_return("ats-sameaddressoptinbox")
        mocked_input.should_receive(:className).with("ats-sameaddressoptinbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :same_address_checkbox).ordered.and_return(mocked_tooltag)

        @browser.same_address_checkbox.should == mocked_tooltag
    end


    it "should have a payment card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:payment_card_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/GiftCard_AccountNumber_TextBox/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :payment_card_number_field).ordered.and_return(mocked_tooltag)

        @browser.payment_card_number_field.should == mocked_tooltag
    end


    it "should have a payment card pin field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:payment_card_pin_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/GiftCard_Pin_TextBox/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :payment_card_pin_field).ordered.and_return(mocked_tooltag)

        @browser.payment_card_pin_field.should == mocked_tooltag
    end


    it "should have a address summary value" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:address_summary_value).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/lblAddressDetails$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_summary_value).ordered.and_return(mocked_tooltag)

        @browser.address_summary_value.should == mocked_tooltag
    end


    it "should have a edit shipping address link" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:edit_shipping_address_link).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:href).with("/Addresses$/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :edit_shipping_address_link).ordered.and_return(mocked_tooltag)

        @browser.edit_shipping_address_link.should == mocked_tooltag
    end


    it "should have a save address link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:save_address_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/btnSubmitAddress$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :save_address_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.save_address_link.should == mocked_tooltag
    end


    it "should have a gift message label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:gift_message_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/lDisplayGiftMessage$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :gift_message_label).ordered.and_return(mocked_tooltag)

        @browser.gift_message_label.should == mocked_tooltag
    end


    it "should have a gift message value" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:gift_message_value).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/lPhysicalGiftMessage$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :gift_message_value).ordered.and_return(mocked_tooltag)

        @browser.gift_message_value.should == mocked_tooltag
    end


    it "should have a credit card type required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_type_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/CreditCardType_Validator$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_type_required_label).ordered.and_return(mocked_tooltag)

        @browser.credit_card_type_required_label.should == mocked_tooltag
    end


    it "should have a credit card number required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_number_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/CreditCardNumber_Validator$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_number_required_label).ordered.and_return(mocked_tooltag)

        @browser.credit_card_number_required_label.should == mocked_tooltag
    end


    it "should have a credit card month required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_month_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/ExpirationMonth_Validator$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_month_required_label).ordered.and_return(mocked_tooltag)

        @browser.credit_card_month_required_label.should == mocked_tooltag
    end


    it "should have a credit card year required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_year_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/ExpirationYear_Validator$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_year_required_label).ordered.and_return(mocked_tooltag)

        @browser.credit_card_year_required_label.should == mocked_tooltag
    end


    it "should have a credit card date invalid label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_date_invalid_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/CCDateInvalidVal$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_date_invalid_label).ordered.and_return(mocked_tooltag)

        @browser.credit_card_date_invalid_label.should == mocked_tooltag
    end


    it "should have a credit card number invalid label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_number_invalid_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/CreditCardNumber_Mod10$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_number_invalid_label).ordered.and_return(mocked_tooltag)

        @browser.credit_card_number_invalid_label.should == mocked_tooltag
    end


    it "should have a view handling rate link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:view_handling_rate_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/ShippingHandlingFeeHyperLink$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :view_handling_rate_link).ordered.and_return(mocked_tooltag)

        @browser.view_handling_rate_link.should == mocked_tooltag
    end


    it "should have a checkout shipping address panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:checkout_shipping_address_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("sub_group_leftbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :checkout_shipping_address_panel).ordered.and_return(mocked_tooltag)

        @browser.checkout_shipping_address_panel.should == mocked_tooltag
    end


    it "should have a order confirmation shipping address value" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_confirmation_shipping_address_value).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("shipbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_confirmation_shipping_address_value).ordered.and_return(mocked_tooltag)

        @browser.order_confirmation_shipping_address_value.should == mocked_tooltag
    end


    it "should have a order confirmation billing address value" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_confirmation_billing_address_value).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("billbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_confirmation_billing_address_value).ordered.and_return(mocked_tooltag)

        @browser.order_confirmation_billing_address_value.should == mocked_tooltag
    end


    it "should have a choose a different address link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:choose_a_different_address_link).ordered

        @browser.should_receive(:a).with("Choose a different address").ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :choose_a_different_address_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.choose_a_different_address_link.should == mocked_tooltag
    end


    it "should have a choose a different store link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:choose_a_different_store_link).ordered

        @browser.should_receive(:a).with("Choose a different store").ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :choose_a_different_store_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.choose_a_different_store_link.should == mocked_tooltag
    end


    it "should have a in store pickup phone number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:in_store_pickup_phone_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/txtISPPhone$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :in_store_pickup_phone_number_field).ordered.and_return(mocked_tooltag)

        @browser.in_store_pickup_phone_number_field.should == mocked_tooltag
    end


    it "should have a popup store panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_gamestoppopupstorepanel = double("GameStopPopupStorePanel")

        $tracer.should_receive(:trace).with(:popup_store_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/popAddressSelection_pnlPopup/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :popup_store_panel).ordered.and_return(mocked_tooltag)
        GameStopPopupStorePanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestoppopupstorepanel)

        @browser.popup_store_panel.should == mocked_gamestoppopupstorepanel
    end


    it "should have a pick up in a store instead link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:pick_up_in_a_store_instead_link).ordered

        @browser.should_receive(:a).with("/Pick up in a store instead/").ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :pick_up_in_a_store_instead_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.pick_up_in_a_store_instead_link.should == mocked_tooltag
    end


    it "should have a shipping methods error label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:shipping_methods_error_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/ShippingMethodSelection$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :shipping_methods_error_label).ordered.and_return(mocked_tooltag)

        @browser.shipping_methods_error_label.should == mocked_tooltag
    end


    it "should have a in store pickup phone required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:in_store_pickup_phone_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/rfvISPPhone$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :in_store_pickup_phone_required_label).ordered.and_return(mocked_tooltag)

        @browser.in_store_pickup_phone_required_label.should == mocked_tooltag
    end


    it "should have a in store pickup phone invalid label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:in_store_pickup_phone_invalid_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/ISPPhoneFormatRegEx$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :in_store_pickup_phone_invalid_label).ordered.and_return(mocked_tooltag)

        @browser.in_store_pickup_phone_invalid_label.should == mocked_tooltag
    end


    it "should have a activate powerup rewards popup panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_activatepoweruprewardspopuppanel = double("ActivatePowerupRewardsPopupPanel")

        $tracer.should_receive(:trace).with(:activate_powerup_rewards_popup_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/activatePURModal$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :activate_powerup_rewards_popup_panel).ordered.and_return(mocked_tooltag)
        ActivatePowerupRewardsPopupPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_activatepoweruprewardspopuppanel)

        @browser.activate_powerup_rewards_popup_panel.should == mocked_activatepoweruprewardspopuppanel
    end


    it "should have a merge accounts popup panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_mergeaccountspopuppanel = double("MergeAccountsPopupPanel")

        $tracer.should_receive(:trace).with(:merge_accounts_popup_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/MergeAccountsModal1/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :merge_accounts_popup_panel).ordered.and_return(mocked_tooltag)
        MergeAccountsPopupPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mergeaccountspopuppanel)

        @browser.merge_accounts_popup_panel.should == mocked_mergeaccountspopuppanel
    end


    it "should have a chkoutcredit cardtype selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:chkoutcredit_cardtype_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-cardtype").ordered.and_return("ats-cardtype")
        mocked_select.should_receive(:className).with("ats-cardtype").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_cardtype_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.chkoutcredit_cardtype_selector.should == mocked_gamestopselector
    end


    it "should have a chkoutcredit card month selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_month_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-expmonth").ordered.and_return("ats-expmonth")
        mocked_select.should_receive(:className).with("ats-expmonth").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_month_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.chkoutcredit_card_month_selector.should == mocked_gamestopselector
    end


    it "should have a chkoutcredit card year selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_year_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-expyear").ordered.and_return("ats-expyear")
        mocked_select.should_receive(:className).with("ats-expyear").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_year_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.chkoutcredit_card_year_selector.should == mocked_gamestopselector
    end


    it "should have a chkoutcredit card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-ccnumber").ordered.and_return("ats-ccnumber")
        mocked_input.should_receive(:className).with("ats-ccnumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_number_field).ordered.and_return(mocked_tooltag)

        @browser.chkoutcredit_card_number_field.should == mocked_tooltag
    end


    it "should have a chkoutadd digital wallet" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutadd_digital_wallet).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-addcctowallet").ordered.and_return("ats-addcctowallet")
        mocked_input.should_receive(:className).with("ats-addcctowallet").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutadd_digital_wallet).ordered.and_return(mocked_tooltag)

        @browser.chkoutadd_digital_wallet.should == mocked_tooltag
    end


    it "should have a chkoutcredit card security field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_security_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-securitycode").ordered.and_return("ats-securitycode")
        mocked_input.should_receive(:className).with("ats-securitycode").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_security_field).ordered.and_return(mocked_tooltag)

        @browser.chkoutcredit_card_security_field.should == mocked_tooltag
    end


    it "should have a chkoutcredit card invalid field" do
        mocked_tooltag = double("ToolTag")
        mocked_id = double("id")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_invalid_field).ordered

        @browser.should_receive(:id).ordered.and_return(mocked_id)
        @browser.should_receive(:create_ats_regex_string).with("ats-creditcardinvalidmsg").ordered.and_return("ats-creditcardinvalidmsg")
        mocked_id.should_receive(:className).with("ats-creditcardinvalidmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_invalid_field).ordered.and_return(mocked_tooltag)

        @browser.chkoutcredit_card_invalid_field.should == mocked_tooltag
    end


    it "should have a chkoutcredit card invalid expiration field" do
        mocked_tooltag = double("ToolTag")
        mocked_id = double("id")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_invalid_expiration_field).ordered

        @browser.should_receive(:id).ordered.and_return(mocked_id)
        @browser.should_receive(:create_ats_regex_string).with("ats-ccexpirationinvalidmsg").ordered.and_return("ats-ccexpirationinvalidmsg")
        mocked_id.should_receive(:className).with("ats-ccexpirationinvalidmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_invalid_expiration_field).ordered.and_return(mocked_tooltag)

        @browser.chkoutcredit_card_invalid_expiration_field.should == mocked_tooltag
    end


    it "should have a chkoutcredit card invalid securitycode field" do
        mocked_tooltag = double("ToolTag")
        mocked_id = double("id")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkoutcredit_card_invalid_securitycode_field).ordered

        @browser.should_receive(:id).ordered.and_return(mocked_id)
        @browser.should_receive(:create_ats_regex_string).with("ats-securitycodeinvalidmsg").ordered.and_return("ats-securitycodeinvalidmsg")
        mocked_id.should_receive(:className).with("ats-securitycodeinvalidmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkoutcredit_card_invalid_securitycode_field).ordered.and_return(mocked_tooltag)

        @browser.chkoutcredit_card_invalid_securitycode_field.should == mocked_tooltag
    end


    it "should have a review first name label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_first_name_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("addr-firstname").ordered.and_return("addr-firstname")
        mocked_span.should_receive(:className).with("addr-firstname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_first_name_label).ordered.and_return(mocked_tooltag)

        @browser.review_first_name_label.should == mocked_tooltag
    end


    it "should have a review last name label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_last_name_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("addr-lastname").ordered.and_return("addr-lastname")
        mocked_span.should_receive(:className).with("addr-lastname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_last_name_label).ordered.and_return(mocked_tooltag)

        @browser.review_last_name_label.should == mocked_tooltag
    end


    it "should have a review address1 label" do
        mocked_tooltag = double("ToolTag")
        mocked_address = double("address")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_address1_label).ordered

        @browser.should_receive(:address).ordered.and_return(mocked_address)
        @browser.should_receive(:create_ats_regex_string).with("addr-line1").ordered.and_return("addr-line1")
        mocked_address.should_receive(:className).with("addr-line1").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_address1_label).ordered.and_return(mocked_tooltag)

        @browser.review_address1_label.should == mocked_tooltag
    end


    it "should have a review city label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_city_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("addr-city").ordered.and_return("addr-city")
        mocked_span.should_receive(:className).with("addr-city").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_city_label).ordered.and_return(mocked_tooltag)

        @browser.review_city_label.should == mocked_tooltag
    end


    it "should have a review state label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_state_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("addr-state").ordered.and_return("addr-state")
        mocked_span.should_receive(:className).with("addr-state").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_state_label).ordered.and_return(mocked_tooltag)

        @browser.review_state_label.should == mocked_tooltag
    end


    it "should have a review postal code label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_postal_code_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("addr-postalcode").ordered.and_return("addr-postalcode")
        mocked_span.should_receive(:className).with("addr-postalcode").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_postal_code_label).ordered.and_return(mocked_tooltag)

        @browser.review_postal_code_label.should == mocked_tooltag
    end


    it "should have a review country label" do
        mocked_tooltag = double("ToolTag")
        mocked_address = double("address")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_country_label).ordered

        @browser.should_receive(:address).ordered.and_return(mocked_address)
        @browser.should_receive(:create_ats_regex_string).with("addr-countryname").ordered.and_return("addr-countryname")
        mocked_address.should_receive(:className).with("addr-countryname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_country_label).ordered.and_return(mocked_tooltag)

        @browser.review_country_label.should == mocked_tooltag
    end


    it "should have a review phone label" do
        mocked_tooltag = double("ToolTag")
        mocked_address = double("address")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:review_phone_label).ordered

        @browser.should_receive(:address).ordered.and_return(mocked_address)
        @browser.should_receive(:create_ats_regex_string).with("addr-phonenumber").ordered.and_return("addr-phonenumber")
        mocked_address.should_receive(:className).with("addr-phonenumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :review_phone_label).ordered.and_return(mocked_tooltag)

        @browser.review_phone_label.should == mocked_tooltag
    end


    it "should have a preview order button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:preview_order_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-ordersummarybtn").ordered.and_return("ats-ordersummarybtn")
        mocked_a.should_receive(:className).with("ats-ordersummarybtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :preview_order_button).ordered.and_return(mocked_tooltag)

        @browser.preview_order_button.should == mocked_tooltag
    end


    it "should have a order summary subtotal" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_summary_subtotal).ordered

        @browser.should_receive(:jquery).with("label[data-bind*='SubTotal']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_summary_subtotal).ordered.and_return(mocked_tooltag)

        @browser.order_summary_subtotal.should == mocked_tooltag
    end


    it "should have a order summary tax" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_summary_tax).ordered

        @browser.should_receive(:jquery).with("label[data-bind*='EstimatedTax']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_summary_tax).ordered.and_return(mocked_tooltag)

        @browser.order_summary_tax.should == mocked_tooltag
    end


    it "should have a order summary handling" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_summary_handling).ordered

        @browser.should_receive(:jquery).with("label[data-bind*='ShippingCost']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_summary_handling).ordered.and_return(mocked_tooltag)

        @browser.order_summary_handling.should == mocked_tooltag
    end


    it "should have a order summary total" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_summary_total).ordered

        @browser.should_receive(:jquery).with("label[data-bind*='OrderTotal']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_summary_total).ordered.and_return(mocked_tooltag)

        @browser.order_summary_total.should == mocked_tooltag
    end


    it "should have a confirm order details panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestopordereditempanel = double("GameStopOrderedItemPanel")

        $tracer.should_receive(:trace).with(:confirm_order_details_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmorderdetails").ordered.and_return("ats-confirmorderdetails")
        mocked_div.should_receive(:className).with("ats-confirmorderdetails").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_order_details_panel).ordered.and_return(mocked_tooltag)
        GameStopOrderedItemPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopordereditempanel)

        @browser.confirm_order_details_panel.should == mocked_gamestopordereditempanel
    end


    it "should have a confirm order note" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:confirm_order_note).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmordernote").ordered.and_return("ats-confirmordernote")
        mocked_div.should_receive(:className).with("ats-confirmordernote").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_order_note).ordered.and_return(mocked_tooltag)

        @browser.confirm_order_note.should == mocked_tooltag
    end


    it "should have a confirm payment panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_confirmpaymentpanel = double("ConfirmPaymentPanel")

        $tracer.should_receive(:trace).with(:confirm_payment_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmpymtbox").ordered.and_return("ats-confirmpymtbox")
        mocked_div.should_receive(:className).with("ats-confirmpymtbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_payment_panel).ordered.and_return(mocked_tooltag)
        ConfirmPaymentPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_confirmpaymentpanel)

        @browser.confirm_payment_panel.should == mocked_confirmpaymentpanel
    end


    it "should have a confirm shipping address panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_confirmshipaddresspanel = double("ConfirmShipAddressPanel")

        $tracer.should_receive(:trace).with(:confirm_shipping_address_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("shipbox").ordered.and_return("shipbox")
        mocked_div.should_receive(:className).with("shipbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_shipping_address_panel).ordered.and_return(mocked_tooltag)
        ConfirmShipAddressPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_confirmshipaddresspanel)

        @browser.confirm_shipping_address_panel.should == mocked_confirmshipaddresspanel
    end


    it "should have a confirm handling method panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_confirmshipaddresspanel = double("ConfirmShipAddressPanel")

        $tracer.should_receive(:trace).with(:confirm_handling_method_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("handlingbox").ordered.and_return("handlingbox")
        mocked_div.should_receive(:className).with("handlingbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_handling_method_panel).ordered.and_return(mocked_tooltag)
        ConfirmShipAddressPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_confirmshipaddresspanel)

        @browser.confirm_handling_method_panel.should == mocked_confirmshipaddresspanel
    end


    it "should have a confirm billing address panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_confirmbilladdresspanel = double("ConfirmBillAddressPanel")

        $tracer.should_receive(:trace).with(:confirm_billing_address_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("billbox").ordered.and_return("billbox")
        mocked_div.should_receive(:className).with("billbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_billing_address_panel).ordered.and_return(mocked_tooltag)
        ConfirmBillAddressPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_confirmbilladdresspanel)

        @browser.confirm_billing_address_panel.should == mocked_confirmbilladdresspanel
    end


    it "should have a create acct modal panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_createacctmodal = double("CreateAcctModal")

        $tracer.should_receive(:trace).with(:create_acct_modal_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("overlayform").ordered.and_return("overlayform")
        mocked_div.should_receive(:className).with("overlayform").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_acct_modal_panel).ordered.and_return(mocked_tooltag)
        CreateAcctModal.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_createacctmodal)

        @browser.create_acct_modal_panel.should == mocked_createacctmodal
    end

		it "should have a confirm subtotal value" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:confirm_subtotal_value).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmationsubtotal").ordered.and_return("ats-confirmationsubtotal")
        mocked_td.should_receive(:className).with("ats-confirmationsubtotal").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_subtotal_value).ordered.and_return(mocked_tooltag)

        @browser.confirm_subtotal_value.should == mocked_tooltag
    end
		
		it "should have an error message label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:error_message_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-errormsg").ordered.and_return("ats-errormsg")
        mocked_span.should_receive(:className).with("ats-errormsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :error_message_label).ordered.and_return(mocked_tooltag)

        @browser.error_message_label.should == mocked_tooltag
    end
			
	 it "should have a province dropdown" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:chkoutprovince_label).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("/CAProvinces/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkoutprovince_label).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.chkoutprovince_label.should == mocked_gamestopselector
    end
		
		it "should have under_seventeen_button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:under_seventeen_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-underagebtn").ordered.and_return("ats-underagebtn")
        mocked_a.should_receive(:className).with("ats-underagebtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :under_seventeen_button).ordered.and_return(mocked_tooltag)

        @browser.under_seventeen_button.should == mocked_tooltag
    end
		
		it "should have an cart_info_message" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_info_message).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-infomsg").ordered.and_return("ats-infomsg")
        mocked_span.should_receive(:className).with("ats-infomsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_info_message).ordered.and_return(mocked_tooltag)

        @browser.cart_info_message.should == mocked_tooltag
    end

		it "should have a confirm_order_discount_panel" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_className = double("className")
				mocked_tbody = double("tbody")
				mocked_find = double("find")
				mocked_tr = double("tr")
        mocked_gamestopdiscountpanel = double("GameStopDiscountPanel")

        $tracer.should_receive(:trace).with(:confirm_order_discount_panel).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:className).with("ats-confirmordersummary").ordered.and_return(mocked_className)
				mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
				mocked_tbody.should_receive(:find).ordered.and_return(mocked_find)
				mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
				mocked_tr.should_receive(:className).with("discount").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_order_discount_panel).ordered.and_return(mocked_tooltag)
        GameStopDiscountPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopdiscountpanel)

        @browser.confirm_order_discount_panel.should == mocked_gamestopdiscountpanel
    end

		it "should have a confirm prediscount subtotal" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:confirm_prediscount_subtotal).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmationprediscountsubtotal").ordered.and_return("ats-confirmationprediscountsubtotal")
        mocked_td.should_receive(:className).with("ats-confirmationprediscountsubtotal").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_prediscount_subtotal).ordered.and_return(mocked_tooltag)

        @browser.confirm_prediscount_subtotal.should == mocked_tooltag
    end

		it "should have a gift card message in payment screen" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:gift_card_message).ordered

        @browser.should_receive(:jquery).with("span[data-bind*='GiftMessage']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :gift_card_message).ordered.and_return(mocked_tooltag)

        @browser.gift_card_message.should == mocked_tooltag
    end
		
		it "should have add gift card checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:gift_card_message_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/AddGiftMessage/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :gift_card_message_checkbox).ordered.and_return(mocked_tooltag)

        @browser.gift_card_message_checkbox.should == mocked_tooltag
    end
		
		it "should have gift message text area" do
        mocked_tooltag = double("ToolTag")
        mocked_textarea = double("textarea")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:create_gift_card_message).ordered

        @browser.should_receive(:textarea).ordered.and_return(mocked_textarea)
        mocked_textarea.should_receive(:id).with("/GiftMessage/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :create_gift_card_message).ordered.and_return(mocked_tooltag)

        @browser.create_gift_card_message.should == mocked_tooltag
    end

		it "should have an error message panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:error_msg_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-errormsgpanel").ordered.and_return("ats-errormsgpanel")
        mocked_div.should_receive(:className).with("ats-errormsgpanel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :error_msg_panel).ordered.and_return(mocked_tooltag)

        @browser.error_msg_panel.should == mocked_tooltag
    end

    it "should have continue_checkout_anchor_button_handling" do
       mocked_tooltag = double("ToolTag")
       mocked_a = double("a")
       mocked_className = double("className")

       $tracer.should_receive(:trace).with(:continue_checkout_anchor_button_handling).ordered
       @browser.should_receive(:a).ordered.and_return(mocked_a)
       @browser.should_receive(:create_ats_regex_string).with("ats-checkoutbtn").ordered.and_return("ats-checkoutbtn")
       mocked_a.should_receive(:className).with("ats-checkoutbtn").ordered.and_return(mocked_className)
       ToolTag.should_receive(:new).with(mocked_className, :continue_checkout_anchor_button_handling, @browser).ordered.and_return(mocked_tooltag)

       @browser.continue_checkout_anchor_button_handling.should == mocked_tooltag
    end

    it "should have gs_search_field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_search_field).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-searchfield").ordered.and_return("ats-searchfield")
      mocked_input.should_receive(:className).with("ats-searchfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_search_field, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_search_field.should == mocked_tooltag

    end


    it "should have gs_results_header" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_results_header).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("results_header").ordered.and_return("results_header")
      mocked_div.should_receive(:className).with("results_header").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_results_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_results_header.should == mocked_tooltag

    end

    it "should have gs_product_info" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:gs_product_info).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("product_info").ordered.and_return("product_info")
      mocked_div.should_receive(:className).with("product_info").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :gs_product_info, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_product_info.should == mocked_tooltag
    end

    it "should have gs_add_to_cart" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_add_to_cart).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("addToCartTrackable").ordered.and_return("addToCartTrackable")
      mocked_input.should_receive(:className).with("addToCartTrackable").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_add_to_cart, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_add_to_cart.should == mocked_tooltag
    end

    it "should have gs_add_to_cart_a" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_add_to_cart_a).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("addToCartTrackable").ordered.and_return("addToCartTrackable")
      mocked_a.should_receive(:className).with("addToCartTrackable").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_add_to_cart_a, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_add_to_cart_a.should == mocked_tooltag
    end

    it "should have gs_add_to_cart_b" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_input = double("input")

      $tracer.should_receive(:trace).with(:gs_add_to_cart_b).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("purchase_info").ordered.and_return("purchase_info")
      mocked_div.should_receive(:className).with("purchase_info").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:input).ordered.and_return(mocked_input)
      ToolTag.should_receive(:new).with(mocked_input, :gs_add_to_cart_b, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_add_to_cart_b.should == mocked_tooltag
    end


    it "should have gs_hops_pickup_lnk" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_hops_pickup_lnk).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-hops-pickup-lnk").ordered.and_return("ats-hops-pickup-lnk")
      mocked_a.should_receive(:className).with("ats-hops-pickup-lnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_hops_pickup_lnk, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_hops_pickup_lnk.should == mocked_tooltag
    end

    it "should have gs_hops_pickup_submit_btn" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_hops_pickup_submit_btn).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-hops-pickup-lnk").ordered.and_return("ats-hops-pickup-lnk")
      mocked_input.should_receive(:className).with("ats-hops-pickup-lnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_hops_pickup_submit_btn, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_hops_pickup_submit_btn.should == mocked_tooltag
    end

    it "should have gs_purchase_info" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_purchase_info).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("purchase_info").ordered.and_return("purchase_info")
      mocked_div.should_receive(:className).with("purchase_info").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_purchase_info, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_purchase_info.should == mocked_tooltag
    end

    it "should have gs_ats_ftr_fullSite" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_ats_ftr_fullSite).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-ftr-fullSite").ordered.and_return("ats-ftr-fullSite")
      mocked_a.should_receive(:className).with("ats-ftr-fullSite").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_ats_ftr_fullSite, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_ats_ftr_fullSite.should == mocked_tooltag
    end

    it "should have gs_header_container" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id= double("id")
      mocked_script= double("script")

      $tracer.should_receive(:trace).with(:gs_header_container).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("headerContainer").ordered.and_return(mocked_id)
      mocked_id.should_receive(:script).ordered.and_return(mocked_script)
      ToolTag.should_receive(:new).with(mocked_script, :gs_header_container, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_header_container.should == mocked_tooltag
    end

    it "should have gs_header_container_d" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id= double("id")
      mocked_script= double("script")

      $tracer.should_receive(:trace).with(:gs_header_container_d).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("header").ordered.and_return(mocked_id)
      mocked_id.should_receive(:script).ordered.and_return(mocked_script)
      ToolTag.should_receive(:new).with(mocked_script, :gs_header_container_d, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_header_container_d.should == mocked_tooltag
    end

    it "should have gs_new_product" do

      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:gs_new_product).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("new_product").ordered.and_return("new_product")
      mocked_div.should_receive(:className).with("new_product").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :gs_new_product, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_new_product.should == mocked_tooltag
    end

    it "should have gs_ats_login" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_ats_login).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-login").ordered.and_return("ats-login")
      mocked_a.should_receive(:className).with("ats-login").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_ats_login, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_ats_login.should == mocked_tooltag
    end

    it "should have pickup_at_store_link_a" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pickup_at_store_link_a).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("purchase_info").ordered.and_return("purchase_info")
      mocked_div.should_receive(:className).with("purchase_info").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pickup_at_store_link_a, @browser).ordered.and_return(mocked_tooltag)

      @browser.pickup_at_store_link_a.should == mocked_tooltag
    end

    it "should have gs_cart_checkout_btn" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_cart_checkout_btn).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-checkoutbtn").ordered.and_return("ats-checkoutbtn")
      mocked_a.should_receive(:className).with("ats-checkoutbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_cart_checkout_btn, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_cart_checkout_btn.should == mocked_tooltag
    end

    it "should have gs_wrap" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_wrap).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("wrap").ordered.and_return("wrap")
      mocked_div.should_receive(:className).with("wrap").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_wrap, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_wrap.should == mocked_tooltag
    end

    it "should have gs_grid_20" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_grid_20).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("grid_20").ordered.and_return("grid_20")
      mocked_div.should_receive(:className).with("grid_20").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_grid_20, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_grid_20.should == mocked_tooltag
    end

    it "should have gs_checkout_title" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_h2 = double("h2")

      $tracer.should_receive(:trace).with(:gs_checkout_title).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("grid_20").ordered.and_return("grid_20")
      mocked_div.should_receive(:className).with("grid_20").ordered.and_return(mocked_className)
      mocked_className.should_receive(:h2).ordered.and_return(mocked_h2)
      ToolTag.should_receive(:new).with(mocked_h2, :gs_checkout_title, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_checkout_title.should == mocked_tooltag
    end

    it "should have gs_ats_submitorder" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_ats_submitorder).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-submitorder").ordered.and_return("ats-submitorder")
      mocked_a.should_receive(:className).with("ats-submitorder").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_ats_submitorder, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_ats_submitorder.should == mocked_tooltag
    end

    it "should have gs_ats_wish_list" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_ats_wish_list).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-wishlist").ordered.and_return("ats-wishlist")
      mocked_a.should_receive(:className).with("ats-wishlist").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_ats_wish_list, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_ats_wish_list.should == mocked_tooltag
    end

    it "should have gs_trade_pf_wiiu" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id= double("id")
      mocked_find= double("find")
      mocked_ol= double("ol")
      mocked_li = double("li")

      $tracer.should_receive(:trace).with(:gs_trade_pf_wiiu).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("pf_wiiu").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:ol).ordered.and_return(mocked_ol)
      mocked_ol.should_receive(:li).ordered.and_return(mocked_li)

      ToolTag.should_receive(:new).with(mocked_li, :gs_trade_pf_wiiu, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_trade_pf_wiiu.should == mocked_tooltag
    end

    it "should have gs_game_search" do

      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_id= double("id")

      $tracer.should_receive(:trace).with(:gs_game_search).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      mocked_input.should_receive(:id).with("gamesSearchbox").ordered.and_return(mocked_id)

      ToolTag.should_receive(:new).with(mocked_id, :gs_game_search, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_game_search.should == mocked_tooltag
    end

    it "should have gs_select_trade" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_select_trade).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("bttnSelectTrade").ordered.and_return("bttnSelectTrade")
      mocked_a.should_receive(:className).with("bttnSelectTrade").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_select_trade, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_select_trade.should == mocked_tooltag
    end

    it "should have gs_trade_search_menu" do
      mocked_tooltag = double("ToolTag")
      mocked_ul = double("ul")
      mocked_id= double("id")
      mocked_hgroup= double("hgroup")

      $tracer.should_receive(:trace).with(:gs_trade_search_menu).ordered
      @browser.should_receive(:ul).ordered.and_return(mocked_ul)
      mocked_ul.should_receive(:id).with("tradeSearchMenu").ordered.and_return(mocked_id)
      mocked_id.should_receive(:hgroup).ordered.and_return(mocked_hgroup)
      ToolTag.should_receive(:new).with(mocked_hgroup, :gs_trade_search_menu, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_trade_search_menu.should == mocked_tooltag
    end

    it "should have gs_save_estimate" do
      mocked_tooltag = double("ToolTag")
      mocked_button= double("buttton")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_save_estimate).ordered
      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("bttnSave").ordered.and_return("bttnSave")
      mocked_button.should_receive(:className).with("bttnSave").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_save_estimate, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_save_estimate.should == mocked_tooltag
    end

    it "should have gs_save_trade_link" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_save_trade_link).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("circleCount").ordered.and_return("circleCount")
      mocked_div.should_receive(:className).with("circleCount").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_save_trade_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_save_trade_link.should == mocked_tooltag
    end

    it "should have gs_form" do

      mocked_tooltag = double("ToolTag")
      mocked_form = double("form")

      $tracer.should_receive(:trace).with(:gs_form).ordered
      @browser.should_receive(:form).ordered.and_return(mocked_form)
      ToolTag.should_receive(:new).with(mocked_form, :gs_form, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_form.should == mocked_tooltag
    end

    it "should have gs_pickup_at_store_search" do

      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_pickup_at_store_search).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("zip_input").ordered.and_return("zip_input")
      mocked_input.should_receive(:className).with("zip_input").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_pickup_at_store_search, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_pickup_at_store_search.should == mocked_tooltag
    end

    it "should have gs_panel_submit_no_pur" do

      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id= double("id")
      mocked_find= double("find")
      mocked_a= double("a")

      $tracer.should_receive(:trace).with(:gs_panel_submit_no_pur).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("panel_submit_no_pur").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)

      ToolTag.should_receive(:new).with(mocked_a, :gs_panel_submit_no_pur, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_panel_submit_no_pur.should == mocked_tooltag
    end

    it "should have gs_paypal_radio_btn" do

      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_paypal_radio_btn).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("radiopp").ordered.and_return("radiopp")
      mocked_input.should_receive(:className).with("radiopp").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_paypal_radio_btn, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_paypal_radio_btn.should == mocked_tooltag
    end


    it "should have gs_paypal_btn" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_paypal_btn).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-paypalcheckoutbtn").ordered.and_return("ats-paypalcheckoutbtn")
      mocked_a.should_receive(:className).with("ats-paypalcheckoutbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_paypal_btn, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_paypal_btn.should == mocked_tooltag
    end


    it "should have gs_xbox360" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_xbox360).ordered
      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-xbox360menu").ordered.and_return("ats-xbox360menu")
      mocked_a.should_receive(:className).with("ats-xbox360menu").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_xbox360, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_xbox360.should == mocked_tooltag
    end

    it "should have gs_trade_value_spotlight" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id= double("id")
      mocked_find= double("find")
      mocked_a= double("a")

      $tracer.should_receive(:trace).with(:gs_trade_value_spotlight).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("tradeValueSpotlight").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)

      ToolTag.should_receive(:new).with(mocked_a, :gs_trade_value_spotlight, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_trade_value_spotlight.should == mocked_tooltag
    end
end
