ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseFraudFinder do

    before(:all) do
        class ImpulseFraudFinderTest
            include ImpulseFraudFinder
        end

        @browser = ImpulseFraudFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseFraudFinderTest) if Object.const_defined?(:ImpulseFraudFinderTest)
    end

    it "should have a fraud queue label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")

        $tracer.should_receive(:trace).with(:fraud_queue_label).ordered

        @browser.should_receive(:div).with("/Fraud Queue/").ordered.and_return(mocked_div)
        ToolTag.should_receive(:new).with(mocked_div, :fraud_queue_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.fraud_queue_label.should == mocked_tooltag
    end

    it "should have a fraud queue list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_table = double("table")
        mocked_impulsefraudqueuelist = double("ImpulseFraudQueueList")

        $tracer.should_receive(:trace).with(:fraud_queue_list).ordered

        @browser.should_receive(:div).with("/Fraud Queue/").ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:table).ordered.and_return(mocked_table)
        ToolTag.should_receive(:new).with(mocked_table, :fraud_queue_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseFraudQueueList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsefraudqueuelist)

        @browser.fraud_queue_list.should == mocked_impulsefraudqueuelist
    end

    it "should have a view fraud queue history link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")

        $tracer.should_receive(:trace).with(:view_fraud_queue_history_link).ordered

        @browser.should_receive(:a).with("/View Fraud Queue History/").ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :view_fraud_queue_history_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.view_fraud_queue_history_link.should == mocked_tooltag
    end

    it "should have a fraud queue reports label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_table = double("table")
        mocked_td = double("td")

        $tracer.should_receive(:trace).with(:fraud_queue_reports_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("ctl00__Content__SearchCriteria").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:td).with("/Fraud Queue Reports/").ordered.and_return(mocked_td)
        ToolTag.should_receive(:new).with(mocked_td, :fraud_queue_reports_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.fraud_queue_reports_label.should == mocked_tooltag
    end
end
