ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseTinyMCE do
    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @mce = ImpulseTinyMCE.new(@tag, @browser)
    end

    it "should set the value (content) of the editor" do
        formatted_method = double("formatted method")
        content = "message"

        @mce.should_receive(:format_method).with(:value=).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with("\tSet: #{formatted_method} #{content}").ordered
        @browser.should_receive(:execute).with("tinyMCE.editors[0].setContent('#{content}')").ordered

        @mce.value = content
    end
end
