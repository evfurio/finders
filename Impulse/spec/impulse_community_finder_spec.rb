ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseCommunityFinder do

    before(:all) do
        class ImpulseCommunityFinderTest
            include ImpulseCommunityFinder
        end

        @browser = ImpulseCommunityFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseCommunityFinderTest) if Object.const_defined?(:ImpulseCommunityFinderTest)
    end

    it "should have a community log in label" do
        mocked_tooltag = double("tooltag")
        mocked_div = double("div")
        mocked_class = double("class")

        $tracer.should_receive(:trace).with(:community_log_in_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:class).with("/head/").ordered.and_return(mocked_class)
        ToolTag.should_receive(:new).with(mocked_class, :community_log_in_label, @browser).and_return(mocked_tooltag)

        @browser.community_log_in_label.should == mocked_tooltag
    end

    it "should have a community sign up link" do
        mocked_tooltag = double("tooltag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:community_sign_up_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/LinkSignUp/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :community_sign_up_link, @browser).and_return(mocked_tooltag)

        @browser.community_sign_up_link.should == mocked_tooltag
    end

    it "should have a community user name link" do
        mocked_tooltag = double("tooltag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:community_user_name_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/LinkUser/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :community_user_name_link, @browser).and_return(mocked_tooltag)

        @browser.community_user_name_link.should == mocked_tooltag
    end

    it "should have a community logoff link" do
        mocked_tooltag = double("tooltag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:community_logoff_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/Logoff/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :community_logoff_link, @browser).and_return(mocked_tooltag)

        @browser.community_logoff_link.should == mocked_tooltag
    end

    it "should have a community login error label" do
        mocked_tooltag = double("tooltag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:community_login_error_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/message/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :community_login_error_label, @browser).and_return(mocked_tooltag)

        @browser.community_login_error_label.should == mocked_tooltag
    end
end

