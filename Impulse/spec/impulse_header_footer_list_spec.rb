ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseHeaderMenuList do
    before(:each) do
        @browser = double("browser")
        @tag = double("tag")
        @item_h = double("item h")
        @list = ImpulseHeaderMenuList.allocate
        @list.instance_variable_set(:@tag, @tag)
        @list.instance_variable_set(:@browser, @browser)
        @list.instance_variable_set(:@item_h, @item_h)
    end

    it "should create an instance" do
        @list = ImpulseHeaderMenuList.allocate

        @list.should_receive(:create_hash).with(@tag).ordered.and_return(@item_h)

        @list.send(:initialize, @tag, @browser)
        @list.instance_variable_get(:@tag).should == @tag
        @list.instance_variable_get(:@browser).should == @browser
        @list.instance_variable_get(:@item_h).should == @item_h
    end

    it "should return the length" do
        temp_tag = double("temp tag")
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:exists).with(no_args).ordered.and_return(true)
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:length).with(no_args).ordered.and_return(5)

        @list.length.should == 5
    end

    it "should return length of zero if tags doesn't exist" do
        temp_tag = double("temp tag")
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:exists).with(no_args).ordered.and_return(false)

        @list.length.should == 0
    end

    it "should return the i-th item" do
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        mocked_format = double("mocked format")
        index = 10

        $tracer.should_receive(:trace).with("\tAction: at(#{index})").ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:at).with(index).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
        ToolTag.should_receive(:new).with(temp_tag, mocked_format, @browser).ordered.and_return(new_tag)

        @list.at(index).should == new_tag
    end

    it "should create the hash" do
        tag = double("tag")
        temp_tag = double("temp tag")
        item_list = [double("i1"), double("i2")]
        item_hash = { "first" => 0, "second" => 1}

        tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(item_list)
        item_list[0].should_receive(:innerText).with(no_args).ordered.and_return("   first   ")
        item_list[1].should_receive(:innerText).with(no_args).ordered.and_return("   second   ")

        @list.send(:create_hash, tag).should == item_hash
    end

    it "should find the specified key" do
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        key = double("key")
        mocked_format = double("format")
        val = "7"
        index = val.to_i

        $tracer.should_receive(:trace).with("\tAction: find(\"#{key}\")").ordered
        @item_h.should_receive(:has_key?).with(key).ordered.and_return(true)
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        @item_h.should_receive(:[]).with(key).ordered.and_return(val)
        temp_tag.should_receive(:at).with(index).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        @list.should_receive(:format_method).with(:find).ordered.and_return(mocked_format)
        ToolTag.should_receive(:new).with(temp_tag, mocked_format, @browser).ordered.and_return(new_tag)

        @list.find(key).should == new_tag
    end

    it "should raise an exception if it can't find the specified key" do
        key = double("key")

        $tracer.should_receive(:trace).with("\tAction: find(\"#{key}\")").ordered
        @item_h.should_receive(:has_key?).with(key).ordered.and_return(false)

        lambda{@list.find(key)}.should raise_error("key, #{key} not found in menu list")
    end
end
