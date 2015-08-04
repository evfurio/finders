ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseCheckoutFinder do

    before(:all) do
        class ImpulseCheckoutFinderTest
            include ImpulseCheckoutFinder
        end

        @browser = ImpulseCheckoutFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseCheckoutFinderTest) if Object.const_defined?(:ImpulseCheckoutFinderTest)
    end

    it "should have a billing information label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:billing_information_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-billing-information-label").ordered.and_return("ats-billing-information-label")
        mocked_h1.should_receive(:className).with("ats-billing-information-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :billing_information_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.billing_information_label.should == mocked_tooltag
    end

    it "should have a checkout payment information label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:checkout_payment_information_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-checkout-payment-information-label").ordered.and_return("ats-checkout-payment-information-label")
        mocked_h1.should_receive(:className).with("ats-checkout-payment-information-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :checkout_payment_information_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.checkout_payment_information_label.should == mocked_tooltag
    end

    it "should have a checkout review and submit label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:checkout_review_and_submit_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-checkout-review-and-submit-label").ordered.and_return("ats-checkout-review-and-submit-label")
        mocked_h1.should_receive(:className).with("ats-checkout-review-and-submit-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :checkout_review_and_submit_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.checkout_review_and_submit_label.should == mocked_tooltag
    end

    it "should have a order status processing label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_status_processing_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-notice-label").ordered.and_return("ats-notice-label")
        mocked_h1.should_receive(:className).with("ats-notice-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_status_processing_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.order_status_processing_label.should == mocked_tooltag
    end

    it "should have a checkout button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:checkout_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-checkout-button").ordered.and_return("ats-checkout-button")
        mocked_input.should_receive(:className).with("ats-checkout-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :checkout_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.checkout_button.should == mocked_tooltag
    end

    it "should have a credit card selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:credit_card_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-credit-card-selector").ordered.and_return("ats-credit-card-selector")
        mocked_select.should_receive(:className).with("ats-credit-card-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.credit_card_selector.should == mocked_impulseselector
    end

    it "should have a credit card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:credit_card_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-credit-card-number-field").ordered.and_return("ats-credit-card-number-field")
        mocked_input.should_receive(:className).with("ats-credit-card-number-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.credit_card_number_field.should == mocked_tooltag
    end

    it "should have a credit card holder name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:credit_card_holder_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-credit-card-holder-name-field").ordered.and_return("ats-credit-card-holder-name-field")
        mocked_input.should_receive(:className).with("ats-credit-card-holder-name-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_holder_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.credit_card_holder_name_field.should == mocked_tooltag
    end

    it "should have a credit card month selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:credit_card_month_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-credit-card-month-selector").ordered.and_return("ats-credit-card-month-selector")
        mocked_select.should_receive(:className).with("ats-credit-card-month-selector").ordered.and_return(mocked_className)

        ToolTag.should_receive(:new).with(mocked_className, :credit_card_month_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.credit_card_month_selector.should == mocked_impulseselector
    end

    it "should have a credit card year selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:credit_card_year_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-credit-card-year-selector").ordered.and_return("ats-credit-card-year-selector")
        mocked_select.should_receive(:className).with("ats-credit-card-year-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_year_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.credit_card_year_selector.should == mocked_impulseselector
    end

    it "should have a credit card security code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:credit_card_security_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-credit-card-security-code-field").ordered.and_return("ats-credit-card-security-code-field")
        mocked_input.should_receive(:className).with("ats-credit-card-security-code-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :credit_card_security_code_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.credit_card_security_code_field.should == mocked_tooltag
    end

    it "should have a continue button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:continue_button).ordered

        @browser.should_receive(:jquery).with("a[class~='ats-continue-button'], input[class~='ats-continue-button']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :continue_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.continue_button.should == mocked_tooltag
    end

    it "should have a submit order button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:submit_order_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-submit-order-button").ordered.and_return("ats-submit-order-button")
        mocked_input.should_receive(:className).with("ats-submit-order-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :submit_order_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.submit_order_button.should == mocked_tooltag
    end

    it "should have a order number link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_number_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-order-number-link").ordered.and_return("ats-order-number-link")
        mocked_a.should_receive(:className).with("ats-order-number-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_number_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.order_number_link.should == mocked_tooltag
    end

    it "should have a apply coupon button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:apply_coupon_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-coupon-code-apply-button").ordered.and_return("ats-coupon-code-apply-button")
        mocked_input.should_receive(:className).with("ats-coupon-code-apply-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :apply_coupon_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.apply_coupon_button.should == mocked_tooltag
    end

    it "should have a coupon field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:coupon_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-coupon-code-field").ordered.and_return("ats-coupon-code-field")
        mocked_input.should_receive(:className).with("ats-coupon-code-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :coupon_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.coupon_field.should == mocked_tooltag
    end

    it "should have a continue shopping button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:continue_shopping_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-continue-shopping-button").ordered.and_return("ats-continue-shopping-button")
        mocked_input.should_receive(:className).with("ats-continue-shopping-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :continue_shopping_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.continue_shopping_button.should == mocked_tooltag
    end

    it "should have a payment method buttons" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseradiobuttons = double("ImpulseRadioButtons")

        $tracer.should_receive(:trace).with(:payment_method_buttons).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-payment-method-buttons").ordered.and_return("ats-payment-method-buttons")
        mocked_div.should_receive(:className).with("ats-payment-method-buttons").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :payment_method_buttons, @browser).ordered.and_return(mocked_tooltag)
        ImpulseRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseradiobuttons)

        @browser.payment_method_buttons.should == mocked_impulseradiobuttons
    end

    it "should have a first name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:first_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-first-name-field").ordered.and_return("ats-first-name-field")
        mocked_input.should_receive(:className).with("ats-first-name-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :first_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.first_name_field.should == mocked_tooltag
    end

    it "should have a last name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:last_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-last-name-field").ordered.and_return("ats-last-name-field")
        mocked_input.should_receive(:className).with("ats-last-name-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :last_name_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.last_name_field.should == mocked_tooltag
    end

    it "should have a street address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:street_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-street-address-field").ordered.and_return("ats-street-address-field")
        mocked_input.should_receive(:className).with("ats-street-address-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :street_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.street_address_field.should == mocked_tooltag
    end

    it "should have a city field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:city_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-city-field").ordered.and_return("ats-city-field")
        mocked_input.should_receive(:className).with("ats-city-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :city_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.city_field.should == mocked_tooltag
    end

    it "should have a state selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:state_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-state-selector").ordered.and_return("ats-state-selector")
        mocked_select.should_receive(:className).with("ats-state-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :state_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.state_selector.should == mocked_impulseselector
    end

    it "should have a zip code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:zip_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-zip-code-field").ordered.and_return("ats-zip-code-field")
        mocked_input.should_receive(:className).with("ats-zip-code-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :zip_code_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.zip_code_field.should == mocked_tooltag
    end

    it "should have a phone number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:phone_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-phone-number-field").ordered.and_return("ats-phone-number-field")
        mocked_input.should_receive(:className).with("ats-phone-number-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :phone_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.phone_number_field.should == mocked_tooltag
    end

    it "should have a country selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:country_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-country-selector").ordered.and_return("ats-country-selector")
        mocked_select.should_receive(:className).with("ats-country-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :country_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.country_selector.should == mocked_impulseselector
    end

    it "should have a gamestop pc downloads eula label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_pc_downloads_eula_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-pc-downloads-eula-label").ordered.and_return("ats-gamestop-pc-downloads-eula-label")
        mocked_h1.should_receive(:className).with("ats-gamestop-pc-downloads-eula-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_pc_downloads_eula_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_pc_downloads_eula_label.should == mocked_tooltag
    end

    it "should have a gamestop support sales faq label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_support_sales_faq_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-support-sales-faq-label").ordered.and_return("ats-gamestop-support-sales-faq-label")
        mocked_h1.should_receive(:className).with("ats-gamestop-support-sales-faq-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_support_sales_faq_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_support_sales_faq_label.should == mocked_tooltag
    end

    it "should have a gamestop pc downloads privacy policy label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_pc_downloads_privacy_policy_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-pc-downloads-privacy-policy-label").ordered.and_return("ats-gamestop-pc-downloads-privacy-policy-label")
        mocked_h1.should_receive(:className).with("ats-gamestop-pc-downloads-privacy-policy-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_pc_downloads_privacy_policy_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_pc_downloads_privacy_policy_label.should == mocked_tooltag
    end

    it "should have a gamestop pc downloads return policy label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_pc_downloads_return_policy_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-pc-downloads-return-policy-label").ordered.and_return("ats-gamestop-pc-downloads-return-policy-label")
        mocked_h1.should_receive(:className).with("ats-gamestop-pc-downloads-return-policy-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_pc_downloads_return_policy_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_pc_downloads_return_policy_label.should == mocked_tooltag
    end

    it "should have a gamestop pc downloads terms of service label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_pc_downloads_terms_of_service_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-pc-downlods-terms-of-service-label").ordered.and_return("ats-gamestop-pc-downlods-terms-of-service-label")
        mocked_h1.should_receive(:className).with("ats-gamestop-pc-downlods-terms-of-service-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_pc_downloads_terms_of_service_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_pc_downloads_terms_of_service_label.should == mocked_tooltag
    end

    it "should have a month selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:month_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-month-selector").ordered.and_return("ats-month-selector")
        mocked_select.should_receive(:className).with("ats-month-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :month_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.month_selector.should == mocked_impulseselector
    end

    it "should have a year selector" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:year_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-year-selector").ordered.and_return("ats-year-selector")
        mocked_select.should_receive(:className).with("ats-year-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :year_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.year_selector.should == mocked_impulseselector
    end

    it "should have a company field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:company_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-company-field").ordered.and_return("ats-company-field")
        mocked_input.should_receive(:className).with("ats-company-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :company_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.company_field.should == mocked_tooltag
    end

    it "should have a purchase as gift button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:purchase_as_gift_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-purchase-as-gift-button").ordered.and_return("ats-purchase-as-gift-button")
        mocked_input.should_receive(:className).with("ats-purchase-as-gift-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :purchase_as_gift_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.purchase_as_gift_button.should == mocked_tooltag
    end

    it "should have a submit button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:submit_button).ordered

        @browser.should_receive(:jquery).with("input[id*='Submit'], input[class~='ats-submit-button']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :submit_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.submit_button.should == mocked_tooltag
    end

    it "should have a item already registered panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_impulseitemalreadyregisteredpanel = double("ImpulseItemAlreadyRegisteredPanel")

        $tracer.should_receive(:trace).with(:item_already_registered_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("cboxWrapper").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :item_already_registered_panel, @browser).ordered.and_return(mocked_tooltag)
        ImpulseItemAlreadyRegisteredPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseitemalreadyregisteredpanel)

        @browser.item_already_registered_panel.should == mocked_impulseitemalreadyregisteredpanel
    end

    it "should have a age verification label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:age_verification_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-age-verification-label").ordered.and_return("ats-age-verification-label")
        mocked_h1.should_receive(:className).with("ats-age-verification-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :age_verification_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.age_verification_label.should == mocked_tooltag
    end

    it "should have a day selector" do
        mocked_tooltag = double("ToolTag")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:day_selector).ordered

        mocked_get_self = double("get_self")
        @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-day-selector").ordered.and_return("ats-day-selector")
        mocked_select.should_receive(:className).with("ats-day-selector").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :day_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.day_selector.should == mocked_impulseselector
    end

end
