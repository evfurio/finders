ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"




describe GameStopMobileHopsFinder do
    before(:all) do
        class GameStopMobileHopsFinderTest
            include GameStopMobileHopsFinder
        end

        @browser = GameStopMobileHopsFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileHopsFinderTest) if Object.const_defined?(:GameStopMobileHopsFinderTest)
    end

    it "should have a mgs_hops_stores_section" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:mgs_hops_stores_section).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("hops_store_list").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :mgs_hops_stores_section, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_hops_stores_section.should == mocked_tooltag
    end

    it "should have a mgs_hops_search_zip" do
        mocked_tooltag = double("ToolTag")
        mocked_form = double("form")
        mocked_className = double("className")
        mocked_div = double("div")
        mocked_input = double("input")
				mocked_type = double("type")

        $tracer.should_receive(:trace).with(:mgs_hops_search_zip).ordered

        @browser.should_receive(:form).ordered.and_return(mocked_form)
        mocked_form.should_receive(:className).with("no_spinner").ordered.and_return(mocked_className)
        mocked_className.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:input).ordered.and_return(mocked_input)
				mocked_input.should_receive(:type).ordered.and_return(mocked_type)
        ToolTag.should_receive(:new).with(mocked_type, :mgs_hops_search_zip, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_hops_search_zip.should == mocked_tooltag
    end		

    it "should have a mgs_hops_store_list" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")
        mocked_ol = double("ol")
        mocked_li = double("li")
        mocked_gamestopmobilestorelist = double("GameStopMobileStoreList")

        $tracer.should_receive(:trace).with(:mgs_hops_store_list).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("hops_store_list").ordered.and_return(mocked_id)
        mocked_id.should_receive(:ol).ordered.and_return(mocked_ol)
        mocked_ol.should_receive(:li).ordered.and_return(mocked_li)
        ToolTag.should_receive(:new).with(mocked_li, :mgs_hops_store_list, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileStoreList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobilestorelist)

        @browser.mgs_hops_store_list.should == mocked_gamestopmobilestorelist
    end			
		
    it "should have a mgs_hops_continue_button" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:mgs_hops_continue_button).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("continue_button").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :mgs_hops_continue_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_hops_continue_button.should == mocked_tooltag
    end
		
    it "should have a mgs_hops_confirm_button" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:mgs_hops_confirm_button).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("finish_button").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :mgs_hops_confirm_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_hops_confirm_button.should == mocked_tooltag
    end

    it "should have a mgs_hops_request_sent_message" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
				mocked_h4 = double("h4")

        $tracer.should_receive(:trace).with(:mgs_hops_request_sent_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("hops_request_sent").ordered.and_return(mocked_id)
				mocked_id.should_receive(:h4).ordered.and_return(mocked_h4)
        ToolTag.should_receive(:new).with(mocked_h4, :mgs_hops_request_sent_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_hops_request_sent_message.should == mocked_tooltag
    end

    it "should have a mgs_hops_order_confirm_message" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:mgs_hops_order_confirm_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("order_confirm_text").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_hops_order_confirm_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_hops_order_confirm_message.should == mocked_tooltag
    end	

	
end

