ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileCartList do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileCartList.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @list.instance_variable_get(:@tag).should == @mocked_tag
        @list.instance_variable_get(:@spec).should == @mocked_spec
        @list.instance_variable_get(:@browser).should be_nil
    end

    it "should call at and instantiate a MobileCartListItem" do
        mocked_index = double("index")

        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
        mocked_item = double("item")
        GameStopMobileCartListItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should return length of list if list exists" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

        mocked_length = double("length")
        @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

        @list.length.should == mocked_length
    end

    it "should return length of list when none" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

        @list.length.should == 0
    end

end

describe GameStopMobileCartListItem do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileCartListItem.new(@mocked_tag, @mocked_spec)
    end

    it "should return name link" do
        mocked_format = double("format_method")
        @list.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_td = double("td")
        mocked_find.should_receive(:td).with(no_args).ordered.and_return(mocked_td)
        mocked_with = double("with")
        mocked_td.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
        mocked_className = double("className")
        mocked_with.should_receive(:className).with("cart_item").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_a = double("a")
        mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        @list.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

        @list.name_link.should == mocked_tooltag
    end

    it "should return remove button" do
        mocked_format = double("format_method")
        @list.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_td = double("td")
        mocked_find.should_receive(:td).with(no_args).ordered.and_return(mocked_td)
        mocked_with = double("with")
        mocked_td.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
        mocked_className = double("className")
        mocked_with.should_receive(:className).with("cart_delete").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_a = double("a")
        mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        @list.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

        @list.remove_button.should == mocked_tooltag
    end

end

describe GameStopMobileProductList do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileProductList.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @list.instance_variable_get(:@tag).should == @mocked_tag
        @list.instance_variable_get(:@spec).should == @mocked_spec
        @list.instance_variable_get(:@browser).should be_nil
    end

    it "should call at and instantiate a GameStopMobileProductListItem" do
        mocked_index = double("index")

        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
        mocked_item = double("item")
        GameStopMobileProductListItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should return length of list if list exists" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

        mocked_length = double("length")
        @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

        @list.length.should == mocked_length
    end

    it "should return length of list when none" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

        @list.length.should == 0
    end

end

describe GameStopMobileProductListItem do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileProductListItem.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @list.instance_variable_get(:@tag).should == @mocked_tag
        @list.instance_variable_get(:@spec).should == @mocked_spec
        @list.instance_variable_get(:@browser).should be_nil
    end

    it "should return name link" do
        mocked_format = double("format_method")
        @list.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h2 = double("h2")
        mocked_find.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
        mocked_with = double("with")
        mocked_h2.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
        mocked_className = double("className")
        mocked_with.should_receive(:className).with("results_title").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_a = double("a")
        mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        @list.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

        @list.name_link.should == mocked_tooltag
    end
end

describe GameStopMobileProductDetailPriceList do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileProductDetailPriceList.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @list.instance_variable_get(:@tag).should == @mocked_tag
        @list.instance_variable_get(:@spec).should == @mocked_spec
        @list.instance_variable_get(:@browser).should be_nil
    end

    it "should call at and instantiate a GameStopMobileProductDetailListItem" do
        mocked_index = double("index")

        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
        mocked_item = double("item")
        GameStopMobileProductDetailPriceListItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should return length of list if list exists" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

        mocked_length = double("length")
        @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

        @list.length.should == mocked_length
    end

    it "should return length of list when none" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

        @list.length.should == 0
    end
end

describe GameStopMobileProductDetailPriceListItem do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @item = GameStopMobileProductDetailPriceListItem.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @item.instance_variable_get(:@tag).should == @mocked_tag
        @item.instance_variable_get(:@spec).should == @mocked_spec
        @item.instance_variable_get(:@browser).should be_nil
    end

    it "should return a purchase type label" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:purchase_type_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h3 = double("h3")
        mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
        @item.should_receive(:format_method).with(:purchase_type_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_h3, mocked_format).ordered.and_return(mocked_tooltag)

        @item.purchase_type_label.should == mocked_tooltag
    end

    it "should return add to cart button" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:add_to_cart_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div = double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_with = double("with")
        mocked_div.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
        mocked_className = double("className")
        mocked_with.should_receive(:className).with("select-price").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        @item.should_receive(:format_method).with(:add_to_cart_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_button, mocked_format).ordered.and_return(mocked_tooltag)

        @item.add_to_cart_button.should == mocked_tooltag
    end

end

describe GameStopMobileHandlingMethodRadioButtons, "value=" do
    it "should set radio button value" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("\tSet: GameStopMobileHandlingMethodRadioButtons#value= Some Value").ordered
        mocked_old_selection = double("value")
        obj.should_receive(:value).with(no_args).ordered.and_return(mocked_old_selection)

        mocked_handling_checkbox = double("handling_checkbox")
        obj.should_receive(:handling_checkbox).with("Some Value").ordered.and_return(mocked_handling_checkbox)
        mocked_handling_checkbox.should_receive(:should_exist).with(no_args).ordered.and_return(mocked_handling_checkbox)

        obj.should_receive(:handling_checkbox).with("Some Value").ordered.and_return(mocked_handling_checkbox)
        mocked_handling_checkbox.should_receive(:checked=).with(true).ordered

        mocked_handling_select_row = double("handling_select_row")
        obj.should_receive(:handling_select_row).with("Some Value").ordered.and_return(mocked_handling_select_row)
        mocked_handling_select_row.should_receive(:call).with("setAttribute('class', 'selected_row')").ordered

        obj.should_receive(:handling_select_row).with(mocked_old_selection).ordered.and_return(mocked_handling_select_row)
        mocked_handling_select_row.should_receive(:call).with("setAttribute('class', '')").ordered

        mocked_handling_id_hidden_label = double("handling_id_hidden_label")
        obj.should_receive(:handling_id_hidden_label).with(no_args).ordered.and_return(mocked_handling_id_hidden_label)
        obj.should_receive(:handling_checkbox).with("Some Value").ordered.and_return(mocked_handling_checkbox)
        mocked_value = double("value")
        mocked_handling_checkbox.should_receive(:value).with(no_args).ordered.and_return(mocked_value)
        mocked_handling_id_hidden_label.should_receive(:value=).with(mocked_value).ordered

        obj.value = "Some Value"
    end

    it "should raise exception if invalid value" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("\tSet: GameStopMobileHandlingMethodRadioButtons#value= Some Invalid Value").ordered
        mocked_old_selection = double("value")
        obj.should_receive(:value).with(no_args).ordered.and_return(mocked_old_selection)

        mocked_handling_checkbox = double("handling_checkbox")
        obj.should_receive(:handling_checkbox).with("Some Invalid Value").ordered.and_return(mocked_handling_checkbox)
        mocked_handling_checkbox.should_receive(:should_exist).with(no_args).ordered.and_raise(Exception.new("bad thing happened"))

        obj.instance_variable_get(:@tag).should_receive(:tag_name).with(no_args).ordered.and_return("TAG NAME")
        lambda{ obj.value = "Some Invalid Value" }.should raise_error(ToolException, %Q["Some Invalid Value" is not a valid option for TAG NAME])
    end
end


describe GameStopMobileHandlingMethodRadioButtons, "value" do
    it "should return radio value" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("\tAction: GameStopMobileHandlingMethodRadioButtons#value").ordered
        mocked_find = double("find")
        obj.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_tr = double("tr")
        mocked_find.should_receive(:tr).with(no_args).ordered.and_return([mocked_tr, mocked_tr, mocked_tr])
        mocked_td = double("td")
        mocked_tr.should_receive(:td).with(no_args).ordered.and_return(mocked_td)

        mocked_parent = double("parent")
        mocked_td.should_receive(:parent).with("tr").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:get).with("className").ordered.and_return("selected_row")

        # mocked_strong = double("strong")
        # mocked_td.should_receive(:strong).with(no_args).ordered.and_return(mocked_strong)
        mocked_td.should_receive(:innerText).with(no_args).ordered.and_return("  Some Value  ")

        obj.value.should == "Some Value"
    end

    it "should return nil when value not found" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("\tAction: GameStopMobileHandlingMethodRadioButtons#value").ordered
        mocked_find = double("find")
        obj.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_tr = double("tr")
        mocked_find.should_receive(:tr).with(no_args).ordered.and_return([mocked_tr, mocked_tr, mocked_tr])
        mocked_td = double("td")
        mocked_tr.should_receive(:td).with(no_args).ordered.and_return(mocked_td)

        mocked_parent = double("parent")
        mocked_td.should_receive(:parent).with("tr").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:get).with("className").ordered.and_return("something_other_than_selected_row")

        mocked_tr.should_receive(:td).with(no_args).ordered.and_return(mocked_td)
        mocked_td.should_receive(:parent).with("tr").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:get).with("className").ordered.and_return("something_other_than_selected_row")

        mocked_tr.should_receive(:td).with(no_args).ordered.and_return(mocked_td)
        mocked_td.should_receive(:parent).with("tr").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:get).with("className").ordered.and_return("something_other_than_selected_row")

        obj.value.should be_nil
    end
end

describe GameStopMobileHandlingMethodRadioButtons, "handling_checkbox" do
    it "should return checkbox input" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tool_tag = double("ToolTag")
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("GameStopMobileHandlingMethodRadioButtons#handling_checkbox").ordered

        mocked_strong = double("strong")
        obj.instance_variable_get(:@tag).should_receive(:strong).with("Some Value").ordered.and_return(mocked_strong)
        mocked_parent = double("parent")
        mocked_strong.should_receive(:parent).with("tr").ordered.and_return(mocked_parent)
        mocked_find = double("find")
        mocked_parent.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)

        ToolTag.should_receive(:new).with(mocked_input, "GameStopMobileHandlingMethodRadioButtons#handling_checkbox").ordered.and_return(mocked_tool_tag)
        obj.send(:handling_checkbox, " Some Value ").should == mocked_tool_tag

    end
end

describe GameStopMobileHandlingMethodRadioButtons, "handling_select_row" do
    it "should return select row" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tool_tag = double("ToolTag")
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("GameStopMobileHandlingMethodRadioButtons#handling_select_row").ordered

        mocked_strong = double("strong")
        obj.instance_variable_get(:@tag).should_receive(:strong).with("Some Value").ordered.and_return(mocked_strong)
        mocked_parent = double("parent")
        mocked_strong.should_receive(:parent).with("tr").ordered.and_return(mocked_parent)

        ToolTag.should_receive(:new).with(mocked_parent, "GameStopMobileHandlingMethodRadioButtons#handling_select_row").ordered.and_return(mocked_tool_tag)
        obj.send(:handling_select_row, " Some Value ").should == mocked_tool_tag
    end
end

describe GameStopMobileHandlingMethodRadioButtons, "handling_id_hidden_label" do
    it "should return hidden label" do
        obj = GameStopMobileHandlingMethodRadioButtons.allocate
        mocked_tool_tag = double("ToolTag")
        mocked_tag = double("tag")
        obj.instance_variable_set(:@tag, mocked_tag)

        $tracer.should_receive(:trace).with("GameStopMobileHandlingMethodRadioButtons#handling_id_hidden_label").ordered
        mocked_parent = double("parent")
        obj.instance_variable_get(:@tag).should_receive(:parent).with("div").ordered.and_return(mocked_parent)
        mocked_find = double("find")
        mocked_parent.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_id = double("id")
        mocked_input.should_receive(:id).with("/ShippingMethodId/").ordered.and_return(mocked_id)

        ToolTag.should_receive(:new).with(mocked_id, "GameStopMobileHandlingMethodRadioButtons#handling_id_hidden_label").ordered.and_return(mocked_tool_tag)
        obj.send(:handling_id_hidden_label).should == mocked_tool_tag
    end
end

describe GameStopMobileSelector do
    before(:each) do
        @mocked_tag = double("tag")
        @selector = GameStopMobileSelector.new(@mocked_tag)
    end

    it "should set value" do
        @selector.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
        $tracer.should_receive(:trace).with("\tSet: value= some value").ordered

        mocked_option = double("option")
        @selector.instance_variable_get(:@tag).should_receive(:option).with("some value").ordered.and_return(mocked_option)
        mocked_option.should_receive(:selected=).with(true).ordered

        @selector.value = "some value"
    end

    it "should get value" do
        @selector.should_receive(:format_method).with(:value).ordered.and_return(:value)
        $tracer.should_receive(:trace).with("\tAction: value").ordered

        mocked_option = double("option")
        @selector.instance_variable_get(:@tag).should_receive(:option).with(no_args).ordered.and_return(mocked_option)
        mocked_selected = double("selected")
        mocked_option.should_receive(:selected).with(true).ordered.and_return(mocked_selected)
        mocked_innerText = double("innerText")
        mocked_selected.should_receive(:innerText).with(no_args).ordered.and_return(" some value ")

        @selector.value.should == "some value"
    end
end

describe GameStopMobileSearch do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @search = GameStopMobileSearch.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @search.instance_variable_get(:@tag).should == @mocked_tag
        @search.instance_variable_get(:@spec).should == @mocked_spec
        @search.instance_variable_get(:@browser).should be_nil
    end

    it "should set value" do
        @search.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
        $tracer.should_receive(:trace).with("\tSet: value= some value").ordered

        mocked_value = double("value")
        @search.instance_variable_get(:@tag).should_receive(:value=).with("some value").ordered

        @search.value = "some value"
    end

    it "should click" do
        mocked_parent = double("parent")
        @search.instance_variable_get(:@tag).should_receive(:parent).with("section").ordered.and_return(mocked_parent)
        mocked_form = double("form")
        mocked_parent.should_receive(:form).with(no_args).ordered.and_return(mocked_form)
        mocked_call = double("call")
        mocked_form.should_receive(:call).with("submit()").ordered.and_return(mocked_call)

        @search.click.should == mocked_call
    end
    
end

describe GameStopMobileStoreList do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileStoreList.new(@mocked_tag, @mocked_spec)
    end

    it "should initialize" do
        @list.instance_variable_get(:@tag).should == @mocked_tag
        @list.instance_variable_get(:@spec).should == @mocked_spec
        @list.instance_variable_get(:@browser).should be_nil
    end

    it "should call at and instantiate a MobileStoreListItem" do
        mocked_index = double("index")

        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
        mocked_item = double("item")
        GameStopMobileStoreListItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should return length of list if list exists" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

        mocked_length = double("length")
        @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

        @list.length.should == mocked_length
    end

    it "should return length of list when none" do
        @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

        @list.length.should == 0
    end

end

describe GameStopMobileStoreListItem do
    before(:each) do
        @mocked_tag = double("tag")
        @mocked_spec = double("spec")
        @list = GameStopMobileStoreListItem.new(@mocked_tag, @mocked_spec)
    end

    it "should return hold_pre_owned_button" do
        mocked_format = double("format_method")
        @list.should_receive(:format_method).with(:hold_pre_owned_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div= double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with("/hold_pre_owned/").ordered.and_return(mocked_className)

        @list.should_receive(:format_method).with(:hold_pre_owned_button).ordered.and_return(mocked_format)
				
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @list.hold_pre_owned_button.should == mocked_tooltag
    end

    it "should return hold_new_button" do
        mocked_format = double("format_method")
        @list.should_receive(:format_method).with(:hold_new_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div= double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with("/hold_new/").ordered.and_return(mocked_className)

        @list.should_receive(:format_method).with(:hold_new_button).ordered.and_return(mocked_format)
				
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @list.hold_new_button.should == mocked_tooltag
    end

end

