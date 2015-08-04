ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfileOrdersFinder, "finders" do

    before(:all) do
        class ProfileOrdersFinderTest
            include ProfileOrdersFinder
        end

        @browser = ProfileOrdersFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfileOrdersFinderTest) if Object.const_defined?(:ProfileOrdersFinderTest)
    end

    it "should have a orders header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:orders_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-orderslbl").ordered.and_return("ats-orderslbl")
      mocked_h2.should_receive(:className).with("ats-orderslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :orders_header_label).ordered.and_return(mocked_tooltag)

      @browser.orders_header_label.should == mocked_tooltag
    end


    it "should have a gamestop order history link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gamestop_order_history_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-orderhist").ordered.and_return("ats-orderhist")
      mocked_a.should_receive(:className).with("ats-orderhist").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gamestop_order_history_link).ordered.and_return(mocked_tooltag)

      @browser.gamestop_order_history_link.should == mocked_tooltag
    end


    it "should have a card activity link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:card_activity_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-cardactivitylnk").ordered.and_return("ats-cardactivitylnk")
      mocked_a.should_receive(:className).with("ats-cardactivitylnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :card_activity_link).ordered.and_return(mocked_tooltag)

      @browser.card_activity_link.should == mocked_tooltag
    end


    it "should have a guest order link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:guest_order_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-guestorderlookuplink").ordered.and_return("ats-guestorderlookuplink")
      mocked_a.should_receive(:className).with("ats-guestorderlookuplink").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :guest_order_link).ordered.and_return(mocked_tooltag)

      @browser.guest_order_link.should == mocked_tooltag
    end


    it "should have a gamestop orders image" do
      $tracer.should_receive(:trace).with(:gamestop_orders_image).ordered

      mocked_div = double("div")
      @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-gsordersimg").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :gamestop_orders_image).ordered.and_return(mocked_ToolTag)

      @browser.gamestop_orders_image.should == mocked_ToolTag
    end


    it "should have a gamestop orders label" do
      $tracer.should_receive(:trace).with(:gamestop_orders_label).ordered

      mocked_span = double("span")
      @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-gsorderslbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :gamestop_orders_label).ordered.and_return(mocked_ToolTag)

      @browser.gamestop_orders_label.should == mocked_ToolTag
    end


    it "should have a gamestop orders description label" do
      $tracer.should_receive(:trace).with(:gamestop_orders_description_label).ordered


      mocked_self = double("self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)
      mocked_p = double("p")
      mocked_self.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-gsordersdesclbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :gamestop_orders_description_label).ordered.and_return(mocked_ToolTag)

      @browser.gamestop_orders_description_label.should == mocked_ToolTag
    end


    it "should have a pur orders image" do
      $tracer.should_receive(:trace).with(:pur_orders_image)

      mocked_div = double("div")
      @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-purordersimg").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :pur_orders_image).ordered.and_return(mocked_ToolTag)

      @browser.pur_orders_image.should == mocked_ToolTag
    end


    it "should have a pur orders label" do
      $tracer.should_receive(:trace).with(:pur_orders_label)

      mocked_span = double("span")
      @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-purorderslbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :pur_orders_label).ordered.and_return(mocked_ToolTag)

      @browser.pur_orders_label.should == mocked_ToolTag
    end


    it "should have a pur orders description label" do
      $tracer.should_receive(:trace).with(:pur_orders_description_label)

      mocked_self = double("self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)
      mocked_p = double("p")
      mocked_self.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-purordersdesclbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :pur_orders_description_label).ordered.and_return(mocked_ToolTag)

      @browser.pur_orders_description_label.should == mocked_ToolTag
    end


    it "should have a guest orders label" do
      $tracer.should_receive(:trace).with(:guest_orders_label)

      mocked_h3 = double("h3")
      @browser.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-guestorderslbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :guest_orders_label).ordered.and_return(mocked_ToolTag)

      @browser.guest_orders_label.should == mocked_ToolTag
    end


    it "should have a guest orders description label" do
      $tracer.should_receive(:trace).with(:guest_orders_description_label)

      mocked_self = double("self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)

      mocked_p = double("p")
      mocked_self.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-guestordersdesclbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :guest_orders_description_label).ordered.and_return(mocked_ToolTag)

      @browser.guest_orders_description_label.should == mocked_ToolTag
    end
end