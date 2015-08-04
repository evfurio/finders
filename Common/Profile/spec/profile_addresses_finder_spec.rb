ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfileAddressesFinder, "finders" do

    before(:all) do
        class ProfileAddressesFinderTest
            include ProfileAddressesFinder
        end

        @panel = ProfileAddressesFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfileAddressesFinderTest) if Object.const_defined?(:ProfileAddressesFinderTest)
    end

    it "should have a address book header label" do

      $tracer.should_receive(:trace).with(:address_book_header_label).ordered

      mocked_h2 = double("h2")
      @panel.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-addrbooklbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_h2.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_tooltag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :address_book_header_label).ordered.and_return(mocked_tooltag)

      @panel.address_book_header_label.should == mocked_tooltag
    end


    it "should have a shipping address panel" do

      $tracer.should_receive(:trace).with(:shipping_address_panel).ordered

      mocked_section = double("section")
      @panel.should_receive(:section).with(no_args).ordered.and_return(mocked_section)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-shipaddrpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_section.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfileAddressPanel")
      ProfileAddressPanel.should_receive(:new).with(mocked_className, :shipping_address_panel).ordered.and_return(mocked_panel)

      @panel.shipping_address_panel.should == mocked_panel
    end


    it "should have a billing address panel" do

      $tracer.should_receive(:trace).with(:billing_address_panel).ordered

      mocked_section = double("section")
      @panel.should_receive(:section).with(no_args).ordered.and_return(mocked_section)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-billaddrpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_section.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfileAddressPanel")
      ProfileAddressPanel.should_receive(:new).with(mocked_className, :billing_address_panel).ordered.and_return(mocked_panel)

      @panel.billing_address_panel.should == mocked_panel
    end


    it "should have a mailing address panel" do

      $tracer.should_receive(:trace).with(:mailing_address_panel).ordered

      mocked_section = double("section")
      @panel.should_receive(:section).with(no_args).ordered.and_return(mocked_section)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-mailaddrpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_section.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfileAddressPanel")
      ProfileAddressPanel.should_receive(:new).with(mocked_className, :mailing_address_panel).ordered.and_return(mocked_panel)

      @panel.mailing_address_panel.should == mocked_panel
    end


    it "should have a stores panel" do

      $tracer.should_receive(:trace).with(:stores_panel).ordered

      mocked_section = double("section")
      @panel.should_receive(:section).with(no_args).ordered.and_return(mocked_section)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-storespanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_section.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfileStoresPanel")
      ProfileStoresPanel.should_receive(:new).with(mocked_className, :stores_panel).ordered.and_return(mocked_panel)

      @panel.stores_panel.should == mocked_panel
    end


    it "should have a popup address panel" do

      $tracer.should_receive(:trace).with(:popup_address_panel).ordered

      mocked_div = double("div")
      @panel.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-popupaddrpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfilePopupAddressPanel")
      ProfilePopupAddressPanel.should_receive(:new).with(mocked_className, :popup_address_panel).ordered.and_return(mocked_panel)

      @panel.popup_address_panel.should == mocked_panel
    end


    it "should have a store finder panel" do

      $tracer.should_receive(:trace).with(:store_finder_panel).ordered

      mocked_div = double("div")
      @panel.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-storefinderpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfilePopupStorePanel")
      ProfilePopupStorePanel.should_receive(:new).with(mocked_className, :store_finder_panel).ordered.and_return(mocked_panel)

      @panel.store_finder_panel.should == mocked_panel
    end


    it "should have a popup remove confirm panel" do

      $tracer.should_receive(:trace).with(:popup_remove_confirm_panel).ordered

      mocked_div = double("div")
      @panel.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-removeconfirmpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfilePopupRemovePanel")
      ProfilePopupRemovePanel.should_receive(:new).with(mocked_className, :popup_remove_confirm_panel).ordered.and_return(mocked_panel)

      @panel.popup_remove_confirm_panel.should == mocked_panel
    end


    it "should have a confirm panel" do

      $tracer.should_receive(:trace).with(:popup_max_number_panel).ordered

      mocked_div = double("div")
      @panel.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @panel.should_receive(:create_ats_regex_string).with("ats-popupmaxnumpanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_panel = double("ProfilePopupMaxNumPanel")
      ProfilePopupMaxNumPanel.should_receive(:new).with(mocked_className, :popup_max_number_panel).ordered.and_return(mocked_panel)

      @panel.popup_max_number_panel.should == mocked_panel
    end

    it "should have a overlay panel" do
      mocked_tooltag = double("ToolTag")
      mocked_body = double("body")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:overlay_panel).ordered

      @panel.should_receive(:body).ordered.and_return(mocked_body)
      @panel.should_receive(:create_ats_regex_string).with("ats-overlay").ordered.and_return("ats-overlay")
      mocked_body.should_receive(:className).with("ats-overlay").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :overlay_panel).ordered.and_return(mocked_tooltag)

      @panel.overlay_panel.should == mocked_tooltag
    end

end