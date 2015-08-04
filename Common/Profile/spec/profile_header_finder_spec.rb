ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfileHeaderFinder, "finders" do

    before(:all) do
        class ProfileHeaderFinderTest
            include ProfileHeaderFinder
        end

        @browser = ProfileHeaderFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfileHeaderFinderTest) if Object.const_defined?(:ProfileHeaderFinderTest)
    end

    it "should have a personal info link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_info_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfonavlnk").ordered.and_return("ats-personalinfonavlnk")
      mocked_a.should_receive(:className).with("ats-personalinfonavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_info_link).ordered.and_return(mocked_tooltag)

      @browser.personal_info_link.should == mocked_tooltag
    end


    it "should have a addresses link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:addresses_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-addressesnavlnk").ordered.and_return("ats-addressesnavlnk")
      mocked_a.should_receive(:className).with("ats-addressesnavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :addresses_link).ordered.and_return(mocked_tooltag)

      @browser.addresses_link.should == mocked_tooltag
    end


    it "should have a orders link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:orders_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-ordersnavlnk").ordered.and_return("ats-ordersnavlnk")
      mocked_a.should_receive(:className).with("ats-ordersnavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :orders_link).ordered.and_return(mocked_tooltag)

      @browser.orders_link.should == mocked_tooltag
    end


    it "should have a communications link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:communications_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-communicationsnavlnk").ordered.and_return("ats-communicationsnavlnk")
      mocked_a.should_receive(:className).with("ats-communicationsnavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :communications_link).ordered.and_return(mocked_tooltag)

      @browser.communications_link.should == mocked_tooltag
    end


    it "should have a payment method link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:payment_method_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-paymentmethodsnavlnk").ordered.and_return("ats-paymentmethodsnavlnk")
      mocked_a.should_receive(:className).with("ats-paymentmethodsnavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :payment_method_link).ordered.and_return(mocked_tooltag)

      @browser.payment_method_link.should == mocked_tooltag
    end


    it "should have a activate pur link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:activate_pur_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-activatepurnavlnk").ordered.and_return("ats-activatepurnavlnk")
      mocked_a.should_receive(:className).with("ats-activatepurnavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :activate_pur_link).ordered.and_return(mocked_tooltag)

      @browser.activate_pur_link.should == mocked_tooltag
    end


    it "should have a pur daskboard link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_dashboard_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-purdashboardnavlnk").ordered.and_return("ats-purdashboardnavlnk")
      mocked_a.should_receive(:className).with("ats-purdashboardnavlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_dashboard_link).ordered.and_return(mocked_tooltag)

      @browser.pur_dashboard_link.should == mocked_tooltag
    end

    it "should have a profile logout link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:profile_logout_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-logout").ordered.and_return("ats-logout")
      mocked_a.should_receive(:className).with("ats-logout").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :profile_logout_link).ordered.and_return(mocked_tooltag)

      @browser.profile_logout_link.should == mocked_tooltag
    end
end