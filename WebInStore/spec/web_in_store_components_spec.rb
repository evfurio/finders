ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

describe WebInStoreSelector do

  before(:each) do
    @tag = double("ToolTag")
    @selector = WebInStoreSelector.new(@tag)
  end

  it "should be able to set the value" do
      @selector.should_receive(:format_method).with(:value=).ordered.and_return("value=")
      $tracer.should_receive(:trace).with("\tSet: value= test").ordered
      mocked_option = double("option")
      @tag.should_receive(:option).with("test").ordered.and_return(mocked_option)
      mocked_selected = double("selected")
      mocked_option.should_receive(:selected=).with(true).ordered.and_return(mocked_selected)

      @selector.value = "test"
  end

  it "should be able to get the value" do
      @selector.should_receive(:format_method).with(:value).ordered.and_return("value")
      $tracer.should_receive(:trace).with("\tAction: value").ordered
      mocked_option = double("option")
      @tag.should_receive(:option).with(no_args).ordered.and_return(mocked_option)
      mocked_selected = double("selected")
      mocked_option.should_receive(:selected).with(true).ordered.and_return(mocked_selected)
      mocked_selected.should_receive(:innerText).with(no_args).and_return("test")

      @selector.value.should == "test"
  end

end

describe WebInStoreRadioButtons do

  before(:each) do
    @tag = double("ToolTag")
    @buttons = WebInStoreRadioButtons.new(@tag)
  end

  it "should be able to set the value" do
      temp_tag = double("temp tag")
      @buttons.should_receive(:format_method).with(:value=).ordered.and_return("value=")
      $tracer.should_receive(:trace).with("\tSet: value= test").ordered
      @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:label).with("/test/").ordered.and_return(temp_tag)
      temp_tag.should_receive(:parent).with("div").ordered.and_return(temp_tag)
      temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:input).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:should_exist).with(no_args).ordered
      temp_tag.should_receive(:checked=).with(true).ordered

      @buttons.value = "test"
  end

  it "should raise an exception if the tag doesn't exist when setting the value" do
      temp_tag = double("temp tag")
      e = Exception.new("inner exc")

      @buttons.should_receive(:format_method).with(:value=).ordered.and_return("value=")
      $tracer.should_receive(:trace).with("\tSet: value= test").ordered
      @tag.should_receive(:find).with(no_args).ordered.and_raise(e)
      @tag.should_receive(:tag_name).with(no_args).ordered.and_return("my_buttons")

      lambda{@buttons.value = "test"}.should raise_error(ToolException, '"test" is not a valid option for my_buttons')
  end

  it "should be able to get the value" do
      i0 = double("i0")
      i1 = double("i1")
      temp_tag = double("temp tag")
      input_list = [i0, i1]

      @buttons.should_receive(:format_method).with(:value).ordered.and_return("value")
      $tracer.should_receive(:trace).with("\tAction: value").ordered
      @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:input).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:className).with("ats-wis-shippingoptions").ordered.and_return(input_list)
      i0.should_receive(:checked).with(no_args).and_return("false")
      i1.should_receive(:checked).with(no_args).and_return("true")
      @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:label).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:at).with(1).ordered.and_return(temp_tag)
      temp_tag.should_receive(:innerText).with(no_args).ordered.and_return(" test ")

      @buttons.value.should == "test"
  end

  it "should return empty string if no input is marked as checked" do
      i0 = double("i0")
      i1 = double("i1")
      temp_tag = double("temp tag")
      input_list = [i0, i1]

      @buttons.should_receive(:format_method).with(:value).ordered.and_return("value")
      $tracer.should_receive(:trace).with("\tAction: value").ordered
      @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:input).with(no_args).ordered.and_return(temp_tag)
      temp_tag.should_receive(:className).with("ats-wis-shippingoptions").ordered.and_return(input_list)
      i0.should_receive(:checked).with(no_args).and_return("false")
      i1.should_receive(:checked).with(no_args).and_return("false")

      @buttons.value.should == ""
  end

end

describe WebInStoreCartList do

  it "should initialize" do
    mocked_tag = double("ToolTag")
    list = WebInStoreCartList.new(mocked_tag)

    list.instance_variable_get(:@tag).should == mocked_tag
    WebInStoreCartList::MULTIPLIER.should == 3
    WebInStoreCartList::OFFSET.should == 1
  end

  it "should instantiate WebInStoreCartListItem with index calculation" do
    mocked_tag = double("ToolTag")
    list = WebInStoreCartList.new(mocked_tag)

    mocked_cart_list_item = double("CartListItem")
    WebInStoreCartListItem.should_receive(:new).with(mocked_tag, 10).ordered.and_return(mocked_cart_list_item)

    list.at(3).should == mocked_cart_list_item
  end

  it "should instantiate WebInStoreCartListItem with user index 0 calculation" do
    mocked_tag = double("ToolTag")
    list = WebInStoreCartList.new(mocked_tag)

    mocked_cart_list_item = double("CartListItem")
    WebInStoreCartListItem.should_receive(:new).with(mocked_tag, 1).ordered.and_return(mocked_cart_list_item)

    list.at(0).should == mocked_cart_list_item
  end

  it "should return length of tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreCartList.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    list.instance_variable_get(:@tag).should_receive(:length).ordered.and_return(12)

    list.length.should == 3
  end

  it "should return 0 if no tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreCartList.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)
    list.instance_variable_get(:@tag).should_not_receive(:length).ordered

    list.length.should == 0
  end

  it "should return 0 if 1 header tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreCartList.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)
    list.instance_variable_get(:@tag).should_not_receive(:length)

    list.length.should == 0
  end

end

describe WebInStoreCartListItem do

  it "should initialize" do
    mocked_tag = double("ToolTag")
    item = WebInStoreCartListItem.new(mocked_tag, 10)

    item.instance_variable_get(:@index).should == 10
  end

  it "should return line item title (product title)" do
    mocked_tag = double("ToolTag")
    item = WebInStoreCartListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:line_item_title).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-lineitemprodtitle").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.line_item_title.should == mocked_tool_tag

  end

  it "should return line item price (product price)" do
    mocked_tag = double("ToolTag")
    item = WebInStoreCartListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:line_item_price).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-lineitemprice").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.line_item_price.should == mocked_tool_tag

  end

  it "should return line item quantity (product quantity field)" do
    mocked_tag = double("ToolTag")
    item = WebInStoreCartListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:line_item_quantity).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_input = double("input")
    mocked_at.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-lineitemqty").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.line_item_quantity.should == mocked_tool_tag

  end

  it "should return line item sku (product sku)" do
    mocked_tag = double("ToolTag")
    item = WebInStoreCartListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:line_item_sku).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(11).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-lineitemsku").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.line_item_sku.should == mocked_tool_tag

  end

  it "should return delete button" do
    mocked_tag = double("ToolTag")
    item = WebInStoreCartListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:delete_button).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_a = double("a")
    mocked_at.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-deleteitembtn").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.delete_button.should == mocked_tool_tag

  end

end

describe WebInStoreProduct, "initialize" do

  it "should initialize" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProduct.new(mocked_tag)

    list.instance_variable_get(:@tag).should == mocked_tag
  end

  it "should instantiate WebInStoreProductListItems" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProduct.new(mocked_tag)

    mocked_product_list_item = double("ProductListItem")
    WebInStoreProductListItems.should_receive(:new).with(mocked_tag, 10).ordered.and_return(mocked_product_list_item)

    list.at(3).should == mocked_product_list_item
  end

  it "should return length of tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProduct.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    list.instance_variable_get(:@tag).should_receive(:length).ordered.and_return(4)

    list.length.should == 1
  end

  it "should return 0 if no tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProduct.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)
    list.instance_variable_get(:@tag).should_not_receive(:length).ordered

    list.length.should == 0
  end

end

describe WebInStoreProductListItems, "initialize" do

  it "should initialize" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    item.instance_variable_get(:@index).should == 10
  end

  it "should return product title" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_title).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-producttitle").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_title.should == mocked_tool_tag
  end

  it "should return product price" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_price).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-price").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_price.should == mocked_tool_tag
  end

  it "should return quantity field" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:quantity_field).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-quantity").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.quantity_field.should == mocked_tool_tag
  end

  it "should return product sku" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_sku).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(11).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-sku").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_sku.should == mocked_tool_tag
  end

  it "should return delete button" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:delete_button).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_a = double("a")
    mocked_at.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-deleteitembtn").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.delete_button.should == mocked_tool_tag
  end

  it "should return policy number label" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItems.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:policy_number_label).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-policynumlbl").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.policy_number_label.should == mocked_tool_tag
  end

end


## From the web_in_store_search_list file originally
describe WebInStoreProductList, "initialize" do

  it "should initialize" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProductList.new(mocked_tag)

    list.instance_variable_get(:@tag).should == mocked_tag
  end

  it "should instantiate ProductListItem" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProductList.new(mocked_tag)

    mocked_product_list_item = double("ProductListItem")
    WebInStoreProductListItem.should_receive(:new).with(mocked_tag, 6).ordered.and_return(mocked_product_list_item)

    list.at(3).should == mocked_product_list_item
  end

  it "should return length of tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProductList.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    list.instance_variable_get(:@tag).should_receive(:length).ordered.and_return(4)

    list.length.should == 2
  end

  it "should return 0 if no tag" do
    mocked_tag = double("ToolTag")
    list = WebInStoreProductList.new(mocked_tag)

    list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)
    list.instance_variable_get(:@tag).should_not_receive(:length).ordered

    list.length.should == 0
  end

end

describe WebInStoreProductListItem, "initialize" do

  it "should initialize" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItem.new(mocked_tag, 10)

    item.instance_variable_get(:@index).should == 10
  end

  it "should return product title" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_title).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_a = double("a")
    mocked_at.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-searchprodtitle").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
    mocked_label = double("label")
    mocked_class_name.should_receive(:label).with(no_args).ordered.and_return(mocked_label)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_label, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_title.should == mocked_tool_tag

  end

  it "should return product title link" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_title_link).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_a = double("a")
    mocked_at.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-searchprodtitle").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_title_link.should == mocked_tool_tag

  end

  it "should return product price" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_price).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-searchprice").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_price.should == mocked_tool_tag

  end

  it "should return product details button" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_details_button).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(10).ordered.and_return(mocked_at)
    mocked_button = double("button")
    mocked_at.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-searchproddetailsbtn").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_class_name, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_details_button.should == mocked_tool_tag

  end

  it "should return product sku" do
    mocked_tag = double("ToolTag")
    item = WebInStoreProductListItem.new(mocked_tag, 10)

    mocked_formatted_method = double("method")
    item.should_receive(:format_method).with(:product_sku).and_return(mocked_formatted_method)

    $tracer.should_receive(:trace).with(mocked_formatted_method).ordered

    mocked_at = double("at")
    item.instance_variable_get(:@tag).should_receive(:at).with(11).ordered.and_return(mocked_at)
    mocked_span = double("span")
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    item.should_receive(:create_ats_regex_string).with("ats-wis-searchsku").ordered.and_return(mocked_ats)
    mocked_class_name = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
    mocked_label = double("label")
    mocked_class_name.should_receive(:label).with(no_args).ordered.and_return(mocked_label)

    mocked_tool_tag = double("new ToolTag")
    ToolTag.should_receive(:new).with(mocked_label, mocked_formatted_method).ordered.and_return(mocked_tool_tag)

    item.product_sku.should == mocked_tool_tag

  end

end

describe WebInStoreAOWPlans do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = WebInStoreAOWPlans.new(@mocked_tag)
  end
	
  it "should return length" do
    @panel.instance_variable_get(:@tag).should_receive(:exists).with(no_args).ordered.and_return(true)
		mocked_length = double("length")
    @panel.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

    @panel.length.should == mocked_length
  end

  it "should return length of 0 when tag does not exist" do
    @panel.instance_variable_get(:@tag).should_receive(:exists).with(no_args).ordered.and_return(false)

    @panel.length.should == 0
  end

  it "should return an instance of WebInStoreAOWPlans at index" do
    mocked_index = double("index")
    mocked_at = double("at")

    @panel.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    WebInStoreAOWPlans.should_receive(:new).with(mocked_at, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

    @panel.at(mocked_index).should == mocked_item
  end

  it "should return plan_details" do
    mocked_format = double("format_method")
		mocked_parent = double("parent")
		mocked_find = double("find")
		mocked_a = double("a")
		mocked_tooltag = double("ToolTag")
		
    @panel.should_receive(:format_method).with(:plan_details).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered
    
    @panel.instance_variable_get(:@tag).should_receive(:parent).with("li").ordered.and_return(mocked_parent)    
    mocked_parent.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    
    @panel.should_receive(:format_method).with(:plan_details).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.plan_details.should == mocked_tooltag
  end

  it "should return aow_price" do
    mocked_format = double("format_method")
		mocked_parent = double("parent")
		mocked_span = double("span")
		mocked_tooltag = double("ToolTag")
		
    @panel.should_receive(:format_method).with(:aow_price).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered
    
    @panel.instance_variable_get(:@tag).should_receive(:parent).with("li").ordered.and_return(mocked_parent)
    mocked_parent.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    
    @panel.should_receive(:format_method).with(:aow_price).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_span, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.aow_price.should == mocked_tooltag
  end
	
end