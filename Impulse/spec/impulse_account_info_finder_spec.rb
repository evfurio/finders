ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseAccountInfoFinder do

    before(:all) do
        class ImpulseAccountInfoFinderTest
            include ImpulseAccountInfoFinder
        end

        @browser = ImpulseAccountInfoFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseAccountInfoFinderTest) if Object.const_defined?(:ImpulseAccountInfoFinderTest)
    end

    it "should have a email or nickname field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:email_or_nickname_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-email-or-nickname-field").ordered.and_return("ats-email-or-nickname-field")
        mocked_input.should_receive(:className).with("ats-email-or-nickname-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :email_or_nickname_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.email_or_nickname_field.should == mocked_tooltag
    end

    it "should have a confirm email or nickname field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:confirm_email_or_nickname_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-confirm-email-or-nickname-field").ordered.and_return("ats-confirm-email-or-nickname-field")
        mocked_input.should_receive(:className).with("ats-confirm-email-or-nickname-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_email_or_nickname_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_or_nickname_field.should == mocked_tooltag
    end

    it "should have a login link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:login_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-login-link").ordered.and_return("ats-login-link")
        mocked_a.should_receive(:className).with("ats-login-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :login_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.login_link.should == mocked_tooltag
    end

    it "should have a create account link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-create-account-link").ordered.and_return("ats-create-account-link")
        mocked_a.should_receive(:className).with("ats-create-account-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.create_account_link.should == mocked_tooltag
    end

    it "should have a create account button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:create_account_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("button_create_account").ordered.and_return("button_create_account")
        mocked_input.should_receive(:className).with("button_create_account").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :create_account_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.create_account_button.should == mocked_tooltag
    end

    it "should have a promotions and special offers opt in checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:promotions_and_special_offers_opt_in_checkbox).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/emaillist/").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/CanEmail/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :promotions_and_special_offers_opt_in_checkbox, @browser).ordered.and_return(mocked_tooltag)

        @browser.promotions_and_special_offers_opt_in_checkbox.should == mocked_tooltag
    end

    it "should have a change billing information link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_innerText = double("innerText")

        $tracer.should_receive(:trace).with(:change_billing_information_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:innerText).with("Change Billing Information").ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :change_billing_information_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.change_billing_information_link.should == mocked_tooltag
    end

    it "should have a change password link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_innerText = double("innerText")

        $tracer.should_receive(:trace).with(:change_password_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:innerText).with("Change Password").ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :change_password_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.change_password_link.should == mocked_tooltag
    end

    it "should have a print invoices link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_innerText = double("innerText")

        $tracer.should_receive(:trace).with(:print_invoices_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:innerText).with("Print Invoices (View Past Orders)").ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :print_invoices_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.print_invoices_link.should == mocked_tooltag
    end

    it "should have a view unredeemed gift cards link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_innerText = double("innerText")

        $tracer.should_receive(:trace).with(:view_unredeemed_gift_cards_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:innerText).with("View Unredeemed Gift Cards").ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :view_unredeemed_gift_cards_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.view_unredeemed_gift_cards_link.should == mocked_tooltag
    end

    it "should have a my account login label" do
        mocked_tooltag = double("ToolTag")

        $tracer.should_receive(:trace).with(:my_account_login_label).ordered

        mocked_h2 = double("h2")
        @browser.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
        mocked_ats = double("ats")
        @browser.should_receive(:create_ats_regex_string).with("ats-my-account-login-label").ordered.and_return(mocked_ats)
        mocked_class = double("class")
        mocked_h2.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class)

        ToolTag.should_receive(:new).with(mocked_class, :my_account_login_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.my_account_login_label.should == mocked_tooltag
    end

    it "should have a my login account panel" do
        mocked_tooltag = double("ToolTag")

        $tracer.should_receive(:trace).with(:login_account_panel).ordered

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @browser.should_receive(:create_ats_regex_string).with("ats-login-panel").ordered.and_return(mocked_ats)
        mocked_class = double("class")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class)

        ToolTag.should_receive(:new).with(mocked_class, :login_account_panel, @browser).ordered.and_return(mocked_tooltag)

        mocked_panel = double("panel")
        ImpulseLoginAccountPanel.should_receive(:new).with(mocked_tooltag, @browser).and_return(mocked_panel)

        @browser.login_account_panel.should == mocked_panel
    end

    it "should have a my create account panel" do
        mocked_tooltag = double("ToolTag")

        $tracer.should_receive(:trace).with(:create_account_panel).ordered

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @browser.should_receive(:create_ats_regex_string).with("ats-create-panel").ordered.and_return(mocked_ats)
        mocked_class = double("class")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class)

        ToolTag.should_receive(:new).with(mocked_class, :create_account_panel, @browser).ordered.and_return(mocked_tooltag)

        mocked_panel = double("panel")
        ImpulseCreateAccountPanel.should_receive(:new).with(mocked_tooltag, @browser).and_return(mocked_panel)

        @browser.create_account_panel.should == mocked_panel
    end

    it "should have a success page label" do
        mocked_tooltag = double("ToolTag")

        $tracer.should_receive(:trace).with(:success_page_label).ordered

        mocked_h2 = double("h2")
        @browser.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
        mocked_ats = double("ats")
        @browser.should_receive(:create_ats_regex_string).with("ats-success-page-label").ordered.and_return(mocked_ats)
        mocked_class = double("class")
        mocked_h2.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class)

        ToolTag.should_receive(:new).with(mocked_class, :success_page_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.success_page_label.should == mocked_tooltag
    end

    it "should have a come on in button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:come_on_in_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with('ats-continue-button').ordered.and_return('ats-continue-button')
        mocked_a.should_receive(:className).with('ats-continue-button').ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :come_on_in_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.come_on_in_button.should == mocked_tooltag
    end

    it "should have a message field" do
        mocked_tooltag = double("ToolTag")
        mocked_textarea = double("textarea")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:message_field).ordered

        @browser.should_receive(:textarea).ordered.and_return(mocked_textarea)
        @browser.should_receive(:create_ats_regex_string).with("ats-message-field").ordered.and_return("ats-message-field")
        mocked_textarea.should_receive(:className).with("ats-message-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :message_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.message_field.should == mocked_tooltag
    end
end
