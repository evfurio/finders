ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobilePaypalFinder do
    before(:all) do
        class GameStopMobilePaypalFinderTest
            include GameStopMobilePaypalFinder
        end

        @browser = GameStopMobilePaypalFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobilePaypalFinderTest) if Object.const_defined?(:GameStopMobilePaypalFinderTest)
    end

  

	it "should have a paypal_payment_option" do
		mocked_tooltag = double("ToolTag")
		mocked_section = double("section")
		mocked_id = double("id")
		mocked_p = double("p")
		mocked_find = double("find")
		
		$tracer.should_receive(:trace).with(:paypal_payment_option).ordered

		@browser.should_receive(:section).ordered.and_return(mocked_section)
		mocked_section.should_receive(:id).with("payment_options").ordered.and_return(mocked_id)
		mocked_id.should_receive(:find).ordered.and_return(mocked_find)
		mocked_find.should_receive(:p).ordered.and_return(mocked_p)
		mocked_p.should_receive(:id).with("/paypalselected/").ordered.and_return(mocked_id)
		ToolTag.should_receive(:new).with(mocked_id, :paypal_payment_option, @browser).ordered.and_return(mocked_tooltag)

		@browser.paypal_payment_option.should == mocked_tooltag
	end
		
	it "should have a chkout paypal_continue_button" do
			mocked_tooltag = double("ToolTag")
			mocked_button = double("button")

			$tracer.should_receive(:trace).with(:paypal_continue_button).ordered

			@browser.should_receive(:button).with("Continue To PayPal").ordered.and_return(mocked_button)
			ToolTag.should_receive(:new).with(mocked_button, :paypal_continue_button, @browser).ordered.and_return(mocked_tooltag)

			@browser.paypal_continue_button.should == mocked_tooltag
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
		
end

