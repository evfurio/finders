ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


# Defining this class here because it's used by the module being tested.
class GameStopCheckoutRadioButtons
end

describe GameStopMobileCheckoutNewFinder do
    before(:all) do
        class GameStopMobileCheckoutNewFinderTest
            include GameStopMobileCheckoutNewFinder
        end

        @browser = GameStopMobileCheckoutNewFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileCheckoutNewFinderTest) if Object.const_defined?(:GameStopMobileCheckoutNewFinderTest)
    end

    it "should have a continue secure checkout button" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_with = double("with")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:continue_secure_checkout_button).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("/secure_checkout/").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:button).ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :continue_secure_checkout_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.continue_secure_checkout_button.should == mocked_tooltag
    end


    it "should have a promotion code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:promotion_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-promocode").ordered.and_return("ats-promocode")
        mocked_input.should_receive(:className).with("ats-promocode").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :promotion_code_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.promotion_code_field.should == mocked_tooltag
    end


    it "should have a promotion code apply button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:promotion_code_apply_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-promoapplybtn").ordered.and_return("ats-promoapplybtn")
        mocked_button.should_receive(:className).with("ats-promoapplybtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :promotion_code_apply_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.promotion_code_apply_button.should == mocked_tooltag
    end


    it "should have a buy as guest button" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:buy_as_guest_button).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:id).with("guest_checkout_link").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:button).ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :buy_as_guest_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.buy_as_guest_button.should == mocked_tooltag
    end


    it "should have a buy as login button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:buy_as_login_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-buyasaccount").ordered.and_return("ats-buyasaccount")
        mocked_button.should_receive(:className).with("ats-buyasaccount").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :buy_as_login_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.buy_as_login_button.should == mocked_tooltag
    end


    it "should have a buy as new account button" do
				mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:buy_as_new_account_button).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:id).with("new_account_link").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:button).ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :buy_as_new_account_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.buy_as_new_account_button.should == mocked_tooltag
    end


    it "should have a new login email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:new_login_email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-createemailaddr").ordered.and_return("ats-createemailaddr")
        mocked_input.should_receive(:className).with("ats-createemailaddr").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :new_login_email_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.new_login_email_field.should == mocked_tooltag
    end


    it "should have a new login conf email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:new_login_conf_email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmemailaddrfield").ordered.and_return("ats-confirmemailaddrfield")
        mocked_input.should_receive(:className).with("ats-confirmemailaddrfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :new_login_conf_email_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.new_login_conf_email_field.should == mocked_tooltag
    end


    it "should have a new login password field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:new_login_password_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-createpwdfield").ordered.and_return("ats-createpwdfield")
        mocked_input.should_receive(:className).with("ats-createpwdfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :new_login_password_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.new_login_password_field.should == mocked_tooltag
    end


    it "should have a new login conf password field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:new_login_conf_password_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirmpwdfield").ordered.and_return("ats-confirmpwdfield")
        mocked_input.should_receive(:className).with("ats-confirmpwdfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :new_login_conf_password_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.new_login_conf_password_field.should == mocked_tooltag
    end


    it "should have a login email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:login_email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-emailaddrfield").ordered.and_return("ats-emailaddrfield")
        mocked_input.should_receive(:className).with("ats-emailaddrfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :login_email_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.login_email_field.should == mocked_tooltag
    end


    it "should have a login password field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:login_password_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-pwdfield").ordered.and_return("ats-pwdfield")
        mocked_input.should_receive(:className).with("ats-pwdfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :login_password_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.login_password_field.should == mocked_tooltag
    end


    it "should have a user signup button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:user_signup_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-createacctbtn").ordered.and_return("ats-createacctbtn")
        mocked_button.should_receive(:className).with("ats-createacctbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :user_signup_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.user_signup_button.should == mocked_tooltag
    end


    it "should have a user login button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:user_login_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-loginbtn").ordered.and_return("ats-loginbtn")
        mocked_button.should_receive(:className).with("ats-loginbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :user_login_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.user_login_button.should == mocked_tooltag
    end


    it "should have a chkout forgot password link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_forgot_password_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdlnk").ordered.and_return("ats-forgotpwdlnk")
        mocked_a.should_receive(:className).with("ats-forgotpwdlnk").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_forgot_password_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_forgot_password_link.should == mocked_tooltag
    end


    it "should have a chkout forgot password email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkout_forgot_password_email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("EmailAddress").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkout_forgot_password_email_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_forgot_password_email_field.should == mocked_tooltag
    end


    it "should have a seventeen or older button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:seventeen_or_older_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        mocked_button.should_receive(:id).with("over_17").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :seventeen_or_older_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.seventeen_or_older_button.should == mocked_tooltag
    end


    it "should have a store pickup link" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_pickup_link).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:className).with("ship_off").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_pickup_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_pickup_link.should == mocked_tooltag
    end


    it "should have a store pickup zipcode field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_pickup_zipcode_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-InStorePickupZipcode").ordered.and_return("ats-InStorePickupZipcode")
        mocked_input.should_receive(:className).with("ats-InStorePickupZipcode").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_pickup_zipcode_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_pickup_zipcode_field.should == mocked_tooltag
    end


    it "should have a store pickup search button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_pickup_search_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("alternate_button").ordered.and_return("alternate_button")
        mocked_button.should_receive(:className).with("alternate_button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_pickup_search_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_pickup_search_button.should == mocked_tooltag
    end


    it "should have a powerup reward field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:powerup_reward_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-purnumber").ordered.and_return("ats-purnumber")
        mocked_input.should_receive(:className).with("ats-purnumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :powerup_reward_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.powerup_reward_field.should == mocked_tooltag
    end


    it "should have a powerup reward confirm label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:powerup_reward_confirm_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("pur_applied").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :powerup_reward_confirm_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.powerup_reward_confirm_label.should == mocked_tooltag
    end


    it "should have a chkout country selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:chkout_country_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-countryfield").ordered.and_return("ats-countryfield")
        mocked_select.should_receive(:className).with("ats-countryfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_country_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.chkout_country_selector.should == mocked_gamestopmobileselector
    end


    it "should have a chkout first name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_first_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-fnamefield").ordered.and_return("ats-fnamefield")
        mocked_input.should_receive(:className).with("ats-fnamefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_first_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_first_name_field.should == mocked_tooltag
    end


    it "should have a chkout last name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_last_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-lnamefield").ordered.and_return("ats-lnamefield")
        mocked_input.should_receive(:className).with("ats-lnamefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_last_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_last_name_field.should == mocked_tooltag
    end


    it "should have a chkout address 1 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_address_1_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-line1field").ordered.and_return("ats-line1field")
        mocked_input.should_receive(:className).with("ats-line1field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_address_1_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_address_1_field.should == mocked_tooltag
    end


    it "should have a chkout address 2 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_address_2_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-line2field").ordered.and_return("ats-line2field")
        mocked_input.should_receive(:className).with("ats-line2field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_address_2_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_address_2_field.should == mocked_tooltag
    end


    it "should have a chkout city field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_city_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-cityfield").ordered.and_return("ats-cityfield")
        mocked_input.should_receive(:className).with("ats-cityfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_city_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_city_field.should == mocked_tooltag
    end


    it "should have a chkout select state" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:chkout_select_state).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-usstate").ordered.and_return("ats-usstate")
        mocked_select.should_receive(:className).with("ats-usstate").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_select_state, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.chkout_select_state.should == mocked_gamestopmobileselector
    end


    it "should have a chkout zip code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_zip_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-postalcodefield").ordered.and_return("ats-postalcodefield")
        mocked_input.should_receive(:className).with("ats-postalcodefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_zip_code_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_zip_code_field.should == mocked_tooltag
    end


    it "should have a chkout phone number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_phone_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-phonefield").ordered.and_return("ats-phonefield")
        mocked_input.should_receive(:className).with("ats-phonefield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_phone_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_phone_number_field.should == mocked_tooltag
    end


    it "should have a chkout email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-emailfield").ordered.and_return("ats-emailfield")
        mocked_input.should_receive(:className).with("ats-emailfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_email_address_field.should == mocked_tooltag
    end


    it "should have a chkout confirm email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkout_confirm_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/ShipTo_ConfirmEmailAddress/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkout_confirm_email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_confirm_email_address_field.should == mocked_tooltag
    end


    it "should have a chkout billing confirm email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkout_billing_confirm_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/BillTo_ConfirmEmailAddress/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkout_billing_confirm_email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_billing_confirm_email_address_field.should == mocked_tooltag
    end


    it "should have a chkout same address checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_same_address_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-sameaddressoptinbox").ordered.and_return("ats-sameaddressoptinbox")
        mocked_input.should_receive(:className).with("ats-sameaddressoptinbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_same_address_checkbox, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_same_address_checkbox.should == mocked_tooltag
    end


    it "should have a chkout continue checkout button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:chkout_continue_checkout_button).ordered

        @browser.should_receive(:button).with("/Continue Checkout/").ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :chkout_continue_checkout_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_continue_checkout_button.should == mocked_tooltag
    end


    it "should have a continue checkout button handling" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:continue_checkout_button_handling).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-checkoutbtn").ordered.and_return("ats-checkoutbtn")
        mocked_button.should_receive(:className).with("ats-checkoutbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :continue_checkout_button_handling, @browser).ordered.and_return(mocked_tooltag)

        @browser.continue_checkout_button_handling.should == mocked_tooltag
    end


    it "should have a chkout handling options label" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_h3 = double("h3")

        $tracer.should_receive(:trace).with(:chkout_handling_options_label).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("handling_options").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :chkout_handling_options_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_handling_options_label.should == mocked_tooltag
    end


    it "should have a chkout handling method buttons" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_tbody = double("tbody")
        mocked_gamestopmobilehandlingmethodradiobuttons = double("GameStopMobileHandlingMethodRadioButtons")

        $tracer.should_receive(:trace).with(:chkout_handling_method_buttons).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("standard_handling_method_select").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tbody).ordered.and_return(mocked_tbody)
        ToolTag.should_receive(:new).with(mocked_tbody, :chkout_handling_method_buttons, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileHandlingMethodRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobilehandlingmethodradiobuttons)

        @browser.chkout_handling_method_buttons.should == mocked_gamestopmobilehandlingmethodradiobuttons
    end


    it "should have a handling method buttons" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestopcheckoutradiobuttons = double("GameStopCheckoutRadioButtons")

        $tracer.should_receive(:trace).with(:handling_method_buttons).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/hmethod/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :handling_method_buttons, @browser).ordered.and_return(mocked_tooltag)
        GameStopCheckoutRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopcheckoutradiobuttons)

        @browser.handling_method_buttons.should == mocked_gamestopcheckoutradiobuttons
    end


    it "should have a chkout credit card selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:chkout_credit_card_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-cardtype").ordered.and_return("ats-cardtype")
        mocked_select.should_receive(:className).with("ats-cardtype").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_credit_card_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.chkout_credit_card_selector.should == mocked_gamestopmobileselector
    end


    it "should have a chkout credit card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_credit_card_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-ccnumber").ordered.and_return("ats-ccnumber")
        mocked_input.should_receive(:className).with("ats-ccnumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_credit_card_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_credit_card_number_field.should == mocked_tooltag
    end


    it "should have a chkout credit card month selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:chkout_credit_card_month_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-expmonth").ordered.and_return("ats-expmonth")
        mocked_select.should_receive(:className).with("ats-expmonth").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_credit_card_month_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.chkout_credit_card_month_selector.should == mocked_gamestopmobileselector
    end


    it "should have a chkout credit card year selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:chkout_credit_card_year_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-expyear").ordered.and_return("ats-expyear")
        mocked_select.should_receive(:className).with("ats-expyear").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_credit_card_year_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.chkout_credit_card_year_selector.should == mocked_gamestopmobileselector
    end


    it "should have a chkout security code number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_security_code_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-securitycode").ordered.and_return("ats-securitycode")
        mocked_input.should_receive(:className).with("ats-securitycode").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_security_code_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_security_code_number_field.should == mocked_tooltag
    end


    it "should have a chkout complete checkout button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:chkout_complete_checkout_button).ordered

        @browser.should_receive(:button).with("Complete Checkout").ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :chkout_complete_checkout_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_complete_checkout_button.should == mocked_tooltag
    end


    it "should have a chkout gift card field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_gift_card_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftcard").ordered.and_return("ats-giftcard")
        mocked_input.should_receive(:className).with("ats-giftcard").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_gift_card_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_gift_card_field.should == mocked_tooltag
    end


    it "should have a chkout gift card pin field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_gift_card_pin_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftpin").ordered.and_return("ats-giftpin")
        mocked_input.should_receive(:className).with("ats-giftpin").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_gift_card_pin_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_gift_card_pin_field.should == mocked_tooltag
    end


    it "should have a gift card apply button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_card_apply_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-applygiftcardbtn").ordered.and_return("ats-applygiftcardbtn")
        mocked_button.should_receive(:className).with("ats-applygiftcardbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_card_apply_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.gift_card_apply_button.should == mocked_tooltag
    end


    it "should have a order confirmation label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_confirmation_label).ordered

        @browser.should_receive(:jquery).with(".ats-orderconfirmlabel").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_confirmation_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.order_confirmation_label.should == mocked_tooltag
    end


    it "should have a order confirmation number label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_confirmation_number_label).ordered

        @browser.should_receive(:jquery).with(".ats-orderconfirmnumber").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_confirmation_number_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.order_confirmation_number_label.should == mocked_tooltag
    end


    it "should have a invalid cc label" do
        mocked_tooltag = double("ToolTag")
        mocked_label = double("label")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:invalid_cc_label).ordered

        @browser.should_receive(:label).ordered.and_return(mocked_label)
        @browser.should_receive(:create_ats_regex_string).with("ats-creditcardinvalidmsg").ordered.and_return("ats-creditcardinvalidmsg")
        mocked_label.should_receive(:className).with("ats-creditcardinvalidmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :invalid_cc_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.invalid_cc_label.should == mocked_tooltag
    end


    it "should have a invalid gc label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:invalid_gc_label).ordered

        @browser.should_receive(:jquery).with(".ats-gcinvalidmsg").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :invalid_gc_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.invalid_gc_label.should == mocked_tooltag
    end


    it "should have a chkout store pickup radio" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_store_pickup_radio).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-storepickupradio").ordered.and_return("ats-storepickupradio")
        mocked_input.should_receive(:className).with("ats-storepickupradio").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_store_pickup_radio, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_store_pickup_radio.should == mocked_tooltag
    end


    it "should have a chkout store pickup number" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:chkout_store_pickup_number).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-pickupphonenumber").ordered.and_return("ats-pickupphonenumber")
        mocked_input.should_receive(:className).with("ats-pickupphonenumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :chkout_store_pickup_number, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_store_pickup_number.should == mocked_tooltag
    end


    it "should have a edit cart link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:edit_cart_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-cartedit").ordered.and_return("ats-cartedit")
        mocked_a.should_receive(:className).with("ats-cartedit").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :edit_cart_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.edit_cart_link.should == mocked_tooltag
    end


    it "should have a remove item link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:remove_item_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-remove").ordered.and_return("ats-remove")
        mocked_a.should_receive(:className).with("ats-remove").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :remove_item_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.remove_item_link.should == mocked_tooltag
    end


    it "should have a line item label" do
        mocked_tooltag = double("ToolTag")
        mocked_tr = double("tr")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:line_item_label).ordered

        @browser.should_receive(:tr).ordered.and_return(mocked_tr)
        @browser.should_receive(:create_ats_regex_string).with("ats-lineitemrow").ordered.and_return("ats-lineitemrow")
        mocked_tr.should_receive(:className).with("ats-lineitemrow").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :line_item_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.line_item_label.should == mocked_tooltag
    end


    it "should have a qty update field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:qty_update_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-qty").ordered.and_return("ats-qty")
        mocked_input.should_receive(:className).with("ats-qty").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :qty_update_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.qty_update_field.should == mocked_tooltag
    end


    it "should have a cart edit done link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_edit_done_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-cartupdate").ordered.and_return("ats-cartupdate")
        mocked_a.should_receive(:className).with("ats-cartupdate").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_edit_done_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_edit_done_link.should == mocked_tooltag
    end


    it "should have a shopping cart empty label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shopping_cart_empty_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("empty_cart").ordered.and_return("empty_cart")
        mocked_div.should_receive(:className).with("empty_cart").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shopping_cart_empty_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.shopping_cart_empty_label.should == mocked_tooltag
    end


    it "should have a show order summary link" do
        mocked_tooltag = double("ToolTag")
        mocked_h3 = double("h3")
        mocked_className = double("className")
				mocked_a = double("a")

        $tracer.should_receive(:trace).with(:show_order_summary_link).ordered

        @browser.should_receive(:h3).ordered.and_return(mocked_h3)
        @browser.should_receive(:create_ats_regex_string).with("ats-showordersummary_link").ordered.and_return("ats-showordersummary_link")
        mocked_h3.should_receive(:className).with("ats-showordersummary_link").ordered.and_return(mocked_className)
				mocked_className.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :show_order_summary_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.show_order_summary_link.should == mocked_tooltag
    end


    it "should have a gift message checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_message_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftmsgcheckbox").ordered.and_return("ats-giftmsgcheckbox")
        mocked_input.should_receive(:className).with("ats-giftmsgcheckbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_message_checkbox, @browser).ordered.and_return(mocked_tooltag)

        @browser.gift_message_checkbox.should == mocked_tooltag
    end


    it "should have a gift message field" do
        mocked_tooltag = double("ToolTag")
        mocked_textarea = double("textarea")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_message_field).ordered

        @browser.should_receive(:textarea).ordered.and_return(mocked_textarea)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftmsgform").ordered.and_return("ats-giftmsgform")
        mocked_textarea.should_receive(:className).with("ats-giftmsgform").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_message_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.gift_message_field.should == mocked_tooltag
    end


    it "should have a shipping handling option label" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:shipping_handling_option_label).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("standard_handling_method_select").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :shipping_handling_option_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.shipping_handling_option_label.should == mocked_tooltag
    end


    it "should have a shipping handling method label" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_handling_method_label).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-shippingmethods").ordered.and_return("ats-shippingmethods")
        mocked_input.should_receive(:className).with("ats-shippingmethods").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_handling_method_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.shipping_handling_method_label.should == mocked_tooltag
    end


    it "should have a log into my account button" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:log_into_my_account_button).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:id).with("log_in_link").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:button).ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :log_into_my_account_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.log_into_my_account_button.should == mocked_tooltag
    end


    it "should have a view cart button" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_a = double("a")

        $tracer.should_receive(:trace).with(:view_cart_button).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:id).with("nav_cart").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :view_cart_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.view_cart_button.should == mocked_tooltag
    end


    it "should have a instore pickup summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:instore_pickup_summary_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("pickup_method_summary").ordered.and_return("pickup_method_summary")
        mocked_div.should_receive(:className).with("pickup_method_summary").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :instore_pickup_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.instore_pickup_summary_label.should == mocked_tooltag
    end


    it "should have a gift messsage error" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_messsage_error).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("field-validation-error").ordered.and_return("field-validation-error")
        mocked_span.should_receive(:className).with("field-validation-error").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_messsage_error, @browser).ordered.and_return(mocked_tooltag)

        @browser.gift_messsage_error.should == mocked_tooltag
    end


    it "should have a change address payment page link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:change_address_payment_page_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-editbillingaddr").ordered.and_return("ats-editbillingaddr")
        mocked_a.should_receive(:className).with("ats-editbillingaddr").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :change_address_payment_page_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.change_address_payment_page_link.should == mocked_tooltag
    end


    it "should have a change address handling page link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:change_address_handling_page_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-changeship").ordered.and_return("ats-changeship")
        mocked_a.should_receive(:className).with("ats-changeship").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :change_address_handling_page_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.change_address_handling_page_link.should == mocked_tooltag
    end


    it "should have a chkout select existing address" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")
        mocked_p = double("p")

        $tracer.should_receive(:trace).with(:chkout_select_existing_address).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("selected_shipping_address").ordered.and_return(mocked_id)
        mocked_id.should_receive(:p).ordered.and_return(mocked_p)
        ToolTag.should_receive(:new).with(mocked_p, :chkout_select_existing_address, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_select_existing_address.should == mocked_tooltag
    end


    it "should have a chkout select existing billing address" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")
        mocked_p = double("p")

        $tracer.should_receive(:trace).with(:chkout_select_existing_billing_address).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("selected_billing_address").ordered.and_return(mocked_id)
        mocked_id.should_receive(:p).ordered.and_return(mocked_p)
        ToolTag.should_receive(:new).with(mocked_p, :chkout_select_existing_billing_address, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_select_existing_billing_address.should == mocked_tooltag
    end


    it "should have a chkout modify existing address" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkout_modify_existing_address).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("change_address").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkout_modify_existing_address, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_modify_existing_address.should == mocked_tooltag
    end


    it "should have a chkout enter billing address" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:chkout_enter_billing_address).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("enter_address").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkout_enter_billing_address, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_enter_billing_address.should == mocked_tooltag
    end


    it "should have a store pickup hops" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_pickup_hops).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("store_pickup_action").ordered.and_return("store_pickup_action")
        mocked_td.should_receive(:className).with("store_pickup_action").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_pickup_hops, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_pickup_hops.should == mocked_tooltag
    end


    it "should have a store pickup hops checkout" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_pickup_hops_checkout).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-instorecartbutton").ordered.and_return("ats-instorecartbutton")
        mocked_button.should_receive(:className).with("ats-instorecartbutton").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_pickup_hops_checkout, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_pickup_hops_checkout.should == mocked_tooltag
    end


    it "should have a first name hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:first_name_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-firstname").ordered.and_return("ats-firstname")
        mocked_input.should_receive(:className).with("ats-firstname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :first_name_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.first_name_hops_field.should == mocked_tooltag
    end


    it "should have a last name hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:last_name_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-lastname").ordered.and_return("ats-lastname")
        mocked_input.should_receive(:className).with("ats-lastname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :last_name_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.last_name_hops_field.should == mocked_tooltag
    end


    it "should have a email address hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:email_address_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-email").ordered.and_return("ats-email")
        mocked_input.should_receive(:className).with("ats-email").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :email_address_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.email_address_hops_field.should == mocked_tooltag
    end


    it "should have a confirm email address hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:confirm_email_address_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-emailconfirm").ordered.and_return("ats-emailconfirm")
        mocked_input.should_receive(:className).with("ats-emailconfirm").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_email_address_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_address_hops_field.should == mocked_tooltag
    end


    it "should have a phone number hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:phone_number_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-phone").ordered.and_return("ats-phone")
        mocked_input.should_receive(:className).with("ats-phone").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :phone_number_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.phone_number_hops_field.should == mocked_tooltag
    end


    it "should have a powerup number hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:powerup_number_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-rewardnumber").ordered.and_return("ats-rewardnumber")
        mocked_input.should_receive(:className).with("ats-rewardnumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :powerup_number_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.powerup_number_hops_field.should == mocked_tooltag
    end


    it "should have a invalid number error hops" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:invalid_number_error_hops).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        @browser.should_receive(:create_ats_regex_string).with("error_message").ordered.and_return("error_message")
        mocked_section.should_receive(:className).with("error_message").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :invalid_number_error_hops, @browser).ordered.and_return(mocked_tooltag)

        @browser.invalid_number_error_hops.should == mocked_tooltag
    end


    it "should have a finish hops button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:finish_hops_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        mocked_button.should_receive(:id).with("finish_hops").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :finish_hops_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.finish_hops_button.should == mocked_tooltag
    end


    it "should have a hops order confirm label" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:hops_order_confirm_label).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        @browser.should_receive(:create_ats_regex_string).with("order_confirm_text").ordered.and_return("order_confirm_text")
        mocked_section.should_receive(:className).with("order_confirm_text").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :hops_order_confirm_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.hops_order_confirm_label.should == mocked_tooltag
    end


    it "should have a not a member hops" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:not_a_member_hops).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-nonmember").ordered.and_return("ats-nonmember")
        mocked_a.should_receive(:className).with("ats-nonmember").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :not_a_member_hops, @browser).ordered.and_return(mocked_tooltag)

        @browser.not_a_member_hops.should == mocked_tooltag
    end


    it "should have a credit card selector hops" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:credit_card_selector_hops).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("ValidationModel_cc_type").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_selector_hops, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.credit_card_selector_hops.should == mocked_gamestopmobileselector
    end


    it "should have a credit card number hops field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:credit_card_number_hops_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-ccnumber").ordered.and_return("ats-ccnumber")
        mocked_input.should_receive(:className).with("ats-ccnumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_number_hops_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.credit_card_number_hops_field.should == mocked_tooltag
    end


    it "should have a pur number error" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gsm_error_message).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-errormsg").ordered.and_return("ats-errormsg")
        mocked_li.should_receive(:className).with("ats-errormsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gsm_error_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.gsm_error_message.should == mocked_tooltag
    end

    it "should have a select store button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:select_store_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      mocked_button.should_receive(:id).with("select_store_button").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :select_store_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.select_store_button.should == mocked_tooltag
    end
		
		
		it "should have a continue shopping button" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")

        $tracer.should_receive(:trace).with(:continue_shopping_button).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
				@browser.should_receive(:create_ats_regex_string).with("empty_cart").ordered.and_return("empty_cart")
				
        mocked_div.should_receive(:className).with("empty_cart").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :continue_shopping_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.continue_shopping_button.should == mocked_tooltag
    end
		
			
		it "should have an availability slide" do
			mocked_tooltag = double("ToolTag")
			mocked_h3 = double("h3")
			mocked_className = double("className")

			$tracer.should_receive(:trace).with(:availability_slide).ordered

			@browser.should_receive(:h3).ordered.and_return(mocked_h3)
			mocked_h3.should_receive(:className).with("/filter_title$/").ordered.and_return(mocked_className)
			ToolTag.should_receive(:new).with(mocked_className, :availability_slide, @browser).ordered.and_return(mocked_tooltag)
			
			@browser.availability_slide.should == mocked_tooltag
		end
	
		
		it "should have a submit button" do
			mocked_tooltag = double("ToolTag")
			mocked_button = double("button")
			mocked_id = double("id")

			$tracer.should_receive(:trace).with(:gsm_filter_submit_button).ordered

			@browser.should_receive(:button).ordered.and_return(mocked_button)
			@browser.should_receive(:create_ats_regex_string).with("btnFilter").ordered.and_return("btnFilter")
			mocked_button.should_receive(:id).with("btnFilter").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :gsm_filter_submit_button, @browser).ordered.and_return(mocked_tooltag)

			@browser.gsm_filter_submit_button.should == mocked_tooltag
    end
		
		
		it "should have a checkout gift message field" do
			mocked_tooltag = double("ToolTag")
			mocked_textarea = double("textarea")
			mocked_className = double("className")

			$tracer.should_receive(:trace).with(:chkout_gift_message_field).ordered

			@browser.should_receive(:textarea).ordered.and_return(mocked_textarea)
			@browser.should_receive(:create_ats_regex_string).with("ats-giftmsgform").ordered.and_return("ats-giftmsgform")
			mocked_textarea.should_receive(:className).with("ats-giftmsgform").ordered.and_return(mocked_className)
			ToolTag.should_receive(:new).with(mocked_className, :chkout_gift_message_field, @browser).ordered.and_return(mocked_tooltag)

			@browser.chkout_gift_message_field.should == mocked_tooltag
    end

		
		it "should have an unused promocode message" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_p = double("p")

        $tracer.should_receive(:trace).with(:unused_promocode_message).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
				@browser.should_receive(:create_ats_regex_string).with("/system_message info_message/").ordered.and_return("/system_message info_message/")
				
        mocked_section.should_receive(:className).with("/system_message info_message/").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:p).ordered.and_return(mocked_p)
        ToolTag.should_receive(:new).with(mocked_p, :unused_promocode_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.unused_promocode_message.should == mocked_tooltag
    end
		
	
		it "should have a checkout order confirmation label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:chkout_order_confirmation_label).ordered

        @browser.should_receive(:jquery).with(".ats-orderconfirmlabel").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :chkout_order_confirmation_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_order_confirmation_label.should == mocked_tooltag
    end

		
		it "should have a checkout order confirmation number" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:chkout_order_confirmation_number_label).ordered

        @browser.should_receive(:jquery).with(".ats-orderconfirmnumber").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :chkout_order_confirmation_number_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.chkout_order_confirmation_number_label.should == mocked_tooltag
    end


		it "should have a chkout_digital_wallet_selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:chkout_digital_wallet_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("walletCards").ordered.and_return("walletCards")
        mocked_select.should_receive(:id).with("walletCards").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :chkout_digital_wallet_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.chkout_digital_wallet_selector.should == mocked_gamestopmobileselector
    end
		
		
		it "should have a google analytics script" do
				mocked_script = double("script")
				mocked_innerText = double("innerText")
				
				$tracer.should_receive(:trace).with(:google_analytics_script).ordered
        @browser.should_receive(:script).with(no_args).ordered.and_return(mocked_script)
        mocked_script.should_receive(:innerText).with("/var accountNumber = 'UA-10897913-11';/").ordered.and_return(mocked_innerText)
        mocked_innerText.should_receive(:innerText).with(no_args).ordered.and_return("/var accountNumber = 'UA-10897913-11';/")
        @browser.google_analytics_script.should include "/var accountNumber = 'UA-10897913-11';/"
    end
		
		
		it "should have a HOPS Find a Store button" do
			mocked_tooltag = double("ToolTag")
			mocked_button = double("button")
			mocked_className = double("className")

			$tracer.should_receive(:trace).with(:hops_find_store_button).ordered

			@browser.should_receive(:button).ordered.and_return(mocked_button)
			@browser.should_receive(:create_ats_regex_string).with("ats-hops-handling-btn").ordered.and_return("ats-hops-handling-btn")
			mocked_button.should_receive(:className).with("ats-hops-handling-btn").ordered.and_return(mocked_className)
			ToolTag.should_receive(:new).with(mocked_className, :hops_find_store_button, @browser).ordered.and_return(mocked_tooltag)

			@browser.hops_find_store_button.should == mocked_tooltag
    end
		
		
		it "should have a HOPS Successfule message" do
			mocked_tooltag = double("ToolTag")
			mocked_section = double("section")
			mocked_id = double("id")

			$tracer.should_receive(:trace).with(:hops_success_message).ordered

			@browser.should_receive(:section).ordered.and_return(mocked_section)
			@browser.should_receive(:create_ats_regex_string).with("submit_success").ordered.and_return("submit_success")
			mocked_section.should_receive(:id).with("submit_success").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :hops_success_message, @browser).ordered.and_return(mocked_tooltag)

			@browser.hops_success_message.should == mocked_tooltag
    end
	

		it "should have a CreditCard radio button" do
			mocked_tooltag = double("ToolTag")
			mocked_section = double("section")
			mocked_id = double("id")
			mocked_p = double("p")
			mocked_find = double("find")
			
			$tracer.should_receive(:trace).with(:cc_payment_option).ordered

			@browser.should_receive(:section).ordered.and_return(mocked_section)
			mocked_section.should_receive(:id).with("payment_options").ordered.and_return(mocked_id)
			mocked_id.should_receive(:find).ordered.and_return(mocked_find)
			mocked_find.should_receive(:p).ordered.and_return(mocked_p)
			mocked_p.should_receive(:id).with("/creditcardselected/").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :cc_payment_option, @browser).ordered.and_return(mocked_tooltag)

			@browser.cc_payment_option.should == mocked_tooltag
    end
		
		
end

