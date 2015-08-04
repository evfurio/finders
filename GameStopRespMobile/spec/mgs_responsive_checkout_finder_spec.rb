ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileCheckoutFinder do
	before(:all) do
		class GameStopRespMobileCheckoutFinderTest
				include GameStopRespMobileCheckoutFinder
		end
		@browser = GameStopRespMobileCheckoutFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileCheckoutFinderTest) if Object.const_defined?(:GameStopRespMobileCheckoutFinderTest)
	end

	
	it "should mgs_buy_as_login_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_buy_as_login_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-buyasaccount").ordered.and_return("ats-buyasaccount")
		mocked_btn.should_receive(:className).with("ats-buyasaccount").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_buy_as_login_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_buy_as_login_btn.should == mocked_tooltag
	end
	
	it "should mgs_buy_as_guest_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_buy_as_guest_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-buyasguest").ordered.and_return("ats-buyasguest")
		mocked_btn.should_receive(:className).with("ats-buyasguest").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_buy_as_guest_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_buy_as_guest_btn.should == mocked_tooltag
	end
	
	
	it "should mgs_buy_as_new_account_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_buy_as_new_account_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-buyasnew").ordered.and_return("ats-buyasnew")
		mocked_btn.should_receive(:className).with("ats-buyasnew").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_buy_as_new_account_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_buy_as_new_account_btn.should == mocked_tooltag
	end

	it "should mgs_chkout_cart_modal_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_cart_modal_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-cartModal-chkoutBtn").ordered.and_return("ats-cartModal-chkoutBtn")
		mocked_btn.should_receive(:className).with("ats-cartModal-chkoutBtn").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_cart_modal_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_cart_modal_btn.should == mocked_tooltag
	end
	
	it "should mgs_chkout_cart_page_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_cart_page_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-checkoutbtn").ordered.and_return("ats-checkoutbtn")
		mocked_btn.should_receive(:className).with("ats-checkoutbtn").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_cart_page_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_cart_page_btn.should == mocked_tooltag
	end

	it "should mgs_chkout_over_seventeen_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_over_seventeen_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-ofagebtn").ordered.and_return("ats-ofagebtn")
		mocked_btn.should_receive(:className).with("ats-ofagebtn").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_over_seventeen_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_over_seventeen_btn.should == mocked_tooltag
	end

	it "should mgs_chkout_under_seventeen_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_under_seventeen_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-underagebtn").ordered.and_return("ats-underagebtn")
		mocked_btn.should_receive(:className).with("ats-underagebtn").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_under_seventeen_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_under_seventeen_btn.should == mocked_tooltag
	end

	it "should mgs_chkout_cart_info_message" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_p = double("p")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:mgs_chkout_cart_info_message).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
        @browser.should_receive(:create_ats_regex_string).with("ats-infomsg").ordered.and_return("ats-infomsg")
        mocked_p.should_receive(:className).with("ats-infomsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_cart_info_message).ordered.and_return(mocked_tooltag)

        @browser.mgs_chkout_cart_info_message.should == mocked_tooltag
	end

	
	it "should mgs_chkout_ship_handling_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_ship_handling_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-shippingHandlingButton").ordered.and_return("ats-shippingHandlingButton")
		mocked_btn.should_receive(:className).with("ats-shippingHandlingButton").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_ship_handling_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_ship_handling_btn.should == mocked_tooltag
	end

	it "should mgs_chkout_first_name_field" do
		mocked_tooltag = double("ToolTag")
		mocked_input = double("input")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_first_name_field).ordered

		@browser.should_receive(:input).ordered.and_return(mocked_input)
		@browser.should_receive(:create_ats_regex_string).with("ats-fnamefield").ordered.and_return("ats-fnamefield")
		mocked_input.should_receive(:className).with("ats-fnamefield").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_first_name_field).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_first_name_field.should == mocked_tooltag
	end

	it "should mgs_chkout_last_name_field" do
		mocked_tooltag = double("ToolTag")
		mocked_input = double("input")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_last_name_field).ordered

		@browser.should_receive(:input).ordered.and_return(mocked_input)
		@browser.should_receive(:create_ats_regex_string).with("ats-lnamefield").ordered.and_return("ats-lnamefield")
		mocked_input.should_receive(:className).with("ats-lnamefield").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_last_name_field).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_last_name_field.should == mocked_tooltag
	end
	
	it "should mgs_chkout_email_address_field" do
		mocked_tooltag = double("ToolTag")
		mocked_input = double("input")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_email_address_field).ordered

		@browser.should_receive(:input).ordered.and_return(mocked_input)
		@browser.should_receive(:create_ats_regex_string).with("ats-emailfield").ordered.and_return("ats-emailfield")
		mocked_input.should_receive(:className).with("ats-emailfield").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_email_address_field).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_email_address_field.should == mocked_tooltag
	end

	it "should mgs_chkout_phone_number_field" do
		mocked_tooltag = double("ToolTag")
		mocked_input = double("input")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_phone_number_field).ordered

		@browser.should_receive(:input).ordered.and_return(mocked_input)
		@browser.should_receive(:create_ats_regex_string).with("ats-phonefield").ordered.and_return("ats-phonefield")
		mocked_input.should_receive(:className).with("ats-phonefield").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_phone_number_field).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_phone_number_field.should == mocked_tooltag
	end

	it "should mgs_chkout_address_1_field" do
		mocked_tooltag = double("ToolTag")
		mocked_input = double("input")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_chkout_address_1_field).ordered

		@browser.should_receive(:input).ordered.and_return(mocked_input)
		@browser.should_receive(:create_ats_regex_string).with("ats-line1field").ordered.and_return("ats-line1field")
		mocked_input.should_receive(:className).with("ats-line1field").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_address_1_field).ordered.and_return(mocked_tooltag)

		@browser.mgs_chkout_address_1_field.should == mocked_tooltag
	end

	it "should mgs_chkout_address_2_field" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_address_2_field).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-line2field").ordered.and_return("ats-line2field")
	  mocked_input.should_receive(:className).with("ats-line2field").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_address_2_field).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_address_2_field.should == mocked_tooltag
	end

	it "should mgs_chkout_country_select" do
	  mocked_tooltag = double("ToolTag")
	  mocked_get_self = double("get_self")
	  mocked_select = double("select")
	  mocked_className = double("className")
	  mocked_gamestopmobileselector = double("GameStopMobileSelector")

	  $tracer.should_receive(:trace).with(:mgs_chkout_country_select).ordered

	  @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
	  mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
	  @browser.should_receive(:create_ats_regex_string).with("ats-countryfield").ordered.and_return("ats-countryfield")
	  mocked_select.should_receive(:className).with("ats-countryfield").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_country_select, @browser).ordered.and_return(mocked_tooltag)
	  GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

	  @browser.mgs_chkout_country_select.should == mocked_gamestopmobileselector
	end

	it "should mgs_chkout_city_field" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_city_field).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-cityfield").ordered.and_return("ats-cityfield")
	  mocked_input.should_receive(:className).with("ats-cityfield").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_city_field).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_city_field.should == mocked_tooltag
	end

	it "should mgs_chkout_state_select" do
	  mocked_tooltag = double("ToolTag")
	  mocked_get_self = double("get_self")
	  mocked_select = double("select")
	  mocked_className = double("className")
	  mocked_gamestopmobileselector = double("GameStopMobileSelector")

	  $tracer.should_receive(:trace).with(:mgs_chkout_state_select).ordered

	  @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
	  mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
	  @browser.should_receive(:create_ats_regex_string).with("ats-usstate").ordered.and_return("ats-usstate")
	  mocked_select.should_receive(:className).with("ats-usstate").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_state_select, @browser).ordered.and_return(mocked_tooltag)
	  GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

	  @browser.mgs_chkout_state_select.should == mocked_gamestopmobileselector
	end

	it "should mgs_chkout_zip_code_field" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_zip_code_field).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-postalcodefield").ordered.and_return("ats-postalcodefield")
	  mocked_input.should_receive(:className).with("ats-postalcodefield").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_zip_code_field).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_zip_code_field.should == mocked_tooltag
	end

	it "should mgs_chkout_same_address_chkbox" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_same_address_chkbox).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-sameaddressoptinbox").ordered.and_return("ats-sameaddressoptinbox")
	  mocked_input.should_receive(:className).with("ats-sameaddressoptinbox").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_same_address_chkbox).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_same_address_chkbox.should == mocked_tooltag
	end

	
	it "should mgs_chkout_ship_standard" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_ship_standard).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-shippingOption_Standard").ordered.and_return("ats-shippingOption_Standard")
	  mocked_input.should_receive(:className).with("ats-shippingOption_Standard").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_ship_standard).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_ship_standard.should == mocked_tooltag
	end

	it "should mgs_chkout_ship_value" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_ship_value).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-shippingOption_Value").ordered.and_return("ats-shippingOption_Value")
	  mocked_input.should_receive(:className).with("ats-shippingOption_Value").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_ship_value).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_ship_value.should == mocked_tooltag
	end
	
	it "should mgs_chkout_ship_1day" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_ship_1day).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-shippingOption_OneDay").ordered.and_return("ats-shippingOption_OneDay")
	  mocked_input.should_receive(:className).with("ats-shippingOption_OneDay").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_ship_1day).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_ship_1day.should == mocked_tooltag
	end

	it "should mgs_chkout_ship_saver" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_ship_saver).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-shippingOption_Saver").ordered.and_return("ats-shippingOption_Saver")
	  mocked_input.should_receive(:className).with("ats-shippingOption_Saver").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_ship_saver).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_ship_saver.should == mocked_tooltag
	end

	it "should mgs_chkout_ship_2day" do
	  mocked_tooltag = double("ToolTag")
	  mocked_input = double("input")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_ship_2day).ordered

	  @browser.should_receive(:input).ordered.and_return(mocked_input)
	  @browser.should_receive(:create_ats_regex_string).with("ats-shippingOption_TwoDay").ordered.and_return("ats-shippingOption_TwoDay")
	  mocked_input.should_receive(:className).with("ats-shippingOption_TwoDay").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_ship_2day).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_ship_2day.should == mocked_tooltag
	end

	it "should mgs_chkout_ship_continue_btn" do
	  mocked_tooltag = double("ToolTag")
	  mocked_button = double("button")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_ship_continue_btn).ordered

	  @browser.should_receive(:button).ordered.and_return(mocked_button)
	  @browser.should_receive(:create_ats_regex_string).with("ats-shippingContinueCheckoutButton").ordered.and_return("ats-shippingContinueCheckoutButton")
	  mocked_button.should_receive(:className).with("ats-shippingContinueCheckoutButton").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_ship_continue_btn).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_ship_continue_btn.should == mocked_tooltag
	end

	it "should mgs_chkout_pay_continue_btn" do
	  mocked_tooltag = double("ToolTag")
	  mocked_button = double("button")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_pay_continue_btn).ordered

	  @browser.should_receive(:button).ordered.and_return(mocked_button)
	  @browser.should_receive(:create_ats_regex_string).with("ats-checkoutbtn").ordered.and_return("ats-checkoutbtn")
	  mocked_button.should_receive(:className).with("ats-checkoutbtn").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_pay_continue_btn).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_pay_continue_btn.should == mocked_tooltag
	end
	
	it "should mgs_chkout_pay_edit_bill_address" do
	  mocked_tooltag = double("ToolTag")
	  mocked_a = double("a")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_pay_edit_bill_address).ordered

	  @browser.should_receive(:a).ordered.and_return(mocked_a)
	  @browser.should_receive(:create_ats_regex_string).with("ats-editBillingAddress").ordered.and_return("ats-editBillingAddress")
	  mocked_a.should_receive(:className).with("ats-editBillingAddress").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_pay_edit_bill_address).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_pay_edit_bill_address.should == mocked_tooltag
	end
	
	it "should mgs_chkout_pay_add_payment" do
	  mocked_tooltag = double("ToolTag")
	  mocked_a = double("a")
	  mocked_className = double("className")

	  $tracer.should_receive(:trace).with(:mgs_chkout_pay_add_payment).ordered

	  @browser.should_receive(:a).ordered.and_return(mocked_a)
	  @browser.should_receive(:create_ats_regex_string).with("ats-addNewCard").ordered.and_return("ats-addNewCard")
	  mocked_a.should_receive(:className).with("ats-addNewCard").ordered.and_return(mocked_className)
	  ToolTag.should_receive(:new).with(mocked_className, :mgs_chkout_pay_add_payment).ordered.and_return(mocked_tooltag)

	  @browser.mgs_chkout_pay_add_payment.should == mocked_tooltag
	end

end