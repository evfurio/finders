ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseDiscountLinksList do
    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @list = ImpulseDiscountLinksList.new(@tag, @browser)
    end

    it "should get the item at the specified index" do
        new_tag = double("new tag")
        wct = double("wct")
        formatted_method = double("formatted method")

        @tag.should_receive(:at).with(1).ordered.and_return(wct)
        @list.should_receive(:format_method).with(:at).ordered.and_return(formatted_method)
        ToolTag.should_receive(:new).with(wct, formatted_method, @browser).ordered.and_return(new_tag)

        @list.at(1).should == new_tag
    end

    it "should return the length" do
        @tag.should_receive(:exists).and_return(true)
        @tag.should_receive(:length).ordered.and_return(7)

        @list.length.should == 7
    end

    it "should return length 0 if the tag does not exist" do
        @tag.should_receive(:exists).and_return(false)

        @list.length.should == 0
    end
end
