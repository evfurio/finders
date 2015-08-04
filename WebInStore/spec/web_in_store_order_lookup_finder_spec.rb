ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: order_field, input.className(create_ats_regex_string("ats-wis-ordernumber"))
#unit_test: pur_field, jquery("input[class~='ats-wis-pur'], input[class~='ats-wis-searchPUR']")
#unit_test: go_button, jquery("button[class~='ats-wis-orderlookupsubmitbtn'], button[class~='ats-wis-search']")

describe WebInStoreOrderLookupFinder do

    before(:all) do
      class WebInStoreOrderLookupFinderTest
        include WebInStoreOrderLookupFinder
      end

      @browser = WebInStoreOrderLookupFinderTest.allocate
    end

    after(:all) do
      Object.send(:remove_const, :WebInStoreOrderLookupFinderTest) if Object.const_defined?(:WebInStoreOrderLookupFinderTest)
    end

    it "should have a order field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-ordernumber").ordered.and_return("ats-wis-ordernumber")
        mocked_input.should_receive(:className).with("ats-wis-ordernumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_field).ordered.and_return(mocked_tooltag)

        @browser.order_field.should == mocked_tooltag
    end

    it "should have a pur field" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:pur_field).ordered

        @browser.should_receive(:jquery).with("input[class~='ats-wis-pur'], input[class~='ats-wis-searchPUR']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :pur_field).ordered.and_return(mocked_tooltag)

        @browser.pur_field.should == mocked_tooltag
    end

    it "should have a go button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:go_button).ordered

        @browser.should_receive(:jquery).with("button[class~='ats-wis-orderlookupsubmitbtn'], button[class~='ats-wis-search']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :go_button).ordered.and_return(mocked_tooltag)

        @browser.go_button.should == mocked_tooltag
    end
	it "should have a view link" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:view_link).ordered

        @browser.should_receive(:jquery).with("td[class~='ats-wis-vieworder']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :view_link).ordered.and_return(mocked_tooltag)

        @browser.view_link.should == mocked_tooltag
    end
	it "should have an order number label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_number_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-ordernumberheader").ordered.and_return("ats-wis-ordernumberheader")
        mocked_tag.should_receive(:className).with("ats-wis-ordernumberheader").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_number_header).ordered.and_return(mocked_tooltag)

        @browser.order_number_header.should == mocked_tooltag
		
	end
	it "should have an order date label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_date_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-orderdateheader").ordered.and_return("ats-wis-orderdateheader")
        mocked_tag.should_receive(:className).with("ats-wis-orderdateheader").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_date_header).ordered.and_return(mocked_tooltag)

        @browser.order_date_header.should == mocked_tooltag
    end
	it "should have an order name label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_name_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-nameheader").ordered.and_return("ats-wis-nameheader")
        mocked_tag.should_receive(:className).with("ats-wis-nameheader").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_name_header).ordered.and_return(mocked_tooltag)

        @browser.order_name_header.should == mocked_tooltag
    end
	it "should have an order email label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_email_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-emailheader").ordered.and_return("ats-wis-emailheader")
        mocked_tag.should_receive(:className).with("ats-wis-emailheader").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_email_header).ordered.and_return(mocked_tooltag)

        @browser.order_email_header.should == mocked_tooltag
    end
	it "should have an order phone label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_phone_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-phoneheader").ordered.and_return("ats-wis-phoneheader")
        mocked_tag.should_receive(:className).with("ats-wis-phoneheader").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_phone_header).ordered.and_return(mocked_tooltag)

        @browser.order_phone_header.should == mocked_tooltag
    end
	it "should have an order pur label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:order_pur_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-PURheader").ordered.and_return("ats-wis-PURheader")
        mocked_tag.should_receive(:className).with("ats-wis-PURheader").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :order_pur_header).ordered.and_return(mocked_tooltag)

        @browser.order_pur_header.should == mocked_tooltag
    end
end
