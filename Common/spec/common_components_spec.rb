ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/src/common_requires"

describe CommonSelector do

  before(:each) do
    @tool_tag = mock("tool tag")
    @selector = CommonSelector.new(@tool_tag)
  end

  it "should be able to set the value" do
    formatted_method = mock("formatted method")
    temp_tag = mock("temp tag")

    @selector.should_receive(:format_method).with(:value=).ordered.and_return(formatted_method)
    message = "\tSet: #{formatted_method} foo"
    $tracer.should_receive(:trace).with(message).ordered
    @tool_tag.should_receive(:option).with("foo").ordered.and_return(temp_tag)
    temp_tag.should_receive(:selected=).with(true).ordered

    @selector.value = "foo"
  end

  it "should be able to get the value" do
    formatted_method = mock("formatted method")
    temp_tag = mock("temp tag")

    @selector.should_receive(:format_method).with(:value).ordered.and_return(formatted_method)
    message = "\tAction: #{formatted_method}"
    $tracer.should_receive(:trace).with(message).ordered
    @tool_tag.should_receive(:option).ordered.and_return(temp_tag)
    temp_tag.should_receive(:selected).with(true).ordered.and_return(temp_tag)
    temp_tag.should_receive(:innerText).ordered.and_return(temp_tag)
    temp_tag.should_receive(:strip).ordered.and_return("bar")

    @selector.value.should == "bar"
  end

end

describe CommonRadioButtons do
  before(:each) do
    tag = 5.times.collect { |x|
      OpenStruct.new( :value => x, :checked => "false" )
    }

    @mocked_browser = mock("browser")
    @item = CommonRadioButtons.new(tag, @mocked_browser)
  end

  after(:each) do
    @item.instance_variable_get(:@tag).each do |x|
      x.checked = "false"
    end
  end

  it "should return length when tag exists" do
    @item.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    @item.instance_variable_get(:@tag).should_receive(:length).ordered.and_return(10)

    @item.length.should == 10
  end

  it "should return 0 length if tag does not exist" do
    @item.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

    @item.instance_variable_get(:@tag).should_not_receive(:length).ordered

    @item.length.should == 0
  end

  it "should return avaiable values" do
    @item.available_values.should == [0, 1, 2, 3, 4]
  end

  it "should return value of checked" do
    @item.instance_variable_get(:@tag)[2].checked = "true"

    @item.should_receive(:format_method).with(:value).ordered.and_return(:value)
    $tracer.should_receive(:trace).with("\tAction: value").ordered

    @item.value.should == 2
  end

  it "should set value" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= 3").ordered

    @item.value = 3
    @item.instance_variable_get(:@tag)[3].checked.should be_true
  end

  it "should raise exception if value set is nil" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= ").ordered

    lambda{@item.value = nil}.should raise_exception(Exception, %Q[Option did not exist when you tried to set the value to ""])
  end

  it "should raise exception if tag length is 0" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= 2").ordered
    @item.instance_variable_set(:@tag, [])

    lambda{@item.value = 2}.should raise_exception(Exception, %Q[Option did not exist when you tried to set the value to "2"])
  end

  it "should not set any selected if value set does not exist" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= 10").ordered

    @item.value = 10
    @item.instance_variable_get(:@tag).collect { |x| x.checked }.include?("true").should be_false
  end

end