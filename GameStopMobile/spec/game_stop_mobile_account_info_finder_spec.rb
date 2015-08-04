ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"



describe GameStopMobileAccountInfoFinder do

    before(:all) do
        class GameStopMobileAccountInfoFinderTest
            include GameStopMobileAccountInfoFinder
        end

        @browser = GameStopMobileAccountInfoFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileAccountInfoFinderTest) if Object.const_defined?(:GameStopMobileAccountInfoFinderTest)
    end

    it "should have a log in link" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:log_in_link).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:id).with("login_link").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:href).with("/loginqa/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :log_in_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.log_in_link.should == mocked_tooltag
    end


    it "should have a log out link" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:log_out_link).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:id).with("login_link").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:href).with("/Logout/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :log_out_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.log_out_link.should == mocked_tooltag
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


    it "should have a password field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:password_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("Password").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :password_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.password_field.should == mocked_tooltag
    end


    it "should have a log in button" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_button = double("button")

        $tracer.should_receive(:trace).with(:log_in_button).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("log_in_form").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:button).ordered.and_return(mocked_button)
        ToolTag.should_receive(:new).with(mocked_button, :log_in_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.log_in_button.should == mocked_tooltag
    end


    it "should have a first name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:first_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("FirstName").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :first_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.first_name_field.should == mocked_tooltag
    end


    it "should have a last name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:last_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("LastName").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :last_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.last_name_field.should == mocked_tooltag
    end


    it "should have a address 1 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:address_1_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("Line1").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_1_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.address_1_field.should == mocked_tooltag
    end


    it "should have a address 2 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:address_2_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("Line2").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :address_2_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.address_2_field.should == mocked_tooltag
    end


    it "should have a city field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:city_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("City").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :city_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.city_field.should == mocked_tooltag
    end


    it "should have a state province selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:state_province_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("State").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :state_province_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.state_province_selector.should == mocked_gamestopmobileselector
    end


    it "should have a zip postal code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:zip_postal_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("PostalCode").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :zip_postal_code_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.zip_postal_code_field.should == mocked_tooltag
    end


    it "should have a country selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:country_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("CountryCode").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :country_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.country_selector.should == mocked_gamestopmobileselector
    end


    it "should have a phone number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:phone_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("PhoneNumber").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :phone_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.phone_number_field.should == mocked_tooltag
    end


    it "should have a email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("Email").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.email_address_field.should == mocked_tooltag
    end


    it "should have a confirm email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:confirm_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("EmailConfirm").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :confirm_email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_address_field.should == mocked_tooltag
    end


    it "should have a credit card selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:credit_card_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("CardType").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.credit_card_selector.should == mocked_gamestopmobileselector
    end


    it "should have a credit card month selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:credit_card_month_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("ExpireMonth").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_month_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.credit_card_month_selector.should == mocked_gamestopmobileselector
    end


    it "should have a credit card year selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_id = double("id")
        mocked_gamestopmobileselector = double("GameStopMobileSelector")

        $tracer.should_receive(:trace).with(:credit_card_year_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:id).with("ExpireYear").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_year_selector, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

        @browser.credit_card_year_selector.should == mocked_gamestopmobileselector
    end


    it "should have a credit card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:credit_card_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("CardNumber").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :credit_card_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.credit_card_number_field.should == mocked_tooltag
    end


end

