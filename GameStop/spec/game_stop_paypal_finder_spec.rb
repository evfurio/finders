ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopPayPalFinder, "finders" do

    before(:all) do
        class GameStopPayPalFinderTest
            include GameStopPayPalFinder
        end

        @browser = GameStopPayPalFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopPayPalFinderTest) if Object.const_defined?(:GameStopPayPalFinderTest)
    end

      it "should have a paypal chkout button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:paypal_chkout_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-paypalcheckoutbtn").ordered.and_return("ats-paypalcheckoutbtn")
    mocked_a.should_receive(:className).with("ats-paypalcheckoutbtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_chkout_button).ordered.and_return(mocked_tooltag)

    @browser.paypal_chkout_button.should == mocked_tooltag
  end


  it "should have a paypal payment selector" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")
    mocked_gamestopradiobuttons = double("GameStopRadioButtons")

    $tracer.should_receive(:trace).with(:paypal_payment_selector).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:className).with("radiopp").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_payment_selector).ordered.and_return(mocked_tooltag)
    GameStopRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopradiobuttons)

    @browser.paypal_payment_selector.should == mocked_gamestopradiobuttons
  end


  it "should have a paypal personal tab" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_personal_tab).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("scTrack:SRD:Nav:L8").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_personal_tab, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_personal_tab.should == mocked_tooltag
  end


  it "should have a paypal logout link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_href = double("href")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_logout_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/logout/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :paypal_logout_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_logout_link.should == mocked_tooltag
  end


  it "should have a paypal master login link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_innerText = double("innerText")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_master_login_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:innerText).with("PayPal Sandbox").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :paypal_master_login_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_master_login_link.should == mocked_tooltag
  end


  it "should have a paypal master email field" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_master_email_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("login_email").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :paypal_master_email_field, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_master_email_field.should == mocked_tooltag
  end


  it "should have a paypal master password field" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_master_password_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("login_password").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :paypal_master_password_field, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_master_password_field.should == mocked_tooltag
  end


  it "should have a paypal master login button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_master_login_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:className).with("formBtnOrange").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_master_login_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_master_login_button.should == mocked_tooltag
  end


  it "should have a paypal test acct login field" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_div = double("div")
    mocked_class = double("className")

    $tracer.should_receive(:trace).with(:paypal_test_acct_login_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/emailField/").ordered.and_return(mocked_class)
    mocked_class.should_receive(:input).ordered.and_return(mocked_input)
    ToolTag.should_receive(:new).with(mocked_input, :paypal_test_acct_login_field, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_test_acct_login_field.should == mocked_tooltag
  end


  it "should have a paypal test acct password field" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_div = double("div")
    mocked_class = double("className")

    $tracer.should_receive(:trace).with(:paypal_test_acct_password_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/passwordField/").ordered.and_return(mocked_class)
    mocked_class.should_receive(:input).ordered.and_return(mocked_input)
    ToolTag.should_receive(:new).with(mocked_input, :paypal_test_acct_password_field, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_test_acct_password_field.should == mocked_tooltag
  end


  it "should have a paypal test acct login button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:paypal_test_acct_login_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:className).with("/loginBtn/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_test_acct_login_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_test_acct_login_button.should == mocked_tooltag
  end


  it "should have a paypal shipping address panel" do
    mocked_tooltag = double("ToolTag")
    mocked_h4 = double("h4")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_shipping_address_panel).ordered

    @browser.should_receive(:h4).with("Shipping address").ordered.and_return(mocked_h4)
    ToolTag.should_receive(:new).with(mocked_h4, :paypal_shipping_address_panel, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_shipping_address_panel.should == mocked_tooltag
  end


  it "should have a paypal test acct continue button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:paypal_test_acct_continue_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:className).with("/continueButton/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_test_acct_continue_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_test_acct_continue_button.should == mocked_tooltag
  end


  it "should have a paypal policy consent checkbox" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_policy_consent_checkbox).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with("esignOpt").ordered.and_return("esignOpt")
    mocked_input.should_receive(:id).with("esignOpt").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :paypal_policy_consent_checkbox, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_policy_consent_checkbox.should == mocked_tooltag
  end


  it "should have a paypal agree button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:paypal_agree_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with("agree").ordered.and_return("agree")
    mocked_input.should_receive(:id).with("agree").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :paypal_agree_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.paypal_agree_button.should == mocked_tooltag
  end

	it "should have a payment options radio button" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:payment_options_radio_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-paymentoptionsradiobtn").ordered.and_return("ats-paymentoptionsradiobtn")
    mocked_div.should_receive(:className).with("ats-paymentoptionsradiobtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :payment_options_radio_button).ordered.and_return(mocked_tooltag)

    @browser.payment_options_radio_button.should == mocked_tooltag
  end
	
		it "should have a change_payment_method_link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:change_payment_method_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-changepaymethod").ordered.and_return("ats-changepaymethod")
    mocked_a.should_receive(:className).with("ats-changepaymethod").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :change_payment_method_link).ordered.and_return(mocked_tooltag)

    @browser.change_payment_method_link.should == mocked_tooltag
  end
	
		it "should have a paypal_payment_info" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:paypal_payment_info).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-paypalinfo").ordered.and_return("ats-paypalinfo")
    mocked_div.should_receive(:className).with("ats-paypalinfo").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :paypal_payment_info).ordered.and_return(mocked_tooltag)

    @browser.paypal_payment_info.should == mocked_tooltag
  end
end


