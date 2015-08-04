ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseRadioButtons do
    before(:each) do
        @browser = double("browser")
        @formatted_method = double("formatted_method")
    end

    it "should return the number of buttons" do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        tag.should_receive(:exists).ordered.and_return(true)
        tag.should_receive(:length).ordered.and_return(10)

        buttons.length.should == 10
    end

    it "should return 0 length if the tag does not exist" do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        tag.should_receive(:exists).ordered.and_return(false)

        buttons.length.should == 0
    end

    it 'should "select" a button' do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        buttons.should_receive(:format_method).with(:value=).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tSet: #{@formatted_method} Pay using Credit Card").ordered
        buttons.should_receive(:length).ordered.and_return(2)
        tag.should_receive(:find).ordered.and_return(tag)
        tag.should_receive(:input).ordered.and_return(tag)
        tag.should_receive(:id).with("/RadioPaymentMethodCredit/").ordered.and_return(tag)
        tag.should_receive(:checked=).with(true).ordered

        buttons.value = "Pay using Credit Card"
    end

    it 'should raise an exception when "selecting" an invalid button' do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        buttons.should_receive(:format_method).with(:value=).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tSet: #{@formatted_method} not a valid payment").ordered
        buttons.should_receive(:length).ordered.and_return(2)

        buttons.instance_variable_get(:@tag).should_receive(:tag_name).with(no_args).ordered.and_return("TAG NAME")
        lambda{buttons.value = "not a valid payment"}.should raise_error(Exception, %Q["not a valid payment" is not a valid option for TAG NAME])

    end

    it 'should raise an exception when "selecting" on an empty button list' do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        buttons.should_receive(:format_method).with(:value=).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tSet: #{@formatted_method} Pay using Credit Card").ordered
        buttons.should_receive(:length).ordered.and_return(0)

        buttons.instance_variable_get(:@tag).should_receive(:tag_name).with(no_args).ordered.and_return("TAG NAME")
        lambda{buttons.value = "Pay using Credit Card"}.should raise_error(Exception, %Q["Pay using Credit Card" is not a valid option for TAG NAME])
    end

    it 'should return the "selected" value' do
        tag = double("tag")
        input_list = double("input list")
        input1 = double("input1")
        input2 = double("input2")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        buttons.should_receive(:format_method).with(:value).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tAction: #{@formatted_method}").ordered
        tag.should_receive(:find).ordered.and_return(tag)
        tag.should_receive(:input).ordered.and_return(input_list)
        input_list.should_receive(:exists).ordered.and_return(true)
        input_list.should_receive(:length).ordered.and_return(2)
        input_list.should_receive(:at).with(0).ordered.and_return(input1)
        input1.should_receive(:checked).ordered.and_return("false")
        input_list.should_receive(:at).with(1).ordered.and_return(input2)
        input2.should_receive(:checked).ordered.and_return("true")
        input_list.should_receive(:at).with(1).ordered.and_return(input2)
        input2.should_receive(:get).with("id").ordered.and_return("some id")
        buttons.should_receive(:id_to_key).with("some id").ordered.and_return("label")

        buttons.value.should == "label"
    end

    it 'should return the a blank value if value is not found' do
        tag = double("tag")
        input_list = double("input list")
        input1 = double("input1")
        input2 = double("input2")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        buttons.should_receive(:format_method).with(:value).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tAction: #{@formatted_method}").ordered
        tag.should_receive(:find).ordered.and_return(tag)
        tag.should_receive(:input).ordered.and_return(input_list)
        input_list.should_receive(:exists).ordered.and_return(true)
        input_list.should_receive(:length).ordered.and_return(2)
        input_list.should_receive(:at).with(0).ordered.and_return(input1)
        input1.should_receive(:checked).ordered.and_return("false")
        input_list.should_receive(:at).with(1).ordered.and_return(input2)
        input2.should_receive(:checked).ordered.and_return("false")

        buttons.value.should == ""
    end

    it "should raise an exception if value is called on an instance that doesn't exist" do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        buttons.should_receive(:format_method).with(:value).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tAction: #{@formatted_method}").ordered
        tag.should_receive(:find).ordered.and_return(tag)
        tag.should_receive(:input).ordered.and_return(tag)
        tag.should_receive(:exists).ordered.and_return(false)

        lambda{buttons.value}.should raise_error(Exception, "value called when radio buttons didn't exist")
    end

    it "should raise an exception if it can't convert an id to a key" do
        tag = double("tag")
        buttons = ImpulseRadioButtons.new(tag, @browser)

        lambda{buttons.send(:id_to_key, "some_undefined_id")}.should raise_error(Exception, "Could not match id some_undefined_id to any values in the hash table")
    end

end
