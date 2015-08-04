ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: product_details_label, span.className(create_ats_regex_string("ats-wis-prodnamelbl"))
#unit_test: added_to_cart_label, div.className(create_ats_regex_string("ats-wis-itemaddedmsg"))
#unit_test: product_name, span.className(create_ats_regex_string("ats-wis-prodnamelbl"))
#unit_test: product_sku, span.className(create_ats_regex_string("ats-wis-sku"))
#unit_test: quantity_field, input.className(create_ats_regex_string("ats-wis-qtylbl"))
#unit_test: add_to_cart_button, button.className(create_ats_regex_string("ats-wis-addtocartbtn"))
#unit_test: product_condition, span.className(create_ats_regex_string("ats-wis-itemcondlbl"))
#unit_test: product_price, span.className(create_ats_regex_string("ats-wis-itempricelbl"))
#unit_test: product_description, span.className(create_ats_regex_string("ats-wis-itemdesclbl"))
#unit_test: product_image, img.className(create_ats_regex_string("ats-wis-prodimg"))
#unit_test: product_user_rating, div.className(create_ats_regex_string("ats-wis-userratinglbl"))
#unit_test: esrb_rating_image, img.className(create_ats_regex_string("ats-wis-esrbratingimg"))
#unit_test: sell_sheet_button, a.className(create_ats_regex_string("ats-wis-sellsheetlink"))
#unit_test: product_summary, table.id(create_ats_regex_string("detailedProduct"))
#unit_test: more_description, jquery("a[href*='#']")
#unit_test: checkout_button, button.className(create_ats_regex_string("ats-wis-checkoutbtn"))
#unit_test: also_available_label, span.className(create_ats_regex_string("ats-wis-alsoavailablelbl"))
#unit_test: product_details_button, button.className(create_ats_regex_string("ats-wis-productdetailsbtn"))
#unit_test: age_verification_required_label, div.className(create_ats_regex_string("ats-wis-agewarningmsg"))
#unit_test: age_warning_checkbox, input.className(create_ats_regex_string("ats-wis-ageverificationcheckbox"))
#unit_test: product_platform_label, span.className(create_ats_regex_string("ats-wis-prodplatforms"))
#unit_test: product_detail_price, span.className(create_ats_regex_string("ats-wis-itempricelbl"))

describe WebInStoreProductDetailsFinder do

    before(:all) do
      class WebInStoreProductDetailsFinderTest
        include WebInStoreProductDetailsFinder
      end

      @browser = WebInStoreProductDetailsFinderTest.allocate
    end

    after(:all) do
      Object.send(:remove_const, :WebInStoreProductDetailsFinderTest) if Object.const_defined?(:WebInStoreProductDetailsFinderTest)
    end

    it "should have a product details label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:product_details_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-prodnamelbl").ordered.and_return("ats-wis-prodnamelbl")
        mocked_tag.should_receive(:className).with("ats-wis-prodnamelbl").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_details_label).ordered.and_return(mocked_tooltag)

        @browser.product_details_label.should == mocked_tooltag
    end

    it "should have a added to cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:added_to_cart_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-itemaddedmsg").ordered.and_return("ats-wis-itemaddedmsg")
        mocked_div.should_receive(:className).with("ats-wis-itemaddedmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :added_to_cart_label).ordered.and_return(mocked_tooltag)

        @browser.added_to_cart_label.should == mocked_tooltag
    end

    it "should have a product sku" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_sku).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sku").ordered.and_return("ats-wis-sku")
        mocked_span.should_receive(:className).with("ats-wis-sku").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_sku).ordered.and_return(mocked_tooltag)

        @browser.product_sku.should == mocked_tooltag
    end

    it "should have a quantity field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:quantity_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-qtylbl").ordered.and_return("ats-wis-qtylbl")
        mocked_input.should_receive(:className).with("ats-wis-qtylbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :quantity_field).ordered.and_return(mocked_tooltag)

        @browser.quantity_field.should == mocked_tooltag
    end

    it "should have a add to cart button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:add_to_cart_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addtocartbtn").ordered.and_return("ats-wis-addtocartbtn")
        mocked_button.should_receive(:className).with("ats-wis-addtocartbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :add_to_cart_button).ordered.and_return(mocked_tooltag)

        @browser.add_to_cart_button.should == mocked_tooltag
    end

    it "should have a product condition" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_condition).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-itemcondlbl").ordered.and_return("ats-wis-itemcondlbl")
        mocked_span.should_receive(:className).with("ats-wis-itemcondlbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_condition).ordered.and_return(mocked_tooltag)

        @browser.product_condition.should == mocked_tooltag
    end

    it "should have a product price" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_price).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-itempricelbl").ordered.and_return("ats-wis-itempricelbl")
        mocked_span.should_receive(:className).with("ats-wis-itempricelbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_price).ordered.and_return(mocked_tooltag)

        @browser.product_price.should == mocked_tooltag
    end

    it "should have a product description" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_description).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-itemdesclbl").ordered.and_return("ats-wis-itemdesclbl")
        mocked_span.should_receive(:className).with("ats-wis-itemdesclbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_description).ordered.and_return(mocked_tooltag)

        @browser.product_description.should == mocked_tooltag
    end

    it "should have a product image" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_image).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-prodimg").ordered.and_return("ats-wis-prodimg")
        mocked_img.should_receive(:className).with("ats-wis-prodimg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_image).ordered.and_return(mocked_tooltag)

        @browser.product_image.should == mocked_tooltag
    end

    it "should have a product user rating" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_user_rating).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-userratinglbl").ordered.and_return("ats-wis-userratinglbl")
        mocked_div.should_receive(:className).with("ats-wis-userratinglbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_user_rating).ordered.and_return(mocked_tooltag)

        @browser.product_user_rating.should == mocked_tooltag
    end

    it "should have a esrb rating image" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:esrb_rating_image).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-esrbratingimg").ordered.and_return("ats-wis-esrbratingimg")
        mocked_img.should_receive(:className).with("ats-wis-esrbratingimg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :esrb_rating_image).ordered.and_return(mocked_tooltag)

        @browser.esrb_rating_image.should == mocked_tooltag
    end
	it "should have a sell sheet link" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("a")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:sell_sheet_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-sellsheetlink").ordered.and_return("ats-wis-sellsheetlink")
        mocked_tag.should_receive(:className).with("ats-wis-sellsheetlink").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :sell_sheet_button).ordered.and_return(mocked_tooltag)

        @browser.sell_sheet_button.should == mocked_tooltag
    end
	it "should have a product summary" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("table")
        mocked_attribute = double("id")
        $tracer.should_receive(:trace).with(:product_summary).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("detailedProduct").ordered.and_return("detailedProduct")
        mocked_tag.should_receive(:id).with("detailedProduct").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_summary).ordered.and_return(mocked_tooltag)

        @browser.product_summary.should == mocked_tooltag
    end
	it "should have a more description link" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        $tracer.should_receive(:trace).with(:more_description).ordered
        @browser.should_receive(:jquery).with("a[href*='#']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :more_description).ordered.and_return(mocked_tooltag)
        @browser.more_description.should == mocked_tooltag
    end
    it "should have a checkout button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:checkout_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-checkoutbtn").ordered.and_return("ats-wis-checkoutbtn")
        mocked_button.should_receive(:className).with("ats-wis-checkoutbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :checkout_button).ordered.and_return(mocked_tooltag)

        @browser.checkout_button.should == mocked_tooltag
    end

    it "should have a also available label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:also_available_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-alsoavailablelbl").ordered.and_return("ats-wis-alsoavailablelbl")
        mocked_span.should_receive(:className).with("ats-wis-alsoavailablelbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :also_available_label).ordered.and_return(mocked_tooltag)

        @browser.also_available_label.should == mocked_tooltag
    end

    it "should have a product details button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_details_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchproddetailsbtn").ordered.and_return("ats-wis-searchproddetailsbtn")
        mocked_button.should_receive(:className).with("ats-wis-searchproddetailsbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_details_button).ordered.and_return(mocked_tooltag)

        @browser.product_details_button.should == mocked_tooltag
    end

    it "should have a age verification required label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:age_verification_required_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-agewarningmsg").ordered.and_return("ats-wis-agewarningmsg")
        mocked_div.should_receive(:className).with("ats-wis-agewarningmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :age_verification_required_label).ordered.and_return(mocked_tooltag)

        @browser.age_verification_required_label.should == mocked_tooltag
    end

    it "should have a age warning checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:age_warning_checkbox).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-ageverificationcheckbox").ordered.and_return("ats-wis-ageverificationcheckbox")
        mocked_input.should_receive(:className).with("ats-wis-ageverificationcheckbox").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :age_warning_checkbox).ordered.and_return(mocked_tooltag)

        @browser.age_warning_checkbox.should == mocked_tooltag
    end
	it "should have a product platform label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:product_platform_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-prodplatforms").ordered.and_return("ats-wis-prodplatforms")
        mocked_tag.should_receive(:className).with("ats-wis-prodplatforms").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_platform_label).ordered.and_return(mocked_tooltag)

        @browser.product_platform_label.should == mocked_tooltag
    end
	it "should have a product detail price label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:product_detail_price).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-itempricelbl").ordered.and_return("ats-wis-itempricelbl")
        mocked_tag.should_receive(:className).with("ats-wis-itempricelbl").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_detail_price).ordered.and_return(mocked_tooltag)

        @browser.product_detail_price.should == mocked_tooltag
    end
		
		it "should have aow_panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className= double("className")

        $tracer.should_receive(:trace).with(:aow_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("buyboxwarranty").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :aow_panel).ordered.and_return(mocked_tooltag)

        @browser.aow_panel.should == mocked_tooltag
    end
		
		it "should have aow_service_plans" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")
        mocked_wisaowplans = double("WebInStoreAOWPlans")

			$tracer.should_receive(:trace).with(:aow_service_plans).ordered

			@browser.should_receive(:input).ordered.and_return(mocked_input)
			mocked_input.should_receive(:id).with("warranty").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :aow_service_plans).ordered.and_return(mocked_tooltag)
			WebInStoreAOWPlans.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_wisaowplans)

			@browser.aow_service_plans.should == mocked_wisaowplans
    end
		
		it "should have aow_details_back_button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className= double("className")

        $tracer.should_receive(:trace).with(:aow_details_back_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        mocked_button.should_receive(:className).with("ats-wis-backbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :aow_details_back_button).ordered.and_return(mocked_tooltag)

        @browser.aow_details_back_button.should == mocked_tooltag
    end	

end
