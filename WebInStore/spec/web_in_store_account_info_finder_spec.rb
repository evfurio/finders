ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: shipping_information_label, div.className(create_ats_regex_string("ats-wis-shippingpage"))
#unit_test: clear_all_fields_button, button.className(create_ats_regex_string("ats-wis-clearfields"))
#unit_test: country_selector, div.select.className(create_ats_regex_string("ats-wis-country"));WebInStoreSelector
#unit_test: first_name_field, input.className(create_ats_regex_string("ats-wis-fname"))
#unit_test: last_name_field, input.className(create_ats_regex_string("ats-wis-lname"))
#unit_test: address_line_1_field, input.className(create_ats_regex_string("ats-wis-line1"))
#unit_test: address_line_2_field, input.className(create_ats_regex_string("ats-wis-line2"))
#unit_test: city_field, input.className(create_ats_regex_string("ats-wis-city"))
#unit_test: state_selector, jquery("select[class~='ats-wis-state']:visible");WebInStoreSelector
#unit_test: postal_code_field, input.className(create_ats_regex_string("ats-wis-zip"))
#unit_test: phone_field, input.className(create_ats_regex_string("ats-wis-phone"))
#unit_test: email_field, input.className(create_ats_regex_string("ats-wis-email"))
#unit_test: confirm_email_field, input.className(create_ats_regex_string("ats-wis-confirmemail"))
#unit_test: customer_search_label, div.className(create_ats_regex_string("ats-wis-custsearchlbl"))
#unit_test: search_last_name_field, input.className(create_ats_regex_string("ats-wis-searchlname"))
#unit_test: search_postal_code_field, input.className(create_ats_regex_string("ats-wis-searchzip"))
#unit_test: search_phone_field, input.className(create_ats_regex_string("ats-wis-searchphone"))
#unit_test: search_email_field, input.className(create_ats_regex_string("ats-wis-searchemail"))
#unit_test: search_pur_field, jquery("input[class~='ats-wis-pur'], input[class~='ats-wis-searchPUR']")
#unit_test: search_go_button, jquery("button[class~='ats-wis-orderlookupsubmitbtn'], button[class~='ats-wis-search']")
#unit_test: address_verification_checkbox, input.className(create_ats_regex_string("ats-wis-verifyaddrcheckbox"))
#unit_test: shipping_add_name, span.className(create_ats_regex_string("ats-wis-sacpagename"))
#unit_test: shipping_add_addrline1, span.className(create_ats_regex_string("ats-wis-sacpageaddr1"))
#unit_test: shipping_add_addrline2, span.className(create_ats_regex_string("ats-wis-sacpageaddr2"))
#unit_test: shipping_add_citystatezip, span.className(create_ats_regex_string("ats-wis-sacpagecitystatezip"))
#unit_test: shipping_add_country, span.className(create_ats_regex_string("ats-wis-sacpagecountrycode"))
#unit_test: shipping_add_phone, span.className(create_ats_regex_string("ats-wis-sacpagephno"))
#unit_test: shipping_add_email, span.className(create_ats_regex_string("ats-wis-sacpageemailaddr"))
#unit_test: shipping_add_addconfm_button, button.className(create_ats_regex_string("ats-wis-shipaddrconfcontinuebtn"))
#unit_test: shipping_add_back_button, button.className(create_ats_regex_string("ats-wis-backtoshipaddedit"))

describe WebInStoreAccountInfoFinder do

    before(:all) do
        class WebInStoreAccountInfoFinderTest
            include WebInStoreAccountInfoFinder
        end

        @browser = WebInStoreAccountInfoFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :WebInStoreAccountInfoFinderTest) if Object.const_defined?(:WebInStoreAccountInfoFinderTest)
    end

    it "should have a shipping information label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_information_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shippingpage").ordered.and_return("ats-wis-shippingpage")
        mocked_div.should_receive(:className).with("ats-wis-shippingpage").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_information_label).ordered.and_return(mocked_tooltag)

        @browser.shipping_information_label.should == mocked_tooltag
    end

    it "should have a clear all fields button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:clear_all_fields_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-clearfields").ordered.and_return("ats-wis-clearfields")
        mocked_button.should_receive(:className).with("ats-wis-clearfields").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :clear_all_fields_button).ordered.and_return(mocked_tooltag)

        @browser.clear_all_fields_button.should == mocked_tooltag
    end

    it "should have a country selector" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_select = double("select")
        mocked_className = double("className")
        mocked_webinstoreselector = double("WebInStoreSelector")

        $tracer.should_receive(:trace).with(:country_selector).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:select).ordered.and_return(mocked_select)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-country").ordered.and_return("ats-wis-country")
        mocked_select.should_receive(:className).with("ats-wis-country").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :country_selector).ordered.and_return(mocked_tooltag)
        WebInStoreSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_webinstoreselector)

        @browser.country_selector.should == mocked_webinstoreselector
    end

    it "should have a first name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:first_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-fname").ordered.and_return("ats-wis-fname")
        mocked_input.should_receive(:className).with("ats-wis-fname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :first_name_field).ordered.and_return(mocked_tooltag)

        @browser.first_name_field.should == mocked_tooltag
    end

    it "should have a last name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:last_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-lname").ordered.and_return("ats-wis-lname")
        mocked_input.should_receive(:className).with("ats-wis-lname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :last_name_field).ordered.and_return(mocked_tooltag)

        @browser.last_name_field.should == mocked_tooltag
    end

    it "should have a address line 1 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_line_1_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-line1").ordered.and_return("ats-wis-line1")
        mocked_input.should_receive(:className).with("ats-wis-line1").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_line_1_field).ordered.and_return(mocked_tooltag)

        @browser.address_line_1_field.should == mocked_tooltag
    end

    it "should have a address line 2 field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_line_2_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-line2").ordered.and_return("ats-wis-line2")
        mocked_input.should_receive(:className).with("ats-wis-line2").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_line_2_field).ordered.and_return(mocked_tooltag)

        @browser.address_line_2_field.should == mocked_tooltag
    end

    it "should have a city field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:city_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-city").ordered.and_return("ats-wis-city")
        mocked_input.should_receive(:className).with("ats-wis-city").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :city_field).ordered.and_return(mocked_tooltag)

        @browser.city_field.should == mocked_tooltag
    end

    it "should have a state selector" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        mocked_webinstoreselector = double("WebInStoreSelector")

        $tracer.should_receive(:trace).with(:state_selector).ordered

        @browser.should_receive(:jquery).with("select[class~='ats-wis-state']:visible").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :state_selector).ordered.and_return(mocked_tooltag)
        WebInStoreSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_webinstoreselector)

        @browser.state_selector.should == mocked_webinstoreselector
    end

    it "should have a postal code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:postal_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-zip").ordered.and_return("ats-wis-zip")
        mocked_input.should_receive(:className).with("ats-wis-zip").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :postal_code_field).ordered.and_return(mocked_tooltag)

        @browser.postal_code_field.should == mocked_tooltag
    end

    it "should have a phone field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:phone_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-phone").ordered.and_return("ats-wis-phone")
        mocked_input.should_receive(:className).with("ats-wis-phone").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :phone_field).ordered.and_return(mocked_tooltag)

        @browser.phone_field.should == mocked_tooltag
    end

    it "should have a email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-email").ordered.and_return("ats-wis-email")
        mocked_input.should_receive(:className).with("ats-wis-email").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :email_field).ordered.and_return(mocked_tooltag)

        @browser.email_field.should == mocked_tooltag
    end

    it "should have a confirm email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:confirm_email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-confirmemail").ordered.and_return("ats-wis-confirmemail")
        mocked_input.should_receive(:className).with("ats-wis-confirmemail").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :confirm_email_field).ordered.and_return(mocked_tooltag)

        @browser.confirm_email_field.should == mocked_tooltag
    end

    it "should have a customer search label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:customer_search_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-custsearchlbl").ordered.and_return("ats-wis-custsearchlbl")
        mocked_div.should_receive(:className).with("ats-wis-custsearchlbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :customer_search_label).ordered.and_return(mocked_tooltag)

        @browser.customer_search_label.should == mocked_tooltag
    end

    it "should have a search last name field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_last_name_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchlname").ordered.and_return("ats-wis-searchlname")
        mocked_input.should_receive(:className).with("ats-wis-searchlname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_last_name_field).ordered.and_return(mocked_tooltag)

        @browser.search_last_name_field.should == mocked_tooltag
    end

    it "should have a search postal code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_postal_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchzip").ordered.and_return("ats-wis-searchzip")
        mocked_input.should_receive(:className).with("ats-wis-searchzip").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_postal_code_field).ordered.and_return(mocked_tooltag)

        @browser.search_postal_code_field.should == mocked_tooltag
    end

    it "should have a search phone field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_phone_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchphone").ordered.and_return("ats-wis-searchphone")
        mocked_input.should_receive(:className).with("ats-wis-searchphone").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_phone_field).ordered.and_return(mocked_tooltag)

        @browser.search_phone_field.should == mocked_tooltag
    end

    it "should have a search email field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_email_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchemail").ordered.and_return("ats-wis-searchemail")
        mocked_input.should_receive(:className).with("ats-wis-searchemail").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_email_field).ordered.and_return(mocked_tooltag)

        @browser.search_email_field.should == mocked_tooltag
    end

    it "should have a search pur field" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:search_pur_field).ordered

        @browser.should_receive(:jquery).with("input[class~='ats-wis-pur'], input[class~='ats-wis-searchPUR']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :search_pur_field).ordered.and_return(mocked_tooltag)

        @browser.search_pur_field.should == mocked_tooltag
    end

    it "should have a search go button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:search_go_button).ordered

        @browser.should_receive(:jquery).with("button[class~='ats-wis-orderlookupsubmitbtn'], button[class~='ats-wis-search']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :search_go_button).ordered.and_return(mocked_tooltag)

        @browser.search_go_button.should == mocked_tooltag
    end

    it "should have a address verification checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_verification_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-verifyaddrcheckbox").ordered.and_return("ats-wis-verifyaddrcheckbox")
        mocked_input.should_receive(:className).with("ats-wis-verifyaddrcheckbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_verification_checkbox).ordered.and_return(mocked_tooltag)

        @browser.address_verification_checkbox.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_name).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagename").ordered.and_return("ats-wis-sacpagename")
        mocked_span.should_receive(:className).with("ats-wis-sacpagename").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_name).ordered.and_return(mocked_tooltag)
        @browser.shipping_add_name.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Address Line 1" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_addrline1).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpageaddr1").ordered.and_return("ats-wis-sacpageaddr1")
        mocked_span.should_receive(:className).with("ats-wis-sacpageaddr1").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_addrline1).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_addrline1.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Address Line 2" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_addrline2).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpageaddr2").ordered.and_return("ats-wis-sacpageaddr2")
        mocked_span.should_receive(:className).with("ats-wis-sacpageaddr2").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_addrline2).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_addrline2.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation City + State + ZIP" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_citystatezip).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagecitystatezip").ordered.and_return("ats-wis-sacpagecitystatezip")
        mocked_span.should_receive(:className).with("ats-wis-sacpagecitystatezip").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_citystatezip).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_citystatezip.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Country" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_country).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagecountrycode").ordered.and_return("ats-wis-sacpagecountrycode")
        mocked_span.should_receive(:className).with("ats-wis-sacpagecountrycode").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_country).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_country.should == mocked_tooltag
    end
	it "should have a Address Confirmation Phone" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_phone).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagephno").ordered.and_return("ats-wis-sacpagephno")
        mocked_span.should_receive(:className).with("ats-wis-sacpagephno").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_phone).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_phone.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Email" do
        mocked_tooltag = double("ToolTag")
        mocked_span= double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_email).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpageemailaddr").ordered.and_return("ats-wis-sacpageemailaddr")
        mocked_span.should_receive(:className).with("ats-wis-sacpageemailaddr").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_email).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_email.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Address Confirmed button" do
        mocked_tooltag = double("ToolTag")
        mocked_button= double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_addconfm_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipaddrconfcontinuebtn").ordered.and_return("ats-wis-shipaddrconfcontinuebtn")
        mocked_button.should_receive(:className).with("ats-wis-shipaddrconfcontinuebtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_addconfm_button).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_addconfm_button.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Edit Addresses button" do
        mocked_tooltag = double("ToolTag")
        mocked_button= double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_edit_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipaddrconfeditbtn").ordered.and_return("ats-wis-shipaddrconfeditbtn")
        mocked_button.should_receive(:className).with("ats-wis-shipaddrconfeditbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_edit_button).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_edit_button.should == mocked_tooltag
    end
	it "should have a Shipping Address Confirmation Back button" do
        mocked_tooltag = double("ToolTag")
        mocked_button= double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_add_back_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-backtoshipaddedit").ordered.and_return("ats-wis-backtoshipaddedit")
        mocked_button.should_receive(:className).with("ats-wis-backtoshipaddedit").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_add_back_button).ordered.and_return(mocked_tooltag)

        @browser.shipping_add_back_button.should == mocked_tooltag
    end
end
