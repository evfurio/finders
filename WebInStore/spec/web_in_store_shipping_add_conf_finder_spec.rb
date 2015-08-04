ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

describe WebInStoreShippingAddConfirmationFinder do

    before(:all) do
      class WebInStoreShippingAddConfirmationFinderTest
        include WebInStoreShippingAddConfirmationFinder
      end

      @browser = WebInStoreShippingAddConfirmationFinderTest.allocate
    end

    after(:all) do
      Object.send(:remove_const, :WebInStoreShippingAddConfirmationFinderTest) if Object.const_defined?(:WebInStoreShippingAddConfirmationFinderTest)
    end

    it "should have a shipping add name" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_name).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagename").ordered.and_return("ats-wis-sacpagename")
      mocked_span.should_receive(:className).with("ats-wis-sacpagename").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_name).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_name.should == mocked_tooltag
    end


    it "should have a shipping add addrline1" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_addrline1).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpageaddr1").ordered.and_return("ats-wis-sacpageaddr1")
      mocked_span.should_receive(:className).with("ats-wis-sacpageaddr1").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_addrline1).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_addrline1.should == mocked_tooltag
    end


    it "should have a shipping add addrline2" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_addrline2).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpageaddr2").ordered.and_return("ats-wis-sacpageaddr2")
      mocked_span.should_receive(:className).with("ats-wis-sacpageaddr2").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_addrline2).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_addrline2.should == mocked_tooltag
    end


    it "should have a shipping add citystatezip" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_citystatezip).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagecitystatezip").ordered.and_return("ats-wis-sacpagecitystatezip")
      mocked_span.should_receive(:className).with("ats-wis-sacpagecitystatezip").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_citystatezip).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_citystatezip.should == mocked_tooltag
    end


    it "should have a shipping add country" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_country).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagecountrycode").ordered.and_return("ats-wis-sacpagecountrycode")
      mocked_span.should_receive(:className).with("ats-wis-sacpagecountrycode").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_country).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_country.should == mocked_tooltag
    end


    it "should have a shipping add phone" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_phone).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpagephno").ordered.and_return("ats-wis-sacpagephno")
      mocked_span.should_receive(:className).with("ats-wis-sacpagephno").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_phone).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_phone.should == mocked_tooltag
    end


    it "should have a shipping add email" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_email).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-sacpageemailaddr").ordered.and_return("ats-wis-sacpageemailaddr")
      mocked_span.should_receive(:className).with("ats-wis-sacpageemailaddr").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_email).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_email.should == mocked_tooltag
    end


    it "should have a shipping add addconfm button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_addconfm_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipaddrconfcontinuebtn").ordered.and_return("ats-wis-shipaddrconfcontinuebtn")
      mocked_button.should_receive(:className).with("ats-wis-shipaddrconfcontinuebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_addconfm_button).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_addconfm_button.should == mocked_tooltag
    end


    it "should have a shipping add edit button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_edit_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-shipaddrconfeditbtn").ordered.and_return("ats-wis-shipaddrconfeditbtn")
      mocked_button.should_receive(:className).with("ats-wis-shipaddrconfeditbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_edit_button).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_edit_button.should == mocked_tooltag
    end


    it "should have a shipping add back button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:shipping_add_back_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-wis-backtoshipaddedit").ordered.and_return("ats-wis-backtoshipaddedit")
      mocked_button.should_receive(:className).with("ats-wis-backtoshipaddedit").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :shipping_add_back_button).ordered.and_return(mocked_tooltag)

      @browser.shipping_add_back_button.should == mocked_tooltag
    end

end
