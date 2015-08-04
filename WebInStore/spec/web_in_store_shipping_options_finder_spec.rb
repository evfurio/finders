ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: cart_message, div.className(create_ats_regex_string("ats-wis-cartmsg"))
#unit_test: shipping_options_label, div.className(create_ats_regex_string("ats-wis-shippingoptionslbl"))
#unit_test: handling_method_buttons, div.className(create_ats_regex_string("shippingoptions"));WebInStoreRadioButtons
#unit_test: gift_message_checkbox, span.className(create_ats_regex_string("ats-wis-giftmsgcheckbox")).input
#unit_test: gift_message_field, span.className(create_ats_regex_string("ats-wis-giftmsgtxtbox")).textarea
#unit_test: address_information_label, div.className(create_ats_regex_string("ats-wis-addressinfolbl"))
#unit_test: first_name, span.className(create_ats_regex_string("ats-wis-addrfname"))
#unit_test: last_name, span.className(create_ats_regex_string("ats-wis-addrlname"))
#unit_test: address_line1, div.className(create_ats_regex_string("ats-wis-addrline1"))
#unit_test: address_city, span.className(create_ats_regex_string("ats-wis-addrcity"))
#unit_test: address_state, span.className(create_ats_regex_string("ats-wis-addrstate"))
#unit_test: address_postal_code, span.className(create_ats_regex_string("ats-wis-addrzip"))
#unit_test: address_email, div.className(create_ats_regex_string("ats-wis-addremail"))
#unit_test: shipping_method_label, span.className(create_ats_regex_string("ats-wis-shipmethodlbl"))
#unit_test: shipping_method, span.className(create_ats_regex_string("ats-wis-shipmethod"))
#unit_test: sales_tax_label, label.className(create_ats_regex_string("ats-wis-taxlbl"))
#unit_test: sales_tax_amount, td.className(create_ats_regex_string("ats-wis-tax"))
#unit_test: submit_button, button.className(create_ats_regex_string("ats-wis-checkoutbtn"))
#unit_test: order_number, div.className(create_ats_regex_string("ats-wis-ordernumber"))
#unit_test: order_date, div.className(create_ats_regex_string("ats-wis-orderdate"))
#unit_test: ship_method, div.className(create_ats_regex_string("ats-wis-shippingmethod"))
#unit_test: bar_code, img.className(create_ats_regex_string("ats-wis-barcodeimg"))
#unit_test: order_number_from_barcode,div.className(create_ats_regex_string("ats-wis-barcode"))
#unit_test: order_items, div.className("orderitems").table.tr
#unit_test: web_order_text, span.className(create_ats_regex_string("ats-wis-orderconfirmationtxt"))
#unit_test: shipping_status, span.className(create_ats_regex_string("ats-wis-shipstatus"))
#unit_test: order_ups_tracking_label,span.className(create_ats_regex_string("ats-wis-trackingheaderlbl"))
#unit_test: order_estimated_delivery, span.className(create_ats_regex_string("ats-wis-estimateddeliverydate"))

describe WebInStoreShippingOptionsFinder do

    before(:all) do
      class WebInStoreShippingOptionsFinderTest
        include WebInStoreShippingOptionsFinder
      end

      @browser = WebInStoreShippingOptionsFinderTest.allocate
    end

    after(:all) do
      Object.send(:remove_const, :WebInStoreShippingOptionsFinderTest) if Object.const_defined?(:WebInStoreShippingOptionsFinderTest)
    end

    it "should have a cart message" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-cartmsg").ordered.and_return("ats-wis-cartmsg")
        mocked_div.should_receive(:className).with("ats-wis-cartmsg").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_message).ordered.and_return(mocked_tooltag)

        @browser.cart_message.should == mocked_tooltag
    end

    it "should have a shipping options label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_options_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shippingoptionslbl").ordered.and_return("ats-wis-shippingoptionslbl")
        mocked_div.should_receive(:className).with("ats-wis-shippingoptionslbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_options_label).ordered.and_return(mocked_tooltag)

        @browser.shipping_options_label.should == mocked_tooltag
    end

  it "should have a handling method buttons" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")
    mocked_parent = double("parent")
    mocked_at = double("at")
    mocked_webinstoreradiobuttons = double("WebInStoreRadioButtons")

    $tracer.should_receive(:trace).with(:handling_method_buttons).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with("ats-wis-shippingoptions").ordered.and_return("ats-wis-shippingoptions")
    mocked_input.should_receive(:className).with("ats-wis-shippingoptions").ordered.and_return(mocked_className)
    mocked_className.should_receive(:parent).with("div").ordered.and_return(mocked_parent)
    mocked_parent.should_receive(:at).with(1).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :handling_method_buttons, @browser).ordered.and_return(mocked_tooltag)
    WebInStoreRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_webinstoreradiobuttons)

    @browser.handling_method_buttons.should == mocked_webinstoreradiobuttons
  end
  
    it "should have a gift message checkbox" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")
        mocked_input = double("input")

        $tracer.should_receive(:trace).with(:gift_message_checkbox).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-giftmsgcheckbox").ordered.and_return("ats-wis-giftmsgcheckbox")
        mocked_span.should_receive(:className).with("ats-wis-giftmsgcheckbox").ordered.and_return(mocked_className)
        mocked_className.should_receive(:input).ordered.and_return(mocked_input)
        ToolTag.should_receive(:new).with(mocked_input, :gift_message_checkbox).ordered.and_return(mocked_tooltag)

        @browser.gift_message_checkbox.should == mocked_tooltag
    end

    it "should have a gift message field" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")
        mocked_textarea = double("textarea")

        $tracer.should_receive(:trace).with(:gift_message_field).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-giftmsgtxtbox").ordered.and_return("ats-wis-giftmsgtxtbox")
        mocked_span.should_receive(:className).with("ats-wis-giftmsgtxtbox").ordered.and_return(mocked_className)
        mocked_className.should_receive(:textarea).ordered.and_return(mocked_textarea)
        ToolTag.should_receive(:new).with(mocked_textarea, :gift_message_field).ordered.and_return(mocked_tooltag)

        @browser.gift_message_field.should == mocked_tooltag
    end

    it "should have a address information label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_information_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addressinfolbl").ordered.and_return("ats-wis-addressinfolbl")
        mocked_div.should_receive(:className).with("ats-wis-addressinfolbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_information_label).ordered.and_return(mocked_tooltag)

        @browser.address_information_label.should == mocked_tooltag
    end

    it "should have a first name" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:first_name).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addrfname").ordered.and_return("ats-wis-addrfname")
        mocked_span.should_receive(:className).with("ats-wis-addrfname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :first_name).ordered.and_return(mocked_tooltag)

        @browser.first_name.should == mocked_tooltag
    end

    it "should have a last name" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:last_name).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addrlname").ordered.and_return("ats-wis-addrlname")
        mocked_span.should_receive(:className).with("ats-wis-addrlname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :last_name).ordered.and_return(mocked_tooltag)

        @browser.last_name.should == mocked_tooltag
    end

    it "should have a address line1" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_line1).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addrline1").ordered.and_return("ats-wis-addrline1")
        mocked_div.should_receive(:className).with("ats-wis-addrline1").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_line1).ordered.and_return(mocked_tooltag)

        @browser.address_line1.should == mocked_tooltag
    end

    it "should have a address city" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_city).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addrcity").ordered.and_return("ats-wis-addrcity")
        mocked_span.should_receive(:className).with("ats-wis-addrcity").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_city).ordered.and_return(mocked_tooltag)

        @browser.address_city.should == mocked_tooltag
    end

    it "should have a address state" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_state).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addrstate").ordered.and_return("ats-wis-addrstate")
        mocked_span.should_receive(:className).with("ats-wis-addrstate").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_state).ordered.and_return(mocked_tooltag)

        @browser.address_state.should == mocked_tooltag
    end

    it "should have a address postal code" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_postal_code).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addrzip").ordered.and_return("ats-wis-addrzip")
        mocked_span.should_receive(:className).with("ats-wis-addrzip").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_postal_code).ordered.and_return(mocked_tooltag)

        @browser.address_postal_code.should == mocked_tooltag
    end

    it "should have a address email" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:address_email).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-addremail").ordered.and_return("ats-wis-addremail")
        mocked_div.should_receive(:className).with("ats-wis-addremail").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :address_email).ordered.and_return(mocked_tooltag)

        @browser.address_email.should == mocked_tooltag
    end

    it "should have a shipping method label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_method_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipmethodlbl").ordered.and_return("ats-wis-shipmethodlbl")
        mocked_span.should_receive(:className).with("ats-wis-shipmethodlbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_method_label).ordered.and_return(mocked_tooltag)

        @browser.shipping_method_label.should == mocked_tooltag
    end

    it "should have a shipping method" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_method).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipmethod").ordered.and_return("ats-wis-shipmethod")
        mocked_span.should_receive(:className).with("ats-wis-shipmethod").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_method).ordered.and_return(mocked_tooltag)

        @browser.shipping_method.should == mocked_tooltag
    end

    it "should have a sales tax label" do
        mocked_tooltag = double("ToolTag")
        mocked_label = double("label")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:sales_tax_label).ordered

        @browser.should_receive(:label).ordered.and_return(mocked_label)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-taxlbl").ordered.and_return("ats-wis-taxlbl")
        mocked_label.should_receive(:className).with("ats-wis-taxlbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :sales_tax_label).ordered.and_return(mocked_tooltag)

        @browser.sales_tax_label.should == mocked_tooltag
    end

    it "should have a sales tax ammount" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:sales_tax_amount).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-tax").ordered.and_return("ats-wis-tax")
        mocked_td.should_receive(:className).with("ats-wis-tax").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :sales_tax_amount).ordered.and_return(mocked_tooltag)

        @browser.sales_tax_amount.should == mocked_tooltag
    end

    it "should have a submit button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:submit_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-checkoutbtn").ordered.and_return("ats-wis-checkoutbtn")
        mocked_button.should_receive(:className).with("ats-wis-checkoutbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :submit_button).ordered.and_return(mocked_tooltag)

        @browser.submit_button.should == mocked_tooltag
    end
	it "should have a order number label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_number).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-ordernumber").ordered.and_return("ats-wis-ordernumber")
        mocked_tag.should_receive(:className).with("ats-wis-ordernumber").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_number).ordered.and_return(mocked_tooltag)

        @browser.order_number.should == mocked_tooltag
    end
	it "should have a order date label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_date).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-orderdate").ordered.and_return("ats-wis-orderdate")
        mocked_tag.should_receive(:className).with("ats-wis-orderdate").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_date).ordered.and_return(mocked_tooltag)

        @browser.order_date.should == mocked_tooltag
    end
	it "should have a shipping method label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:ship_method).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shippingmethod").ordered.and_return("ats-wis-shippingmethod")
        mocked_tag.should_receive(:className).with("ats-wis-shippingmethod").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :ship_method).ordered.and_return(mocked_tooltag)

        @browser.ship_method.should == mocked_tooltag
    end
	it "should have a bar code img" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("img")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:bar_code).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-barcodeimg").ordered.and_return("ats-wis-barcodeimg")
        mocked_tag.should_receive(:className).with("ats-wis-barcodeimg").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :bar_code).ordered.and_return(mocked_tooltag)

        @browser.bar_code.should == mocked_tooltag
    end
	it "should have a order number bar code label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_number_from_barcode).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-barcode").ordered.and_return("ats-wis-barcode")
        mocked_tag.should_receive(:className).with("ats-wis-barcode").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_number_from_barcode).ordered.and_return(mocked_tooltag)

        @browser.order_number_from_barcode.should == mocked_tooltag
    end
	
	it "should have a web order text label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:web_order_text).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-orderconfirmationtxt").ordered.and_return("ats-wis-orderconfirmationtxt")
        mocked_tag.should_receive(:className).with("ats-wis-orderconfirmationtxt").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :web_order_text).ordered.and_return(mocked_tooltag)

        @browser.web_order_text.should == mocked_tooltag
    end
	it "should have a shipping status label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:shipping_status).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipstatus").ordered.and_return("ats-wis-shipstatus")
        mocked_tag.should_receive(:className).with("ats-wis-shipstatus").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :shipping_status).ordered.and_return(mocked_tooltag)

        @browser.shipping_status.should == mocked_tooltag
    end
	it "should have a order UPS tracking label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_ups_tracking_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-trackingheaderlbl").ordered.and_return("ats-wis-trackingheaderlbl")
        mocked_tag.should_receive(:className).with("ats-wis-trackingheaderlbl").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_ups_tracking_label).ordered.and_return(mocked_tooltag)

        @browser.order_ups_tracking_label.should == mocked_tooltag
    end
	it "should have a order estimated delivery label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_estimated_delivery).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-estimateddeliverydate").ordered.and_return("ats-wis-estimateddeliverydate")
        mocked_tag.should_receive(:className).with("ats-wis-estimateddeliverydate").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_estimated_delivery).ordered.and_return(mocked_tooltag)

        @browser.order_estimated_delivery.should == mocked_tooltag
    end
	it "should have a order promo code label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_promo_code).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-promocodereview").ordered.and_return("ats-wis-promocodereview")
        mocked_tag.should_receive(:className).with("ats-wis-promocodereview").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_promo_code).ordered.and_return(mocked_tooltag)

        @browser.order_promo_code.should == mocked_tooltag
    end
	it "should have a order promo code field" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("input")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_promo_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-promocode").ordered.and_return("ats-wis-promocode")
        mocked_tag.should_receive(:className).with("ats-wis-promocode").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_promo_code_field).ordered.and_return(mocked_tooltag)

        @browser.order_promo_code_field.should == mocked_tooltag
    end
	it "should have a apply promo button" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("button")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:apply_promo_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-applypromobtn").ordered.and_return("ats-wis-applypromobtn")
        mocked_tag.should_receive(:className).with("ats-wis-applypromobtn").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :apply_promo_button).ordered.and_return(mocked_tooltag)

        @browser.apply_promo_button.should == mocked_tooltag
    end
	it "should have a search customer by pur field" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("input")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:search_customer_by_pur).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchPUR").ordered.and_return("ats-wis-searchPUR")
        mocked_tag.should_receive(:className).with("ats-wis-searchPUR").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :search_customer_by_pur).ordered.and_return(mocked_tooltag)

        @browser.search_customer_by_pur.should == mocked_tooltag
    end
	it "should have a search customer button" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("button")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:search_customer_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-search").ordered.and_return("ats-wis-search")
        mocked_tag.should_receive(:className).with("ats-wis-search").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :search_customer_button).ordered.and_return(mocked_tooltag)

        @browser.search_customer_button.should == mocked_tooltag
    end
	it "should have a select customer button" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("button")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:select_customer_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-custselectbtn").ordered.and_return("ats-wis-custselectbtn")
        mocked_tag.should_receive(:className).with("ats-wis-custselectbtn").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :select_customer_button).ordered.and_return(mocked_tooltag)

        @browser.select_customer_button.should == mocked_tooltag
    end
	
	it "should have a shipping cost label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        $tracer.should_receive(:trace).with(:shipping_cost).ordered
        @browser.should_receive(:jquery).with("td[class~='ats-wis-shippingprice'], td[id~='span_shippingCost']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :shipping_cost).ordered.and_return(mocked_tooltag)
        @browser.shipping_cost.should == mocked_tooltag
    end
	
	
	it "should have a shipping restriction message" do
       mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        $tracer.should_receive(:trace).with(:shippingrestriction_message).ordered

        @browser.should_receive(:jquery).with("div[class~='ats-wis-errormsgpanel'], span[class~='ats-errormsg']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :shippingrestriction_message).ordered.and_return(mocked_tooltag)
        @browser.shippingrestriction_message.should == mocked_tooltag
    end
	it "should have a product title label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:product_title).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-producttitle").ordered.and_return("ats-wis-producttitle")
        mocked_tag.should_receive(:className).with("ats-wis-producttitle").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_title).ordered.and_return(mocked_tooltag)

        @browser.product_title.should == mocked_tooltag
    end
	it "should have a product price label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:product_price).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-price").ordered.and_return("ats-wis-price")
        mocked_tag.should_receive(:className).with("ats-wis-price").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_price).ordered.and_return(mocked_tooltag)

        @browser.product_price.should == mocked_tooltag
    end
	it "should have a quantity field" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:quantity_field).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-quantity").ordered.and_return("ats-wis-quantity")
        mocked_tag.should_receive(:className).with("ats-wis-quantity").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :quantity_field).ordered.and_return(mocked_tooltag)

        @browser.quantity_field.should == mocked_tooltag
    end
	it "should have a shipping promo code label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:shipping_promo_code).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-promocodeshipping").ordered.and_return("ats-wis-promocodeshipping")
        mocked_tag.should_receive(:className).with("ats-wis-promocodeshipping").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :shipping_promo_code).ordered.and_return(mocked_tooltag)

        @browser.shipping_promo_code.should == mocked_tooltag
    end
end
