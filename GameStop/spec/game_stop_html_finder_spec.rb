ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopHTMLFinder, "finders" do

    before(:all) do
        class GameStopHTMLFinderTest
            include GameStopHTMLFinder
        end

        @browser = GameStopHTMLFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopHTMLFinderTest) if Object.const_defined?(:GameStopHTMLFinderTest)
    end

    it "should wait for landing page load, default" do
        $tracer.should_receive(:trace).with(:wait_for_landing_page_load).ordered

        @browser.should_receive(:sleep).with(1).ordered
        @browser.wait_for_landing_page_load.should be_nil
    end

    it "should wait for landing page load, non default" do
        $tracer.should_receive(:trace).with(:wait_for_landing_page_load).ordered

        @browser.should_receive(:sleep).with(2).ordered
        @browser.wait_for_landing_page_load(2000).should be_nil
    end

    it "should return server ip address" do
        $tracer.should_receive(:trace).with(:server_ip_address).ordered

        mocked_meta = double("meta")
        @browser.should_receive(:meta).with(no_args).ordered.and_return(mocked_meta)
        mocked_name = double("name")
        mocked_meta.should_receive(:name).with("WT.sv").ordered.and_return(mocked_name)
        mocked_name.should_receive(:content).with(no_args).ordered.and_return(" some ip address ")

        @browser.server_ip_address.should == "some ip address"
    end

    it "should return unknown ip address if cannot determine" do
        $tracer.should_receive(:trace).with(:server_ip_address).ordered

        mocked_meta = double("meta")
        # "rescue" alone handles StandardError, not Exception, therefore raise a StandardError
        @browser.should_receive(:meta).with(no_args).ordered.and_raise(StandardError.new)

        @browser.server_ip_address.should == "Unknown IP Address"
    end

    it "should close popup link" do
        $tracer.should_receive(:trace).with(:close_popup_link).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_id = double("id")
        mocked_a.should_receive(:id).with("/lnkClosePopup$/").ordered.and_return(mocked_id)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_id, :close_popup_link).ordered.and_return(mocked_tooltag)

        @browser.close_popup_link.should == mocked_tooltag
    end

    it "should return error message panel" do
        $tracer.should_receive(:trace).with(:error_message_panel).ordered

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("/ValidationSummary1$/").ordered.and_return(mocked_id)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_id, :error_message_panel).ordered.and_return(mocked_tooltag)

        @browser.error_message_panel.should == mocked_tooltag

    end
end
