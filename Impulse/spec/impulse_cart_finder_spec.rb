ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseCartFinder do

    before(:all) do
        class ImpulseCartFinderTest
            include ImpulseCartFinder
        end

        @browser = ImpulseCartFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseCartFinderTest) if Object.const_defined?(:ImpulseCartFinderTest)
    end

    it "should have a empty cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_p = double("p")
        mocked_className = double("className")
        mock_self = double("self")

        $tracer.should_receive(:trace).with(:empty_cart_label).ordered

        @browser.should_receive(:get_self).ordered.and_return(mock_self)
        mock_self.should_receive(:p).ordered.and_return(mocked_p)
        @browser.should_receive(:create_ats_regex_string).with("ats-empty-cart-label").ordered.and_return("ats-empty-cart-label")
        mocked_p.should_receive(:className).with("ats-empty-cart-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :empty_cart_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.empty_cart_label.should == mocked_tooltag
    end

    it "should have a my cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:my_cart_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-my-cart-label").ordered.and_return("ats-my-cart-label")
        mocked_span.should_receive(:className).with("ats-my-cart-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :my_cart_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.my_cart_label.should == mocked_tooltag
    end

    it "should have a ip address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:ip_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-ip-address-field").ordered.and_return("ats-ip-address-field")
        mocked_input.should_receive(:className).with("ats-ip-address-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :ip_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.ip_address_field.should == mocked_tooltag
    end

    it "should have a cart my account link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_my_account_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-my-account-link").ordered.and_return("ats-my-account-link")
        mocked_a.should_receive(:className).with("ats-my-account-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_my_account_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_my_account_link.should == mocked_tooltag
    end

    it "should have a store gift card number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_gift_card_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-store-gift-card-number-field").ordered.and_return("ats-store-gift-card-number-field")
        mocked_input.should_receive(:className).with("ats-store-gift-card-number-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_gift_card_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_gift_card_number_field.should == mocked_tooltag
    end

    it "should have a store gift card pin field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_gift_card_pin_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-store-gift-card-pin-field").ordered.and_return("ats-store-gift-card-pin-field")
        mocked_input.should_receive(:className).with("ats-store-gift-card-pin-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_gift_card_pin_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_gift_card_pin_field.should == mocked_tooltag
    end

    it "should have a store apply gift card button" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_apply_gift_card_button).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        @browser.should_receive(:create_ats_regex_string).with("ats-store-apply-gift-card-button").ordered.and_return("ats-store-apply-gift-card-button")
        mocked_img.should_receive(:className).with("ats-store-apply-gift-card-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_apply_gift_card_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_apply_gift_card_button.should == mocked_tooltag
    end

    it "should have a cart pur number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_pur_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-pur-number-field").ordered.and_return("ats-pur-number-field")
        mocked_input.should_receive(:className).with("ats-pur-number-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_pur_number_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_pur_number_field.should == mocked_tooltag
    end

    it "should have a cart pur saved label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_pur_saved_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-pur-successful-save-panel").ordered.and_return("ats-pur-successful-save-panel")
        mocked_span.should_receive(:className).with("ats-pur-successful-save-panel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_pur_saved_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_pur_saved_label.should == mocked_tooltag
    end

    it "should have a cart pur number label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_pur_number_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-pur-saved-number-label").ordered.and_return("ats-pur-saved-number-label")
        mocked_span.should_receive(:className).with("ats-pur-saved-number-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_pur_number_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_pur_number_label.should == mocked_tooltag
    end

    it "should have a cart logout link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_logout_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-logout-link").ordered.and_return("ats-logout-link")
        mocked_a.should_receive(:className).with("ats-logout-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_logout_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_logout_link.should == mocked_tooltag
    end

    it "should have a cart remove coupon link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_remove_coupon_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-coupon-discounts-remove-link").ordered.and_return("ats-coupon-discounts-remove-link")
        mocked_a.should_receive(:className).with("ats-coupon-discounts-remove-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_remove_coupon_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_remove_coupon_link.should == mocked_tooltag
    end

    it "should have a coupon minimum required label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:coupon_minimum_required_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-coupon-minimum-required-label").ordered.and_return("ats-coupon-minimum-required-label")
        mocked_div.should_receive(:className).with("ats-coupon-minimum-required-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :coupon_minimum_required_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.coupon_minimum_required_label.should == mocked_tooltag
    end

    it "should have a order details button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_details_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-order-details-button").ordered.and_return("ats-order-details-button")
        mocked_a.should_receive(:className).with("ats-order-details-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_details_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.order_details_button.should == mocked_tooltag
    end

    it "should have a cart list" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_tbody = double("tbody")
        mocked_find = double("find")
        mocked_tr = double("tr")
        mocked_impulsecartlist = double("ImpulseCartList")

        $tracer.should_receive(:trace).with(:cart_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        @browser.should_receive(:create_ats_regex_string).with("ats-cart-list").ordered.and_return("ats-cart-list")
        mocked_table.should_receive(:className).with("ats-cart-list").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tbody).ordered.and_return(mocked_tbody)
        mocked_tbody.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :cart_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseCartList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsecartlist)

        @browser.cart_list.should == mocked_impulsecartlist
    end

end

