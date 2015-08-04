ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe "Impulse Login" do

    before(:each) do
        @panel = ImpulseLoginAccountPanel.allocate
        @mocked_method = double("method")
        @mocked_ats = double("ats")
        @mocked_find = double("find")
        @mocked_element = double("element")
        @mocked_class = double("class")
        @mocked_return_tag = double("tag")
        @mocked_tag = double("tag")
        @mocked_browser = double("browser")
        @panel.instance_variable_set(:@tag, @mocked_tag)
        @panel.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should have a login account label" do
        @panel.should_receive(:format_method).with(:login_account_label).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:legend).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-login-panel-label").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.login_account_label.should == @mocked_return_tag
    end

    it "should have a email address field" do
        @panel.should_receive(:format_method).with(:email_address_field).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:input).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-email-address-field").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.email_address_field.should == @mocked_return_tag
    end

    it "should have a password field" do
        @panel.should_receive(:format_method).with(:password_field).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:div).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-password-field").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)
        mocked_input = double("input")
        @mocked_class.should_receive(:input).with(no_args).ordered.and_return(mocked_input)

        ToolTag.should_receive(:new).with(mocked_input, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.password_field.should == @mocked_return_tag
    end

    it "should have a forgot your password link" do
        @panel.should_receive(:format_method).with(:forgot_your_password_link).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:a).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-forgot-password-link").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.forgot_your_password_link.should == @mocked_return_tag
    end

    it "should have a forgot your password link" do
        @panel.should_receive(:format_method).with(:login_button).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:input).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-login-button").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.login_button.should == @mocked_return_tag
    end
end

describe "Impulse Create" do

    before(:each) do

        @panel = ImpulseCreateAccountPanel.allocate
        @mocked_method = double("method")
        @mocked_ats = double("ats")
        @mocked_find = double("find")
        @mocked_element = double("element")
        @mocked_class = double("class")
        @mocked_return_tag = double("tag")
        @mocked_tag = double("tag")
        @mocked_browser = double("browser")
        @panel.instance_variable_set(:@tag, @mocked_tag)
        @panel.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should have a login create label" do
        @panel.should_receive(:format_method).with(:create_account_label).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:legend).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-create-panel-label").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.create_account_label.should == @mocked_return_tag
    end

    it "should have a email address field" do
        @panel.should_receive(:format_method).with(:email_address_field).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:input).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-email-address-field").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.email_address_field.should == @mocked_return_tag
    end

    it "should have a password field" do
        @panel.should_receive(:format_method).with(:password_field).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:div).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-password-field").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)
        mocked_input = double("input")
        @mocked_class.should_receive(:input).with(no_args).ordered.and_return(mocked_input)

        ToolTag.should_receive(:new).with(mocked_input, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.password_field.should == @mocked_return_tag
    end

    it "should have a confirm email address field" do
        @panel.should_receive(:format_method).with(:confirm_email_address_field).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:input).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-confirm-email-address-field").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.confirm_email_address_field.should == @mocked_return_tag
    end

    it "should have a confirm password field" do
        @panel.should_receive(:format_method).with(:confirm_password_field).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:div).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-confirm-password-field").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)
        mocked_input = double("input")
        @mocked_class.should_receive(:input).with(no_args).ordered.and_return(mocked_input)

        ToolTag.should_receive(:new).with(mocked_input, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.confirm_password_field.should == @mocked_return_tag
    end

    it "should have a create button" do
        @panel.should_receive(:format_method).with(:create_button).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(@mocked_find)
        @mocked_find.should_receive(:input).with(no_args).ordered.and_return(@mocked_element)
        @panel.should_receive(:create_ats_regex_string).with("ats-create-account-button").ordered.and_return(@mocked_ats)
        @mocked_element.should_receive(:className).with(@mocked_ats).ordered.and_return(@mocked_class)

        ToolTag.should_receive(:new).with(@mocked_class, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.create_button.should == @mocked_return_tag
    end

    it "should have a promotions and special offers opt in checkbox" do
        temp_tag = double("temp tag")
        @panel.should_receive(:format_method).with(:promotions_and_special_offers_opt_in_checkbox).and_return(@mocked_method)
        $tracer.should_receive(:trace).with(@mocked_method)

        @mocked_browser.should_receive(:jquery).with("span[class~='ats-promos-opt-in-checkbox'], div[class~='ats-promos-opt-in-checkbox']").ordered.and_return(temp_tag)
        temp_tag.should_receive(:input).with(no_args).ordered.and_return(@mocked_element)

        ToolTag.should_receive(:new).with(@mocked_element, @mocked_method, @mocked_browser).ordered.and_return(@mocked_return_tag)

        @panel.promotions_and_special_offers_opt_in_checkbox.should == @mocked_return_tag
    end

end
