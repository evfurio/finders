ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseFraudQueueList do
    before(:each) do
        @browser = double("browser")
        @tag = double("tag")
        @item_h = double("item h")
        @list = ImpulseFraudQueueList.allocate
        @list.instance_variable_set(:@tag, @tag)
        @list.instance_variable_set(:@browser, @browser)
        @list.instance_variable_set(:@item_h, @item_h)
    end

    it "should return the length" do
        @item_h.should_receive(:length).with(no_args).ordered.and_return(5)
        @list.length.should == 5
    end

    it "should return the i-th item" do
        item = double("item")
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        mocked_format = double("mocked format")
        index = 10

        $tracer.should_receive(:trace).with("\tAction: at(#{index})").ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(temp_tag)
        temp_tag.should_receive(:at).with(index).ordered.and_return(temp_tag)
        temp_tag.should_receive(:parent).with("tr").ordered.and_return(temp_tag)
        @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
        ToolTag.should_receive(:new).with(temp_tag, mocked_format, @browser).ordered.and_return(new_tag)
        ImpulseFraudQueueItem.should_receive(:new).with(new_tag, @browser).ordered.and_return(item)

        @list.at(index).should == item
    end

    it "should find the specified key" do
        key = double("key")
        val = double("val")

        $tracer.should_receive(:trace).with("\tAction: find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(val)

        @list.find(key).should == val
    end

    it "should raise an exception if it can't find the specified key" do
        key = double("key")

        $tracer.should_receive(:trace).with("\tAction: find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(nil)

        lambda{@list.find(key)}.should raise_error("key, #{key} not found in list")
    end

    it "should return true if it can't find the key" do
        key = double("key")

        $tracer.should_receive(:trace).with("\tAction: should_not_find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(nil)

        @list.should_not_find(key).should be_true
    end

    it "should return false if it can find the key" do
        key = double("key")
        val = double("val")

        $tracer.should_receive(:trace).with("\tAction: should_not_find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(val)

        @list.should_not_find(key).should be_false
    end

    it "should find the key from inner text" do
        key = double("key")
        val = double("val")

        @item_h.should_receive(:has_key?).with(key).ordered.and_return(true)
        @item_h.should_receive(:[]).with(key).ordered.and_return("10")
        @list.should_receive(:at).with(10).ordered.and_return(val)

        @list.send(:find_key, key).should == val
    end

    it "should return nil if it can't find the key from inner text" do
        key = double("key")
        val = double("val")

        @item_h.should_receive(:has_key?).with(key).ordered.and_return(false)

        @list.send(:find_key, key).should be_nil
    end

    it "should create the hash if the tag exists" do
        tag = double("tag")
        temp_tag = double("temp tag")
        item_list = [double("i1"), double("i2")]
        item_hash = { "first" => 0, "second" => 1}

        tag.should_receive(:exists).with(no_args).ordered.and_return(true)
        tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(item_list)
        item_list[0].should_receive(:innerText).with(no_args).ordered.and_return("   first   ")
        item_list[1].should_receive(:innerText).with(no_args).ordered.and_return("   second   ")

        @list.send(:create_hash, tag).should == item_hash
    end

    it "should return an empty hash if the tag does not exists" do
        tag = double("tag")

        tag.should_receive(:exists).with(no_args).ordered.and_return(false)

        @list.send(:create_hash, tag).should == {}
    end

end

describe ImpulseFraudQueueItem do
    before(:each) do
        @browser = double("browser")
    end

    it "should have a fraud queue list item with a key" do
        tag = double("tag")
        returned_tag = double("returned tag")
        formatted_method = double("formatted method")
        item = ImpulseFraudQueueItem.new(tag, @browser)

        item.should_receive(:format_method).with(:key).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        tag.should_receive(:find).ordered.and_return(returned_tag)
        returned_tag.should_receive(:a).ordered.and_return(returned_tag)
        returned_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(returned_tag)
        returned_tag.should_receive(:innerText).ordered.and_return("stuff")

        item.key.should == "stuff"
    end

    it "should have a fraud queue list item with an order id link" do
        tag = double("tag")
        returned_tag = double("returned tag")
        new_instance = double("new instance")
        formatted_method = double("formatted method")
        item = ImpulseFraudQueueItem.new(tag, @browser)

        item.should_receive(:format_method).with(:order_id_link).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        tag.should_receive(:find).ordered.and_return(returned_tag)
        returned_tag.should_receive(:a).ordered.and_return(returned_tag)
        returned_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(returned_tag)
        item.should_receive(:format_method).with(:order_id_link).ordered.and_return(formatted_method)
        ToolTag.should_receive(:new).with(returned_tag, formatted_method, @browser).ordered.and_return(new_instance)

        item.order_id_link.should == new_instance
    end

    it "should have a fraud queue list item with a criteria used" do
        tag = double("tag")
        returned_tag = double("returned tag")
        formatted_method = double("formatted method")
        item = ImpulseFraudQueueItem.new(tag, @browser)

        item.should_receive(:format_method).with(:criteria_used).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered
        tag.should_receive(:span).ordered.and_return(returned_tag)
        returned_tag.should_receive(:id).with("/CriteriaUsed$/").ordered.and_return(returned_tag)
        returned_tag.should_receive(:title).ordered.and_return("string of criteria")

        item.criteria_used.should == "string of criteria"
    end

    it "should have a mark as fraud link" do
        mocked_tooltag = double("tooltag")
        mocked_tag = double("tag")
        mocked_find = double("find")
        mocked_td = double("td")
        mocked_at = double("at")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_id = double("id")
        formatted_method = double("formatted method")
        item = ImpulseFraudQueueItem.new(mocked_tag, @browser)

        item.should_receive(:format_method).with(:mark_as_fraud_link).ordered.and_return(formatted_method)
        $tracer.should_receive(:trace).with(formatted_method).ordered

        mocked_tag.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:at).with(4).ordered.and_return(mocked_at)
        mocked_at.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/_MarkAsFraud$/").ordered.and_return(mocked_id)
        item.should_receive(:format_method).with(:mark_as_fraud_link).ordered.and_return(formatted_method)
        ToolTag.should_receive(:new).with(mocked_id, formatted_method, @browser).and_return(mocked_tooltag)

        item.mark_as_fraud_link.should == mocked_tooltag
    end

end

describe ImpulseFraudOrderHistoryList do
    before(:each) do
        @browser = double("browser")
        @tag = double("tag")
        @item_h = double("item h")
        @list = ImpulseFraudOrderHistoryList.allocate
        @list.instance_variable_set(:@tag, @tag)
        @list.instance_variable_set(:@browser, @browser)
        @list.instance_variable_set(:@item_h, @item_h)
    end

    it "should return the length" do
        @item_h.should_receive(:length).with(no_args).ordered.and_return(5)
        @list.length.should == 5
    end

    it "should return the i-th item" do
        item = double("item")
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        mocked_format = double("mocked format")
        index = 10

        $tracer.should_receive(:trace).with("\tAction: at(#{index})").ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(temp_tag)
        temp_tag.should_receive(:at).with(index).ordered.and_return(temp_tag)
        temp_tag.should_receive(:parent).with("tr").ordered.and_return(temp_tag)
        @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
        ToolTag.should_receive(:new).with(temp_tag, mocked_format, @browser).ordered.and_return(new_tag)
        ImpulseFraudOrderHistoryItem.should_receive(:new).with(new_tag, @browser).ordered.and_return(item)

        @list.at(index).should == item
    end

    it "should find the specified key" do
        key = double("key")
        val = double("val")

        $tracer.should_receive(:trace).with("\tAction: find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(val)

        @list.find(key).should == val
    end

    it "should raise an exception if it can't find the specified key" do
        key = double("key")

        $tracer.should_receive(:trace).with("\tAction: find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(nil)

        lambda{@list.find(key)}.should raise_error("key, #{key} not found in list")
    end

    it "should return true if it can't find the key" do
        key = double("key")

        $tracer.should_receive(:trace).with("\tAction: should_not_find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(nil)

        @list.should_not_find(key).should be_true
    end

    it "should return false if it can find the key" do
        key = double("key")
        val = double("val")

        $tracer.should_receive(:trace).with("\tAction: should_not_find(\"#{key}\")").ordered
        @list.should_receive(:find_key).with(key).ordered.and_return(val)

        @list.should_not_find(key).should be_false
    end

    it "should find the key from inner text" do
        key = double("key")
        val = double("val")

        @item_h.should_receive(:has_key?).with(key).ordered.and_return(true)
        @item_h.should_receive(:[]).with(key).ordered.and_return("10")
        @list.should_receive(:at).with(10).ordered.and_return(val)

        @list.send(:find_key, key).should == val
    end

    it "should return nil if it can't find the key from inner text" do
        key = double("key")
        val = double("val")

        @item_h.should_receive(:has_key?).with(key).ordered.and_return(false)

        @list.send(:find_key, key).should be_nil
    end

    it "should create the hash if the tag exists" do
        tag = double("tag")
        temp_tag = double("temp tag")
        item_list = [double("i1"), double("i2")]
        item_hash = { "first" => 0, "second" => 1}

        tag.should_receive(:exists).with(no_args).ordered.and_return(true)
        tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(item_list)
        item_list[0].should_receive(:innerText).with(no_args).ordered.and_return("   first   ")
        item_list[1].should_receive(:innerText).with(no_args).ordered.and_return("   second   ")

        @list.send(:create_hash, tag).should == item_hash
    end

    it "should return an empty hash if the tag does not exists" do
        tag = double("tag")

        tag.should_receive(:exists).with(no_args).ordered.and_return(false)

        @list.send(:create_hash, tag).should == {}
    end

end

describe ImpulseFraudOrderHistoryItem do
    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @item = ImpulseFraudOrderHistoryItem.new(@tag, @browser)
        @formatted_method = double("formatted method")
    end

    it "should have a fraud queue list item with a key" do
        key = double("key")
        temp_tag = double("temp tag")

        @item.should_receive(:format_method).with(:key).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(temp_tag)
        temp_tag.should_receive(:innerText).with(no_args).ordered.and_return(key)

        @item.key.should == key
    end

    it "should have a fraud queue list item with an order id link" do
        key = double("key")
        temp_tag = double("temp tag")
        new_tag = double("new tag")

        @item.should_receive(:format_method).with(:order_id_link).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:id).with("/OrderID$/").ordered.and_return(temp_tag)
        @item.should_receive(:format_method).with(:order_id_link).ordered.and_return(@formatted_method)
        ToolTag.should_receive(:new).with(temp_tag, @formatted_method, @browser).ordered.and_return(new_tag)

        @item.order_id_link.should == new_tag
    end

    it "should have a fraud queue list item with a processed label" do
        key = double("key")
        temp_tag = double("temp tag")
        new_tag = double("new tag")

        @item.should_receive(:format_method).with(:processed_label).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:td).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:at).with(5).ordered.and_return(temp_tag)
        @item.should_receive(:format_method).with(:processed_label).ordered.and_return(@formatted_method)
        ToolTag.should_receive(:new).with(temp_tag, @formatted_method, @browser).ordered.and_return(new_tag)

        @item.processed_label.should == new_tag
    end
end

