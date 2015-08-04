ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe "Impulse Cart List And Item" do
    before(:each) do
        @browser = double("browser")
    end

    it "should access an individual item" do
        tag = double("tag")
        returned_tag = double("returned tag")
        new_instance = double("new instance")
        list = ImpulseCartList.new(tag, @browser)

        tag.should_receive(:at).with(1).ordered.and_return(returned_tag)
        ImpulseCartListItem.should_receive(:new).with(returned_tag, @browser).ordered.and_return(new_instance)

        list.at(1).should == new_instance
    end

    it "should return it's length" do
        tag = double("tag")
        list = ImpulseCartList.new(tag, @browser)

        tag.should_receive(:exists).ordered.and_return(true)
        tag.should_receive(:length).ordered.and_return(249)

        list.length.should == 249
    end

    it "should return length 0 if the tag does not exist" do
        tag = double("tag")
        list = ImpulseCartList.new(tag, @browser)

        tag.should_receive(:exists).ordered.and_return(false)

        list.length.should == 0
    end

    it "should have a remove link" do
        tag = double("tag")
        returned_tag = double("returned tag")
        new_instance = double("new instance")
        formatted_method = double("formatted method")
        ats_string = double("ats-string")
        item = ImpulseCartListItem.new(tag, @browser)

        item.should_receive(:format_method).with(:remove_link).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        tag.should_receive(:find).ordered.and_return(returned_tag)
        returned_tag.should_receive(:a).ordered.and_return(returned_tag)
        item.should_receive(:create_ats_regex_string).with("ats-remove-product-link").ordered.and_return(ats_string)
        returned_tag.should_receive(:className).with(ats_string).ordered.and_return(returned_tag)
        item.should_receive(:format_method).with(:remove_link).ordered.and_return(formatted_method)
        ToolTag.should_receive(:new).with(returned_tag, formatted_method, @browser).ordered.and_return(new_instance)

        item.remove_link.should == new_instance
    end

    it "should have a product name link" do
        tag = double("tag")
        returned_tag = double("returned tag")
        new_instance = double("new instance")
        formatted_method = double("formatted method")
        ats_string = double("ats-string")
        item = ImpulseCartListItem.new(tag, @browser)

        item.should_receive(:format_method).with(:product_name_link).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        tag.should_receive(:find).ordered.and_return(returned_tag)
        returned_tag.should_receive(:a).ordered.and_return(returned_tag)
        item.should_receive(:create_ats_regex_string).with("ats-product-title-link").ordered.and_return(ats_string)
        returned_tag.should_receive(:className).with(ats_string).ordered.and_return(returned_tag)
        item.should_receive(:format_method).with(:product_name_link).ordered.and_return(formatted_method)
        ToolTag.should_receive(:new).with(returned_tag, formatted_method, @browser).ordered.and_return(new_instance)

        item.product_name_link.should == new_instance
    end
end
