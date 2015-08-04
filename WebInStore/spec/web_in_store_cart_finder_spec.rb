ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: cart_list, table.id("carttable").tr;WebInStoreCartList
#unit_test: cart_label, h2.className(create_ats_regex_string("ats-wis-cartlbl"))
#unit_test: update_button, button.className(create_ats_regex_string("ats-wis-updatebtn"))
#unit_test: subtotal_label, td.className(create_ats_regex_string("ats-wis-subtotallbl"))
#unit_test: subtotal_ammount, td.className(create_ats_regex_string("ats-wis-subtotal"))
#unit_test: discount_label, jquery("td[class~='ats-wis-discountlbl'], label[class~='ats-wis-discountlbl']")
#unit_test: discount_ammount, jquery("span[class~='ats-wis-discount'], td[class~='ats-wis-discount']")
#unit_test: order_total_label, jquery("td[class~='ats-wis-ordertotallbl'], label[class~='ats-wis-ordertotallbl']")
#unit_test: order_total_ammount, td.className(create_ats_regex_string("ats-wis-ordertotal"))
#unit_test: cart_note, div.className(create_ats_regex_string("ats-wis-cartnote"))
#unit_test: error_msg, div.className(create_ats_regex_string("ats-wis-errormsgpanel"))
#unit_test: continue_button, jquery("button[class~='ats-wis-checkoutbtn'], button[class~='imgbtnnext']")
#unit_test: cart_quantity_field, input.id(create_ats_regex_string("quantity"))
#unit_test: line_item_title, span.className(create_ats_regex_string("ats-wis-lineitemprodtitle"))
#unit_test: line_item_price, span.className(create_ats_regex_string("ats-wis-lineitemprice"))
#unit_test: line_item_quantity, input.className(create_ats_regex_string("ats-wis-lineitemqty"))

describe WebInStoreCartFinder do

    before(:all) do
        class WebInStoreCartFinderTest
            include WebInStoreCartFinder
        end

        @browser = WebInStoreCartFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :WebInStoreCartFinderTest) if Object.const_defined?(:WebInStoreCartFinderTest)
    end

    it "should have a cart list" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_tr = double("tr")
        mocked_webinstorecartlist = double("WebInStoreCartList")

        $tracer.should_receive(:trace).with(:cart_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("carttable0").ordered.and_return(mocked_id)
        mocked_id.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :cart_list).ordered.and_return(mocked_tooltag)
        WebInStoreCartList.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_webinstorecartlist)

        @browser.cart_list.should == mocked_webinstorecartlist
    end

    it "should have a cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_h2 = double("h2")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_label).ordered

        @browser.should_receive(:h2).ordered.and_return(mocked_h2)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-cartlbl").ordered.and_return("ats-wis-cartlbl")
        mocked_h2.should_receive(:className).with("ats-wis-cartlbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_label).ordered.and_return(mocked_tooltag)

        @browser.cart_label.should == mocked_tooltag
    end

    it "should have a update button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:update_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-updatebtn").ordered.and_return("ats-wis-updatebtn")
        mocked_button.should_receive(:className).with("ats-wis-updatebtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :update_button).ordered.and_return(mocked_tooltag)

        @browser.update_button.should == mocked_tooltag
    end

    it "should have a subtotal label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:subtotal_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-subtotallbl").ordered.and_return("ats-wis-subtotallbl")
        mocked_td.should_receive(:className).with("ats-wis-subtotallbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :subtotal_label).ordered.and_return(mocked_tooltag)

        @browser.subtotal_label.should == mocked_tooltag
    end

    it "should have a subtotal amount" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:subtotal_amount).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-subtotal").ordered.and_return("ats-wis-subtotal")
        mocked_td.should_receive(:className).with("ats-wis-subtotal").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :subtotal_amount).ordered.and_return(mocked_tooltag)

        @browser.subtotal_amount.should == mocked_tooltag
    end

    it "should have a discount label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:discount_label).ordered

        @browser.should_receive(:jquery).with("td[class~='ats-wis-discountlbl'], label[class~='ats-wis-discountlbl']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :discount_label).ordered.and_return(mocked_tooltag)

        @browser.discount_label.should == mocked_tooltag
    end

    it "should have a discount amount" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        $tracer.should_receive(:trace).with(:discount_amount).ordered

        @browser.should_receive(:jquery).with("span[class~='ats-wis-discount'], td[class~='ats-wis-discount']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :discount_amount).ordered.and_return(mocked_tooltag)

        @browser.discount_amount.should == mocked_tooltag
    end

    it "should have a order total label" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:order_total_label).ordered

        @browser.should_receive(:jquery).with("td[class~='ats-wis-ordertotallbl'], label[class~='ats-wis-ordertotallbl']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :order_total_label).ordered.and_return(mocked_tooltag)

        @browser.order_total_label.should == mocked_tooltag
    end

    it "should have a order total amount" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_total_amount).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-ordertotal").ordered.and_return("ats-wis-ordertotal")
        mocked_td.should_receive(:className).with("ats-wis-ordertotal").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_total_amount).ordered.and_return(mocked_tooltag)

        @browser.order_total_amount.should == mocked_tooltag
    end

    it "should have a cart note" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_note).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-cartnote").ordered.and_return("ats-wis-cartnote")
        mocked_div.should_receive(:className).with("ats-wis-cartnote").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_note).ordered.and_return(mocked_tooltag)

        @browser.cart_note.should == mocked_tooltag
    end

    it "should have a error msg" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:error_msg).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-errormsgpanel").ordered.and_return("ats-wis-errormsgpanel")
        mocked_div.should_receive(:className).with("ats-wis-errormsgpanel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :error_msg).ordered.and_return(mocked_tooltag)

        @browser.error_msg.should == mocked_tooltag
    end

    it "should have a continue button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:continue_button).ordered

        @browser.should_receive(:jquery).with("button[class~='ats-wis-checkoutbtn'], button[class~='imgbtnnext']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :continue_button).ordered.and_return(mocked_tooltag)

        @browser.continue_button.should == mocked_tooltag
    end

	it "should have a cart quantity field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:cart_quantity_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("quantity").ordered.and_return("quantity")
        mocked_input.should_receive(:id).with("quantity").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :cart_quantity_field).ordered.and_return(mocked_tooltag)

        @browser.cart_quantity_field.should == mocked_tooltag
    end
	it "should have a Product Line Item Title" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_classname = double("className")

        $tracer.should_receive(:trace).with(:line_item_title).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-lineitemprodtitle").ordered.and_return("ats-wis-lineitemprodtitle")
        mocked_span.should_receive(:className).with("ats-wis-lineitemprodtitle").ordered.and_return(mocked_classname)
        ToolTag.should_receive(:new).with(mocked_classname, :line_item_title).ordered.and_return(mocked_tooltag)

        @browser.line_item_title.should == mocked_tooltag
    end
	it "should have a Product Line Item Price" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_classname = double("className")

        $tracer.should_receive(:trace).with(:line_item_price).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-lineitemprice").ordered.and_return("ats-wis-lineitemprice")
        mocked_span.should_receive(:className).with("ats-wis-lineitemprice").ordered.and_return(mocked_classname)
        ToolTag.should_receive(:new).with(mocked_classname, :line_item_price).ordered.and_return(mocked_tooltag)

        @browser.line_item_price.should == mocked_tooltag
    end
	it "should have a Product Line Item Qty" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:line_item_quantity).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-lineitemqty").ordered.and_return("ats-wis-lineitemqty")
        mocked_input.should_receive(:className).with("ats-wis-lineitemqty").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :line_item_quantity).ordered.and_return(mocked_tooltag)

        @browser.line_item_quantity.should == mocked_tooltag
    end

end
