ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseCartTotalPanel do
    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @panel = ImpulseCartTotalPanel.new(@tag, @browser)
    end

    it "should have a discount panel" do
        discount_panel = double("discount panel")
        formatted_method = double("formatted method")
        mock_tag = double("mock tag")
        new_tag = double("new tag")
        regex = double("regex")

        @panel.should_receive(:format_method).with(:discount_panel).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        @tag.should_receive(:find).ordered.and_return(mock_tag)
        mock_tag.should_receive(:span).ordered.and_return(mock_tag)
        @panel.should_receive(:create_ats_regex_string).with("ats-coupon-discounts-label").ordered.and_return(regex)
        mock_tag.should_receive(:className).with(regex).ordered.and_return(mock_tag)
        mock_tag.should_receive(:parent).with("div").ordered.and_return(mock_tag)
        ToolTag.should_receive(:new).with(mock_tag, formatted_method, @browser).ordered.and_return(new_tag)
        ImpulseCartDiscountsPanel.should_receive(:new).with(new_tag, @browser).ordered.and_return(discount_panel)

        @panel.discount_panel.should == discount_panel
    end

end

describe ImpulseCartDiscountsPanel do

    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @panel = ImpulseCartDiscountsPanel.new(@tag, @browser)
    end

    it "should have a links list" do
        list = double("list")
        formatted_method = double("formatted method")
        mock_tag = double("mock tag")
        new_tag = double("new tag")
        regex = double("regex")

        @panel.should_receive(:format_method).with(:links_list).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        @tag.should_receive(:find).ordered.and_return(mock_tag)
        mock_tag.should_receive(:a).ordered.and_return(mock_tag)
        @panel.should_receive(:create_ats_regex_string).with("ats-coupon-discounts-remove-link").ordered.and_return(regex)
        mock_tag.should_receive(:className).with(regex).ordered.and_return(mock_tag)
        ToolTag.should_receive(:new).with(mock_tag, formatted_method, @browser).ordered.and_return(new_tag)
        ImpulseDiscountLinksList.should_receive(:new).with(new_tag, @browser).ordered.and_return(list)

        @panel.links_list.should == list
    end
end
