ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseItemAlreadyRegisteredPanel do
    before(:each) do
        @browser = double("browser")
        @formatted_method = double("formatted_method")
        @tag  = double("tag")
        @panel = ImpulseItemAlreadyRegisteredPanel.new(@tag, @browser)
    end

    it "should return the purchase as gift order link" do
        temp_tag = double("temp_tag")
        new_tag = double("new_tag")
        @panel.should_receive(:format_method).with(:purchase_as_gift_order_link).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @panel.should_receive(:div).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("cboxBottomCenter").ordered.and_return(temp_tag)
        temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:div).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        ToolTag.should_receive(:new).with(temp_tag, :purchase_as_gift_order_link, @browser).ordered.and_return(new_tag)

        @panel.purchase_as_gift_order_link.should == new_tag
    end
end
