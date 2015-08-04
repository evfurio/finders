ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"

describe GameStopAccountInfoFinder, "finders" do

    before(:all) do
        class GameStopAccountInfoFinderTest
            include GameStopAccountInfoFinder
        end

        @browser = GameStopAccountInfoFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopAccountInfoFinderTest) if Object.const_defined?(:GameStopAccountInfoFinderTest)
    end


    it "should have a credit card link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/changeCreditCardLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_link).ordered.and_return(mocked_tooltag)

        @browser.credit_card_link.should == mocked_tooltag
    end


    it "should have a address book link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:address_book_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/shipAddressLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_book_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.address_book_link.should == mocked_tooltag
    end


    it "should have a about me link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:about_me_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/personalInfoLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :about_me_link).ordered.and_return(mocked_tooltag)

        @browser.about_me_link.should == mocked_tooltag
    end


    it "should have a edge card link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:edge_card_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/edgeCardLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :edge_card_link).ordered.and_return(mocked_tooltag)

        @browser.edge_card_link.should == mocked_tooltag
    end


    it "should have a powerup rewards card link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:powerup_rewards_card_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/powerUpRewardsCardLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :powerup_rewards_card_link).ordered.and_return(mocked_tooltag)

        @browser.powerup_rewards_card_link.should == mocked_tooltag
    end


    it "should have a communication preferences link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:communication_preferences_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/communicationPreferencesLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :communication_preferences_link).ordered.and_return(mocked_tooltag)

        @browser.communication_preferences_link.should == mocked_tooltag
    end


    it "should have a change login link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:change_login_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/signLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :change_login_link).ordered.and_return(mocked_tooltag)

        @browser.change_login_link.should == mocked_tooltag
    end


    it "should have a change password link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:change_password_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/changePasswordLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :change_password_link).ordered.and_return(mocked_tooltag)

        @browser.change_password_link.should == mocked_tooltag
    end


    it "should have a merge reward accounts link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:merge_reward_accounts_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/mergeAccountsLinkButton/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :merge_reward_accounts_link).ordered.and_return(mocked_tooltag)

        @browser.merge_reward_accounts_link.should == mocked_tooltag
    end


    it "should have a confirm email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:confirm_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:with).with("id.search(/(txtEmailAddressConfirm|ComfirmEmailText|txtConfirmEmailAddress$)/) != -1").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :confirm_email_address_field).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_address_field.should == mocked_tooltag
    end


    it "should have a cancel button" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_id = double("id")
        mocked_parent = double("parent")

        $tracer.should_receive(:trace).with(:cancel_button).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        mocked_img.should_receive(:id).with("/CancelImage/").ordered.and_return(mocked_id)
        mocked_id.should_receive(:parent).with("a").ordered.and_return(mocked_parent)
        ToolTag.should_receive(:new).with(mocked_parent, :cancel_button).ordered.and_return(mocked_tooltag)

        @browser.cancel_button.should == mocked_tooltag
    end


    it "should have a first name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:first_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/textFirstName/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :first_name_field).ordered.and_return(mocked_tooltag)

        @browser.first_name_field.should == mocked_tooltag
    end


    it "should have a last name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:last_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/textLastName/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :last_name_field).ordered.and_return(mocked_tooltag)

        @browser.last_name_field.should == mocked_tooltag
    end


    it "should have a address 1 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:address_1_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/textAddressLine1/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_1_field).ordered.and_return(mocked_tooltag)

        @browser.address_1_field.should == mocked_tooltag
    end


    it "should have a address 2 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:address_2_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/textAddressLine2/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_2_field).ordered.and_return(mocked_tooltag)

        @browser.address_2_field.should == mocked_tooltag
    end


    it "should have a city field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:city_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/textCity/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :city_field).ordered.and_return(mocked_tooltag)

        @browser.city_field.should == mocked_tooltag
    end


    it "should have a state province selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:state_province_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("/ddlState/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :state_province_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.state_province_selector.should == mocked_gamestopselector
    end


    it "should have a zip postal code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:zip_postal_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/textZip/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :zip_postal_code_field).ordered.and_return(mocked_tooltag)

        @browser.zip_postal_code_field.should == mocked_tooltag
    end


    it "should have a country selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:country_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("/ddlCountry/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :country_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.country_selector.should == mocked_gamestopselector
    end


    it "should have a phone number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:phone_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:with).with("id.search(/(textPhoneNumberDaytime|txtPhoneNumber$)/) != -1").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :phone_number_field).ordered.and_return(mocked_tooltag)

        @browser.phone_number_field.should == mocked_tooltag
    end


    it "should have a privacy policy message label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:privacy_policy_message_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/lblPrivacyPolicyMessage$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :privacy_policy_message_label).ordered.and_return(mocked_tooltag)

        @browser.privacy_policy_message_label.should == mocked_tooltag
    end


    it "should have a first name required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:first_name_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valFirstName$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :first_name_required_label).ordered.and_return(mocked_tooltag)

        @browser.first_name_required_label.should == mocked_tooltag
    end


    it "should have a last name required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:last_name_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valLastName$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :last_name_required_label).ordered.and_return(mocked_tooltag)

        @browser.last_name_required_label.should == mocked_tooltag
    end


    it "should have a address 1 required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:address_1_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valAddress$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_1_required_label).ordered.and_return(mocked_tooltag)

        @browser.address_1_required_label.should == mocked_tooltag
    end


    it "should have a city required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:city_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valCity$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :city_required_label).ordered.and_return(mocked_tooltag)

        @browser.city_required_label.should == mocked_tooltag
    end


    it "should have a postal code required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:postal_code_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valZip$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :postal_code_required_label).ordered.and_return(mocked_tooltag)

        @browser.postal_code_required_label.should == mocked_tooltag
    end


    it "should have a postal code invalid format label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:postal_code_invalid_format_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valZipRegEx$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :postal_code_invalid_format_label).ordered.and_return(mocked_tooltag)

        @browser.postal_code_invalid_format_label.should == mocked_tooltag
    end


    it "should have a state required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:state_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valState$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :state_required_label).ordered.and_return(mocked_tooltag)

        @browser.state_required_label.should == mocked_tooltag
    end


    it "should have a phone required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:phone_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/PhoneRequiredValidator$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :phone_required_label).ordered.and_return(mocked_tooltag)

        @browser.phone_required_label.should == mocked_tooltag
    end


    it "should have a phone invalid format label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:phone_invalid_format_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valPhoneFormat$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :phone_invalid_format_label).ordered.and_return(mocked_tooltag)

        @browser.phone_invalid_format_label.should == mocked_tooltag
    end


    it "should have a email required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:email_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/rfvEmailAddress$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :email_required_label).ordered.and_return(mocked_tooltag)

        @browser.email_required_label.should == mocked_tooltag
    end


    it "should have a email invalid format label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:email_invalid_format_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/revEmailAddress$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :email_invalid_format_label).ordered.and_return(mocked_tooltag)

        @browser.email_invalid_format_label.should == mocked_tooltag
    end


    it "should have a confirm email required label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:confirm_email_required_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/rfvConfirmEmail$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :confirm_email_required_label).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_required_label.should == mocked_tooltag
    end


    it "should have a confirm email does not match label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:confirm_email_does_not_match_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/cvEmailAddress$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :confirm_email_does_not_match_label).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_does_not_match_label.should == mocked_tooltag
    end


    it "should have a combined name too long label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:combined_name_too_long_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/valNameLength/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :combined_name_too_long_label).ordered.and_return(mocked_tooltag)

        @browser.combined_name_too_long_label.should == mocked_tooltag
    end


    it "should have a create account error panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:create_account_error_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/SiteLoginCreateAccountValidationSummary$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :create_account_error_panel).ordered.and_return(mocked_tooltag)

        @browser.create_account_error_panel.should == mocked_tooltag
    end


    it "should have a log in slider panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestoploginsliderpanel = double("GameStopLoginSliderPanel")

        $tracer.should_receive(:trace).with(:log_in_slider_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("panel-container").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :log_in_slider_panel).ordered.and_return(mocked_tooltag)
        GameStopLoginSliderPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestoploginsliderpanel)

        @browser.log_in_slider_panel.should == mocked_gamestoploginsliderpanel
    end


    it "should have a credit card list" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_creditcardlist = double("CreditCardList")

        $tracer.should_receive(:trace).with(:credit_card_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("/CreditCardList$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_list).ordered.and_return(mocked_tooltag)
        CreditCardList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_creditcardlist)

        @browser.credit_card_list.should == mocked_creditcardlist
    end


    it "should have a shipping address list" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_gamestopshippingaddresslist = double("GameStopShippingAddressList")

        $tracer.should_receive(:trace).with(:shipping_address_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("/ShippingAddressList$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :shipping_address_list).ordered.and_return(mocked_tooltag)
        GameStopShippingAddressList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopshippingaddresslist)

        @browser.shipping_address_list.should == mocked_gamestopshippingaddresslist
    end

    #it "should have a popup address panel" do
    #    mocked_tooltag = double("ToolTag")
    #    mocked_div = double("div")
    #    mocked_id = double("id")
    #    mocked_gamestoppopupaddresspanel = double("GameStopPopupAddressPanel")
    #
    #    $tracer.should_receive(:trace).with(:popup_address_panel).ordered
    #
    #    @browser.should_receive(:div).ordered.and_return(mocked_div)
    #    mocked_div.should_receive(:id).with("/popAddressSelection_pnlPopup$/").ordered.and_return(mocked_id)
    #    ToolTag.should_receive(:new).with(mocked_id, :popup_address_panel).ordered.and_return(mocked_tooltag)
    #    GameStopPopupAddressPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestoppopupaddresspanel)
    #
    #    @browser.popup_address_panel.should == mocked_gamestoppopupaddresspanel
    #end

    it "should have a remove address button when and confirm cancel is nil or something else" do
        $tracer.should_receive(:trace).with(:remove_address_button).ordered

        mocked_record = double("record")
        @browser.should_receive(:record).with(no_args).ordered.and_return(mocked_record)
        mocked_confirm = double("confirm")
        mocked_record.should_receive(:confirm).with(no_args).ordered.and_return(mocked_confirm)
        mocked_ok = double("ok")
        mocked_confirm.should_receive(:ok).with(no_args).ordered.and_return(mocked_ok)

        mocked_input = double("input")
        @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_id = double("id")
        mocked_input.should_receive(:id).with("/AddressDeleteButton$/").ordered.and_return(mocked_id)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_id, :remove_address_button).ordered.and_return(mocked_tooltag)

        @browser.remove_address_button.should == mocked_tooltag
    end

    it "should have a remove address button when and confirm cancel is and_confirm_cancel" do
        $tracer.should_receive(:trace).with(:remove_address_button).ordered

        mocked_record = double("record")
        @browser.should_receive(:record).with(no_args).ordered.and_return(mocked_record)
        mocked_confirm = double("confirm")
        mocked_record.should_receive(:confirm).with(no_args).ordered.and_return(mocked_confirm)
        mocked_cancel = double("cancel")
        mocked_confirm.should_receive(:cancel).with(no_args).ordered.and_return(mocked_cancel)

        mocked_input = double("input")
        @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_id = double("id")
        mocked_input.should_receive(:id).with("/AddressDeleteButton$/").ordered.and_return(mocked_id)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_id, :remove_address_button).ordered.and_return(mocked_tooltag)

        @browser.remove_address_button(:and_confirm_cancel).should == mocked_tooltag
    end

    it "should have a billing address edit button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:billing_address_edit_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/billingAddressSummary_EditButton$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :billing_address_edit_button).ordered.and_return(mocked_tooltag)

        @browser.billing_address_edit_button.should == mocked_tooltag
    end


    it "should have a credit card selector" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:credit_card_selector).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-cardtype").ordered.and_return("ats-cardtype")
        mocked_input.should_receive(:className).with("ats-cardtype").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.credit_card_selector.should == mocked_gamestopselector
    end


    it "should have a credit card month selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:credit_card_month_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-expmonth").ordered.and_return("ats-expmonth")
        mocked_select.should_receive(:id).with("ats-expmonth").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_month_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.credit_card_month_selector.should == mocked_gamestopselector
    end


    it "should have a credit card year selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopselector = double("GameStopSelector")

        $tracer.should_receive(:trace).with(:credit_card_year_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("/CCExpYearDropDown$|ExpirationYear_DropDownList/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_year_selector).ordered.and_return(mocked_tooltag)
        GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

        @browser.credit_card_year_selector.should == mocked_gamestopselector
    end


    it "should have a credit card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_number_field).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/reg_center$/").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/ccNumber$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_number_field).ordered.and_return(mocked_tooltag)

        @browser.credit_card_number_field.should == mocked_tooltag
    end


    it "should have a credit card cvv field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_cvv_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/cvc_Textbox/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_cvv_field).ordered.and_return(mocked_tooltag)

        @browser.credit_card_cvv_field.should == mocked_tooltag
    end


    it "should have a save button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:save_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/ChangePasswordButton$|CreditCardButton$|_CommunicationPreferenceButton$|AddressUpdateButton$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :save_button).ordered.and_return(mocked_tooltag)

        @browser.save_button.should == mocked_tooltag
    end

    #Deprecated and moved out to the profile finders

    # it "should have a current password field" do
    #     mocked_tooltag = double("ToolTag")
    #     mocked_input = double("input")
    #     mocked_id = double("id")
    #
    #     $tracer.should_receive(:trace).with(:current_password_field).ordered
    #
    #     @browser.should_receive(:input).ordered.and_return(mocked_input)
    #     mocked_input.should_receive(:id).with("/pwCurrentTextBox$/").ordered.and_return(mocked_id)
    #     ToolTag.should_receive(:new).with(mocked_id, :current_password_field).ordered.and_return(mocked_tooltag)
    #
    #     @browser.current_password_field.should == mocked_tooltag
    # end
    #
    #
    # it "should have a new password validation label" do
    #     mocked_tooltag = double("ToolTag")
    #     mocked_span = double("span")
    #     mocked_id = double("id")
    #
    #     $tracer.should_receive(:trace).with(:new_password_validation_label).ordered
    #
    #     @browser.should_receive(:span).ordered.and_return(mocked_span)
    #     mocked_span.should_receive(:id).with("/pwNewExpressionValidator$/").ordered.and_return(mocked_id)
    #     ToolTag.should_receive(:new).with(mocked_id, :new_password_validation_label).ordered.and_return(mocked_tooltag)
    #
    #     @browser.new_password_validation_label.should == mocked_tooltag
    # end
    #
    #
    # it "should have a confirm new password validation label" do
    #     mocked_tooltag = double("ToolTag")
    #     mocked_span = double("span")
    #     mocked_id = double("id")
    #
    #     $tracer.should_receive(:trace).with(:confirm_new_password_validation_label).ordered
    #
    #     @browser.should_receive(:span).ordered.and_return(mocked_span)
    #     mocked_span.should_receive(:id).with("/pwConfirmCompareValidator$/").ordered.and_return(mocked_id)
    #     ToolTag.should_receive(:new).with(mocked_id, :confirm_new_password_validation_label).ordered.and_return(mocked_tooltag)
    #
    #     @browser.confirm_new_password_validation_label.should == mocked_tooltag
    # end


    it "should have a change password validation panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:change_password_validation_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/ChangePasswordValidationSummary$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :change_password_validation_panel).ordered.and_return(mocked_tooltag)

        @browser.change_password_validation_panel.should == mocked_tooltag
    end


    it "should have a newsletter signup field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:newsletter_signup_field).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("/NewsLetterSignUpControlPanel$/").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/ctl00$mainContentPlaceHolder$signupButton$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :newsletter_signup_field).ordered.and_return(mocked_tooltag)

        @browser.newsletter_signup_field.should == mocked_tooltag
    end


    it "should have a newsletter join button" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:newsletter_join_button).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/signupButton$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :newsletter_join_button).ordered.and_return(mocked_tooltag)

        @browser.newsletter_join_button.should == mocked_tooltag
    end

    it "should have a cancel credit card button" do
        $tracer.should_receive(:trace).with(:cancel_credit_card_button).ordered

        mocked_input = double("input")
        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_id = double("id")
        mocked_input.should_receive(:id).with("/CancelCreditCardButton/").ordered.and_return(mocked_id)
        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_id, :cancel_credit_card_button).ordered.and_return(mocked_ToolTag)

        @browser.cancel_credit_card_button.should == mocked_ToolTag
    end

end
