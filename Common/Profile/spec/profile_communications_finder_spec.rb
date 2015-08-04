ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfileCommunicationsFinder, "finders" do

    before(:all) do
        class ProfileCommunicationsFinderTest
            include ProfileCommunicationsFinder
        end

        @browser = ProfileCommunicationsFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfileCommunicationsFinderTest) if Object.const_defined?(:ProfileCommunicationsFinderTest)
    end

    it "should have a communications header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:communications_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-communicationslbl").ordered.and_return("ats-communicationslbl")
      mocked_h2.should_receive(:className).with("ats-communicationslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :communications_header_label).ordered.and_return(mocked_tooltag)

      @browser.communications_header_label.should == mocked_tooltag
    end


    it "should have a pur communications success label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_communications_success_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcommsuccesslbl").ordered.and_return("ats-purcommsuccesslbl")
      mocked_div.should_receive(:className).with("ats-purcommsuccesslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_communications_success_label).ordered.and_return(mocked_tooltag)

      @browser.pur_communications_success_label.should == mocked_tooltag
    end


    it "should have a pur communications label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_communications_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcommlbl").ordered.and_return("ats-purcommlbl")
      mocked_h3.should_receive(:className).with("ats-purcommlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_communications_label).ordered.and_return(mocked_tooltag)

      @browser.pur_communications_label.should == mocked_tooltag
    end


    it "should have a communications update button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:communications_update_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-commupdatebtn").ordered.and_return("ats-commupdatebtn")
      mocked_button.should_receive(:className).with("ats-commupdatebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :communications_update_button).ordered.and_return(mocked_tooltag)

      @browser.communications_update_button.should == mocked_tooltag
    end


    it "should have a pur communications error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_communications_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcommerrorlbl").ordered.and_return("ats-purcommerrorlbl")
      mocked_div.should_receive(:className).with("ats-purcommerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_communications_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_communications_error_label.should == mocked_tooltag
    end


    it "should have a gs communications success label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_communications_success_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-gscommsuccesslbl").ordered.and_return("ats-gscommsuccesslbl")
      mocked_div.should_receive(:className).with("ats-gscommsuccesslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_communications_success_label).ordered.and_return(mocked_tooltag)

      @browser.gs_communications_success_label.should == mocked_tooltag
    end


    it "should have a gs communications label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_communications_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-gscommlbl").ordered.and_return("ats-gscommlbl")
      mocked_h3.should_receive(:className).with("ats-gscommlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_communications_label).ordered.and_return(mocked_tooltag)

      @browser.gs_communications_label.should == mocked_tooltag
    end


    it "should have a gs subscribe button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_subscribe_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-gssubscribebtn").ordered.and_return("ats-gssubscribebtn")
      mocked_button.should_receive(:className).with("ats-gssubscribebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_subscribe_button).ordered.and_return(mocked_tooltag)

      @browser.gs_subscribe_button.should == mocked_tooltag
    end


    it "should have a gs unsubscribe button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_unsubscribe_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-gsunsubscribebtn").ordered.and_return("ats-gsunsubscribebtn")
      mocked_button.should_receive(:className).with("ats-gsunsubscribebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_unsubscribe_button).ordered.and_return(mocked_tooltag)

      @browser.gs_unsubscribe_button.should == mocked_tooltag
    end


    it "should have a gs communications error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_communications_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-gscommerrorlbl").ordered.and_return("ats-gscommerrorlbl")
      mocked_div.should_receive(:className).with("ats-gscommerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_communications_error_label).ordered.and_return(mocked_tooltag)

      @browser.gs_communications_error_label.should == mocked_tooltag
    end



end