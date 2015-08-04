ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"

=begin
RSpec.configure do |rspec|
  # to have depcrecations warnings to dissappear
  rspec.deprecation_stream = 'nul'
  * for mac would be = '/dev/null'
end
=end
require 'ostruct'

describe GameStopHopsStoreList do
  before(:each) do
    mocked_tag = double("tag")
    @list = GameStopHopsStoreList.new(mocked_tag)

  end

  it "should call at and instantiate a GameStopHopsStoreListItem" do
    mocked_index = double("index")

    mocked_at = double("at")
    @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopHopsStoreListItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

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

## TODO : ATS Tags are rolling out for HOPS Store list. The scripts would require major refactoring to work with the new implementation so disabling this until fixed
describe GameStopHopsStoreListItem do
  it "should pickup at store button" do
    mocked_tag = double("tag")
    item = GameStopHopsStoreListItem.new(mocked_tag)

    mocked_format = double("format_method")
    item.should_receive(:format_method).with(:pickup_at_store_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    item.should_receive(:create_ats_regex_string).with("ats-hops-pickup-lnk").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    item.should_receive(:format_method).with(:pickup_at_store_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    item.pickup_at_store_button.should == mocked_tooltag
  end
	
  it "should have a store_name_link" do
    mocked_tag = double("tag")
    item = GameStopHopsStoreListItem.new(mocked_tag)

    mocked_format = double("format_method")
    item.should_receive(:format_method).with(:store_name_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)

    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)

    mocked_ats = double("ats")
    item.should_receive(:create_ats_regex_string).with("ats-storetitle").ordered.and_return(mocked_ats)

    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    mocked_a = double("a")
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)

    item.should_receive(:format_method).with(:store_name_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

    item.store_name_link.should == mocked_tooltag
  end
end

describe GameStopProductList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = GameStopProductList.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should call at and instantiate a GameStopProductListItem" do
    mocked_index = double("index")

    mocked_at = double("at")
    @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopProductListItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

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

describe GameStopProductListItem do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @item = GameStopProductListItem.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @item.instance_variable_get(:@tag).should == @mocked_tag
    @item.instance_variable_get(:@spec).should == @mocked_spec
    @item.instance_variable_get(:@browser).should be_nil
  end

  it "should return a image link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:image_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/res_hypSmallBox/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:image_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @item.image_link.should == mocked_tooltag
  end

  it "should return a name link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/res_hypTitle/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @item.name_link.should == mocked_tooltag
  end

  it "should return a wish list link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:wish_list_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnAddToWishlist/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:wish_list_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @item.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @item.wish_list_link.should == mocked_tooltag
  end

  it "should return a store pickup link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:store_pickup_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnPickupInStore/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:store_pickup_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @item.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @item.store_pickup_link.should == mocked_tooltag
  end

  it "should return a checkout availability link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:check_availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnCheckStoreAvailability/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:check_availability_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @item.check_availability_link.should == mocked_tooltag
  end

  it "should return a add to cart button" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:add_to_cart_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/btnAddToCart/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:add_to_cart_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @item.add_to_cart_button.should == mocked_tooltag
  end

=begin
    # NOTE: per David's request, this is commented out, as it could not be found currently being
    #       used, plus it's incorrectly written.
    #
    it "should return price using old tag" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:price).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_with = double("with")
        mocked_p.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
        mocked_pricing_tag = double("pricing")
        mocked_with.should_receive(:className).with("pricing").ordered.and_return(mocked_pricing_tag)

        mocked_innerText = double("innerText")
        mocked_pricing_tag.should_receive(:innerText).with(no_args).ordered.and_return(mocked_innerText)

        mocked_timeout = double("timeout")
        mocked_pricing_tag.should_receive(:timeout).with(100).ordered.and_return(mocked_timeout)
        mocked_find_em = double("find em")
        mocked_timeout.should_receive(:find).with("em").ordered.and_return(mocked_find_em)

        mocked_find_em.should_receive(:exists?).with(no_args).ordered.and_return(true)

        mocked_old_innerText = double("old price tag innerText")
        mocked_find_em.should_receive(:innerText).with(no_args).ordered.and_return(mocked_old_innerText)
        mocked_innerText.should_receive(:sub!).with(mocked_old_innerText, "").ordered.and_return(mocked_innerText)

        mocked_text = double("text")
        mocked_innerText.should_receive(:strip).with(no_args).ordered.and_return(mocked_text)

        @item.price.should == mocked_text
    end

    it "should return price using new tag" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:price).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_with = double("with")
        mocked_p.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
        mocked_pricing_tag = double("pricing")
        mocked_with.should_receive(:className).with("pricing").ordered.and_return(mocked_pricing_tag)

        mocked_innerText = double("innerText")
        mocked_pricing_tag.should_receive(:innerText).with(no_args).ordered.and_return(mocked_innerText)

        mocked_timeout = double("timeout")
        mocked_pricing_tag.should_receive(:timeout).with(100).ordered.and_return(mocked_timeout)
        mocked_find_em = double("find em")
        mocked_timeout.should_receive(:find).with("em").ordered.and_return(mocked_find_em)

        mocked_find_em.should_receive(:exists?).with(no_args).ordered.and_return(false)

        mocked_text = double("text")
        mocked_innerText.should_receive(:strip).with(no_args).ordered.and_return(mocked_text)

        @item.price.should == mocked_text
    end
=end
end

describe GameStopCartList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = GameStopCartList.new(@mocked_tag, @mocked_spec)

  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should call at and instantiate a GameStopCartListItem" do
    mocked_index = double("index")

    mocked_at = double("at")
    @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopCartListItem.should_receive(:new).with(mocked_at, @mocked_spec).ordered.and_return(mocked_item)

    @list.at(mocked_index).should == mocked_item
  end

  it "should return length of list if list exists" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(5)

    @list.length.should == 4
  end

  it "should return length of list when none" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

    @list.length.should == 0
  end
end

describe GameStopCartListItem do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @item = GameStopCartListItem.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @item.instance_variable_get(:@tag).should == @mocked_tag
    @item.instance_variable_get(:@spec).should == @mocked_spec
    @item.instance_variable_get(:@browser).should be_nil
  end

  it "should return a name link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-name").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.name_link.should == mocked_tooltag
  end

  it "should return a quantity field" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:quantity_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_input = double("input")
    @item.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-qty").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:quantity_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.quantity_field.should == mocked_tooltag
  end

  it "should return a quantity label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:quantity_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_td = double("input")
    @item.instance_variable_get(:@tag).should_receive(:td).with(no_args).ordered.and_return(mocked_td)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-digqty").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_td.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:quantity_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.quantity_label.should == mocked_tooltag
  end

  it "should return a update link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:update_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-qtyupdate").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:update_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.update_link.should == mocked_tooltag
  end

  it "should return a remove_button" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-remove").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.remove_button.should == mocked_tooltag
  end

  it "should return a price" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:price).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_td = double("input")
    @item.instance_variable_get(:@tag).should_receive(:td).with(no_args).ordered.and_return(mocked_td)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("pricecol").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_td.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:price).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.price.should == mocked_tooltag
  end

  it "should return a availability label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:availability_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_td = double("input")
    @item.instance_variable_get(:@tag).should_receive(:td).with(no_args).ordered.and_return(mocked_td)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-avail_label").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_td.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:availability_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.availability_label.should == mocked_tooltag
  end

  it "should return a availability link first method used" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_tooltag.should_receive(:exists).with(no_args).ordered.and_return(true)

    @item.availability_link.should == mocked_tooltag
  end

  it "should return a availability link first method not found" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_tooltag.should_receive(:exists).with(no_args).ordered.and_return(false)

    mocked_span = double("span")
    @item.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    @item.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    @item.should_receive(:format_method).with(:availability_link).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.availability_link.should == mocked_tooltag
  end

  it "should return a invalid quantity message label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:invalid_quantity_message_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_span = double("span")
    @item.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @item.should_receive(:create_ats_regex_string).with("ats-badqty").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:invalid_quantity_message_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.invalid_quantity_message_label.should == mocked_tooltag
  end

  it "should return shipping option buttons" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:shipping_option_buttons).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_input = double("input")
    @item.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("SelectedShippingOption").ordered.and_return(mocked_id)
    mocked_buttons = double("GameStopRadioButtons")
    GameStopRadioButtons.should_receive(:new).with(mocked_id).ordered.and_return(mocked_buttons)

    @item.shipping_option_buttons.should == mocked_buttons
  end


end


describe GameStopSelector do

  before(:each) do
    @tool_tag = double("tool tag")
    @selector = GameStopSelector.new(@tool_tag)
  end

  it "should be able to set the value" do
    formatted_method = double("formatted method")
    temp_tag = double("temp tag")

    @selector.should_receive(:format_method).with(:value=).ordered.and_return(formatted_method)
    message = "\tSet: #{formatted_method} foo"
    $tracer.should_receive(:trace).with(message).ordered
    @tool_tag.should_receive(:option).with("foo").ordered.and_return(temp_tag)
    temp_tag.should_receive(:selected=).with(true).ordered

    @selector.value = "foo"
  end

  it "should be able to get the value" do
    formatted_method = double("formatted method")
    temp_tag = double("temp tag")

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

describe GameStopProductLinkItem do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_menu_tag = double("menu_tag")
    @item = GameStopProductLinkItem.new(@mocked_tag, @mocked_menu_tag)
  end

  it "should initialize" do
    @item.instance_variable_get(:@tag).should == @mocked_tag
    @item.instance_variable_get(:@menu_tag).should == @mocked_menu_tag
    @item.instance_variable_get(:@browser).should be_nil
  end

  it "should return all button" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:all_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@menu_tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with("mm-content-base").ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("mainButton").ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    mocked_tooltag = double("ToolTag")
    @item.should_receive(:format_method).with(:all_button).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.all_button.should == mocked_tooltag
  end
end

describe GameStopSearchOverlay do
  before(:each) do
    @mocked_tag = double("tag")
    @item = GameStopSearchOverlay.new(@mocked_tag)
  end

  it "should return bestsellers_link" do
    mocked_index = double("index")

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:bestsellers_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered


    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_ul = double("ul")
    mocked_find.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_className = double("className")
    mocked_ul.should_receive(:className).with("bestsellers").ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_li = double("li")
    mocked_find.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_at = double("at")
    mocked_li.should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_at.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("at")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:bestsellers_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

    @item.bestsellers_link(mocked_index).should == mocked_tooltag
  end
end

describe GameStopWishList do
  before(:each) do
    @mocked_name_links = double("name_links")
    @mocked_remove_buttons = double("remove_buttons")
    @item = GameStopWishList.new(@mocked_name_links, @mocked_remove_buttons)
  end


  it "should initialize" do
    @item.instance_variable_get(:@name_links).should == @mocked_name_links
    @item.instance_variable_get(:@remove_buttons).should == @mocked_remove_buttons
    @item.instance_variable_get(:@browser).should be_nil
    @item.instance_variable_get(:@tag).should be_nil
  end

  it "should return true if should exist" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:should_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_buttons).should_receive(:should_exist).with(no_args).ordered.and_return(true)

    @item.should_exist.should be_true
  end

  it "should return false if name links does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:should_exist).with(no_args).ordered.and_return(false)

    @item.should_exist.should be_false
  end

  it "should return false if remove buttons does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:should_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_buttons).should_receive(:should_exist).with(no_args).ordered.and_return(false)

    @item.should_exist.should be_false
  end

  it "should return true if should not exist" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_not_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:should_not_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_buttons).should_receive(:should_not_exist).with(no_args).ordered.and_return(true)

    @item.should_not_exist.should be_true
  end

  it "should return false if name links does exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_not_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:should_not_exist).with(no_args).ordered.and_return(false)

    @item.should_not_exist.should be_false
  end

  it "should return false if remove buttons does exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_not_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:should_not_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_buttons).should_receive(:should_not_exist).with(no_args).ordered.and_return(false)

    @item.should_not_exist.should be_false
  end

  it "should call missing method on name links" do
    mocked_results = double("results")
    @item.instance_variable_get(:@name_links).should_receive(:unknown_method).with(4, 5) { |x| 4 + 5 }.and_return(mocked_results)

    @item.unknown_method(4, 5) { |x| 4 + 5 }.should == mocked_results
  end

  it "should return true if name links and remove button exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:exists).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:exists).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_buttons).should_receive(:exists).with(no_args).ordered.and_return(true)

    @item.exists.should be_true
  end

  it "should return false if name links does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:exists).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:exists).with(no_args).ordered.and_return(false)

    @item.exists.should be_false
  end

  it "should return false if remove button does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:exists).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_links).should_receive(:exists).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_buttons).should_receive(:exists).with(no_args).ordered.and_return(false)

    @item.exists.should be_false
  end

  it "should return length of list if name links exists" do
    @item.instance_variable_get(:@name_links).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    @item.instance_variable_get(:@name_links).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

    @item.length.should == mocked_length
  end

  it "should return length of name links when none" do
    @item.instance_variable_get(:@name_links).should_receive(:exists).ordered.and_return(false)

    @item.length.should == 0
  end

  it "should return item from list at index index" do
    mocked_index = double("index")

    mocked_name_links_at = double("name links at")
    @item.instance_variable_get(:@name_links).should_receive(:at).with(mocked_index).and_return(mocked_name_links_at)
    mocked_remove_buttons_at = double("remove buttons at")
    @item.instance_variable_get(:@remove_buttons).should_receive(:at).with(mocked_index).ordered.and_return(mocked_remove_buttons_at)
    mocked_wish_item = double("GameStopWishListItem")
    GameStopWishListItem.should_receive(:new).with(mocked_name_links_at, mocked_remove_buttons_at).ordered.and_return(mocked_wish_item)

    @item.at(mocked_index).should == mocked_wish_item
  end
end

describe GameStopWishListItem do
  before(:each) do
    @mocked_name_link = double("name_link")
    @mocked_remove_button = double("remove_button")
    @item = GameStopWishListItem.new(@mocked_name_link, @mocked_remove_button)
  end


  it "should initialize" do
    @item.instance_variable_get(:@name_link).should == @mocked_name_link
    @item.instance_variable_get(:@remove_button).should == @mocked_remove_button
    @item.instance_variable_get(:@browser).should be_nil
    @item.instance_variable_get(:@tag).should be_nil
  end

  it "should return true if should exist" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_link).should_receive(:should_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_button).should_receive(:should_exist).with(no_args).ordered.and_return(true)

    @item.should_exist.should be_true
  end

  it "should return false if name link does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_link).should_receive(:should_exist).with(no_args).ordered.and_return(false)

    @item.should_exist.should be_false
  end

  it "should return false if remove button does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_link).should_receive(:should_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_button).should_receive(:should_exist).with(no_args).ordered.and_return(false)

    @item.should_exist.should be_false
  end

  it "should return true if should not exist" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_not_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_link).should_receive(:should_not_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_button).should_receive(:should_not_exist).with(no_args).ordered.and_return(true)

    @item.should_not_exist.should be_true
  end

  it "should return false if name link does exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_not_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_link).should_receive(:should_not_exist).with(no_args).ordered.and_return(false)

    @item.should_not_exist.should be_false
  end

  it "should return false if remove button does exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:should_not_exist).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @item.instance_variable_get(:@name_link).should_receive(:should_not_exist).with(no_args).ordered.and_return(true)
    @item.instance_variable_get(:@remove_button).should_receive(:should_not_exist).with(no_args).ordered.and_return(false)

    @item.should_not_exist.should be_false
  end

  it "should return name link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:name_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(@item.instance_variable_get(:@name_link), mocked_format).ordered.and_return(mocked_tooltag)

    @item.name_link.should == mocked_tooltag
  end

  it "should return remove button" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(@item.instance_variable_get(:@remove_button), mocked_format).ordered.and_return(mocked_tooltag)

    @item.remove_button.should == mocked_tooltag
  end

  it "should call missing method on name link" do
    mocked_results = double("results")
    @item.instance_variable_get(:@name_link).should_receive(:unknown_method).with(4, 5) { |x| 4 + 5 }.and_return(mocked_results)

    @item.unknown_method(4, 5) { |x| 4 + 5 }.should == mocked_results
  end

end

describe GameStopOrderList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_browser = double("browser")
    @list = GameStopOrderList.new(@mocked_tag, @mocked_browser)
  end

  it "should return item at index index" do
    mocked_index = double("index")

    mocked_at = double("at")
    @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopOrderListItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

    @list.at(mocked_index).should == mocked_item
  end
end

describe GameStopOrderListItem do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_browser = double("browser")
    @item = GameStopOrderListItem.new(@mocked_tag, @mocked_browser)
  end

  it "should return order number link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:order_number_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:order_number_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(@item.instance_variable_get(:@tag), mocked_format).ordered.and_return(mocked_tooltag)

    @item.order_number_link.should == mocked_tooltag
  end

  it "should return ordered products label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_products_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_td = double("td")
    @item.instance_variable_get(:@tag).should_receive(:parent).with("td").ordered.and_return(mocked_td)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_products_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_td, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_products_label.should == mocked_tooltag
  end
end

describe GameStopRadioButtons do
  before(:each) do
    tag = 5.times.collect { |x|
      OpenStruct.new(:value => x, :checked => "false")
    }

    @mocked_browser = double("browser")
    @item = GameStopRadioButtons.new(tag, @mocked_browser)
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

    lambda { @item.value = nil }.should raise_exception(Exception, %Q[Shipping Option did not exist when you tried to set the value to ""])
  end

  it "should raise exception if tag length is 0" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= 2").ordered
    @item.instance_variable_set(:@tag, [])

    lambda { @item.value = 2 }.should raise_exception(Exception, %Q[Shipping Option did not exist when you tried to set the value to "2"])
  end

  it "should not set any selected if value set does not exist" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= 10").ordered

    @item.value = 10
    @item.instance_variable_get(:@tag).collect { |x| x.checked }.include?("true").should be_false
  end

end


describe GameStopHandlingMethodRadioButtons do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_browser = double("browser")
    @item = GameStopHandlingMethodRadioButtons.new(@mocked_tag, @mocked_browser)
  end

  it "should return a hops_more_info component" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:hops_more_info).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)

    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:hops_more_info).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

    @item.hops_more_info.should == mocked_tooltag
  end

  it "should set value" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= test").ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_label = double("label")
    mocked_find.should_receive(:label).with("/test/").ordered.and_return(mocked_label)
    mocked_parent = double("parent")
    mocked_label.should_receive(:parent).with("p").ordered.and_return(mocked_parent)
    mocked_parent.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_local_tag = double("local tag")
    mocked_input.should_receive(:should_exist).with(no_args).ordered.and_return(mocked_local_tag)

    mocked_local_tag.should_receive(:checked=).with(true).ordered

    @item.value = "test"
  end

  it "should raise exception if cannot find label" do
    @item.should_receive(:format_method).with(:value=).ordered.and_return(:value=)
    $tracer.should_receive(:trace).with("\tSet: value= test").ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_label = double("label")
    mocked_find.should_receive(:label).with("/test/").ordered.and_return(mocked_label)
    mocked_parent = double("parent")
    mocked_label.should_receive(:parent).with("p").ordered.and_return(mocked_parent)
    mocked_parent.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_local_tag = double("local tag")
    mocked_input.should_receive(:should_exist).with(no_args).ordered.and_raise(Exception.new("something bad happened"))

    @item.instance_variable_get(:@tag).should_receive(:tag_name).with(no_args).ordered.and_return("a tag name")
    lambda { @item.value = "test" }.should raise_exception(ToolException, %Q[a tag name did not exist when you tried to set the value to "test"])
  end

  it "should get value" do
    @item.should_receive(:format_method).with(:value).ordered.and_return(:value)
    $tracer.should_receive(:trace).with("\tAction: value").ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_p = double("p")
    mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
    mocked_p.should_receive(:length).with(no_args).ordered.and_return(5)

    mocked_cell_0 = double("cell cell 0")
    mocked_p.should_receive(:at).with(0).ordered.and_return(mocked_cell_0)
    mocked_cell_0.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:checked).with(no_args).ordered.and_return("false")

    mocked_cell_1 = double("cell cell 1")
    mocked_p.should_receive(:at).with(1).ordered.and_return(mocked_cell_1)
    mocked_cell_1.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:checked).with(no_args).ordered.and_return("true")

    mocked_label = double("label")
    mocked_cell_1.should_receive(:label).with(no_args).ordered.and_return(mocked_label)
    mocked_label.should_receive(:innerText).with(no_args).and_return(" some inner text ")

    @item.value.should == "some inner text"
  end

  it "should get value of empty string if none checked" do
    @item.should_receive(:format_method).with(:value).ordered.and_return(:value)
    $tracer.should_receive(:trace).with("\tAction: value").ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_p = double("p")
    mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
    mocked_p.should_receive(:length).with(no_args).ordered.and_return(2)

    mocked_cell_0 = double("cell cell 0")
    mocked_p.should_receive(:at).with(0).ordered.and_return(mocked_cell_0)
    mocked_cell_0.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:checked).with(no_args).ordered.and_return("false")

    mocked_cell_1 = double("cell cell 1")
    mocked_p.should_receive(:at).with(1).ordered.and_return(mocked_cell_1)
    mocked_cell_1.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:checked).with(no_args).ordered.and_return("false")

    @item.value.should == ""
  end

  it "should get value of empty string if length is 0" do
    @item.should_receive(:format_method).with(:value).ordered.and_return(:value)
    $tracer.should_receive(:trace).with("\tAction: value").ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_p = double("p")
    mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
    mocked_p.should_receive(:length).with(no_args).ordered.and_return(0)

    @item.value.should == ""
  end
end

describe GameStopDetailsBuyPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @panel = GameStopDetailsBuyPanel.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@spec).should == @mocked_spec
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return add to cart button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:add_to_cart_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/AddToCart/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:add_to_cart_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.add_to_cart_button.should == mocked_tooltag
  end

  it "should return check_availability_lnk" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:check_availability_lnk).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)

    mocked_ats = double("create_ats_regex_string")
    @panel.should_receive(:create_ats_regex_string).with("ats-hops-pickup-lnk").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:check_availability_lnk).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.check_availability_lnk.should == mocked_tooltag
  end

  it "should return price" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:price).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_child = double("child")
    @panel.instance_variable_get(:@tag).should_receive(:child).with("h3").ordered.and_return(mocked_child)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:price).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_child, mocked_format).ordered.and_return(mocked_tooltag)
    mocked_inner_text = double("inner_text")
    mocked_tooltag.should_receive(:inner_text).with(no_args).and_return(mocked_inner_text)

    @panel.price.should == mocked_inner_text
  end

  it "should return pur pro price" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:pur_pro_price).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered
    mocked_find = double("find")
    mocked_div = double("div")
    mocked_id = double("id")

    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/purProPriceDiv/").ordered.and_return(mocked_id)
    @panel.should_receive(:format_method).with(:pur_pro_price).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.pur_pro_price.should == mocked_tooltag
  end

  it "should return product condition" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:condition).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_child = double("child")
    @panel.instance_variable_get(:@tag).should_receive(:child).with("h2").ordered.and_return(mocked_child)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:condition).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_child, mocked_format).ordered.and_return(mocked_tooltag)
    mocked_inner_text = double("inner_text")
    mocked_tooltag.should_receive(:inner_text).with(no_args).and_return(mocked_inner_text)

    @panel.condition.should == mocked_inner_text
  end

end

describe GameStopOrderSummaryPanel do

  it "should return subtotal amount from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:subtotal_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblSubTotalAmount$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:subtotal_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.subtotal_amount.should == returned_tag
  end

  it "should return shipping and handling amount from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:shipping_handling_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblShippingAndHandling$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:shipping_handling_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.shipping_handling_amount.should == returned_tag
  end

  it "should return free shipping amount from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:free_shipping_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblFreeShipping$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:free_shipping_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.free_shipping_amount.should == returned_tag
  end

  it "should return estimated tax from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:estimated_tax_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblTax$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:estimated_tax_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.estimated_tax_amount.should == returned_tag
  end

  it "should return order total amount from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:order_total_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblTotal$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:order_total_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.order_total_amount.should == returned_tag
  end

  it "should return before discounts amount from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:total_before_disc_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblBeforeDiscountsAmount$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:total_before_disc_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.total_before_disc_amount.should == returned_tag
  end

  it "should return before discounts amount from order summary panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderSummaryPanel.new(tag)

    item.should_receive(:format_method).with(:disc_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_lblDiscountAmount$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:disc_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.disc_amount.should == returned_tag
  end
end

describe GameStopOrderTotalPanel do

  it "should return subtotal amount from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:subtotal_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_SubtotalLabel$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:subtotal_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.subtotal_amount.should == returned_tag
  end

  it "should return shipping and handling amount from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:shipping_handling_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_HandlingLabel$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:shipping_handling_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.shipping_handling_amount.should == returned_tag
  end

  it "should return free shipping amount from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:free_shipping_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_FreeShippingLabel$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:free_shipping_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.free_shipping_amount.should == returned_tag
  end

  it "should return estimated tax from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:estimated_tax_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_EstimatedTaxLabel$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:estimated_tax_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.estimated_tax_amount.should == returned_tag
  end

  it "should return order total amount from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:order_total_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_OrderTotalLabel$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:order_total_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.order_total_amount.should == returned_tag
  end

  it "should return before discounts amount from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:total_before_disc_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:span).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:id).with("/_TotalBeforeDiscountsLabel$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:total_before_disc_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)

    item.total_before_disc_amount.should == returned_tag
  end

  it "should return discount amount from order total panel" do
    tag = double("tag")
    returned_tag = double("returned tag")
    tmp_tag = double("tmp_tag")
    formatted_method = double("formatted method")
    item = GameStopOrderTotalPanel.new(tag)

    item.should_receive(:format_method).with(:disc_amount).ordered.and_return(formatted_method)
    $tracer.should_receive(:trace).with(formatted_method).ordered
    tag.should_receive(:find).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:tr).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:className).with("/^discount$/").ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:td).ordered.and_return(tmp_tag)
    tmp_tag.should_receive(:className).with("/^right$/").ordered.and_return(tmp_tag)
    item.should_receive(:format_method).with(:disc_amount).ordered.and_return(formatted_method)
    ToolTag.should_receive(:new).with(tmp_tag, formatted_method).ordered.and_return(returned_tag)
    item.disc_amount.should == returned_tag
  end

end


describe GameStopOrderedItem do
  before(:each) do
    @mocked_tag = double("tag")
    @item = GameStopOrderedItem.new(@mocked_tag)
  end

  it "should initialize" do
    @item.instance_variable_get(:@tag).should == @mocked_tag
    @item.instance_variable_get(:@browser).should be_nil
  end

=begin
    it "should call at and instantiate a GameStopOrderedItem" do
        mocked_index = double("index")

        mocked_at = double("at")
        @item.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
        mocked_item = double("item")
        GameStopOrderedItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

        @item.at(mocked_index).should == mocked_item
    end

    it "should return length of list if list exists" do
        @item.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

        mocked_length = double("length")
        @item.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

        @item.length.should == mocked_length
    end

    it "should return length of list when none" do
        @item.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

        @item.length.should == 0
    end
=end

  it "should return ordered product label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_product_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("col1").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_product_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_product_label.should == mocked_tooltag
  end

  it "should return ordered availability label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_ats = double("create_ats_regex_string")
    mocked_className = double("classname")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    @item.should_receive(:create_ats_regex_string).with("col2").ordered.and_return(mocked_ats)
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_tooltag = double("ToolTag")
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_label).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_availability_label.should == mocked_tooltag
  end

  it "should return ordered quantity label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_quantity_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("col3").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_quantity_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_quantity_label.should == mocked_tooltag
  end

  it "should return ordered price label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_price_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("col4").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_price_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_price_label.should == mocked_tooltag
  end

  it "should return ordered handling options" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_handling_options).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("ats-confirmordershippingdetails").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_handling_options).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_span, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_handling_options.should == mocked_tooltag
  end

  it "should return ordered price label and a tag exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_tooltag.should_receive(:exists).with(no_args).and_return(true)

    @item.ordered_availability_link.should == mocked_tooltag
  end

  it "should return ordered price label and a tag does not exists" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_tooltag.should_receive(:exists).with(no_args).and_return(false)

    mocked_span = double("span")
    @item.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("create_ats_regex_string")
    @item.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("classname")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.ordered_availability_link.should == mocked_tooltag
  end
end

describe GameStopHandlingPagePanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopHandlingPagePanel.new(@mocked_tag)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@browser).should be_nil
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

  it "should return an instance of GameStopHandlingPagePanel at index" do
    mocked_index = double("index")
    mocked_at = double("at")
    @panel.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_handling_page_panel = double("GameStopHandlingPagePanel")
    GameStopHandlingPagePanel.should_receive(:new).with(mocked_at, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_handling_page_panel)

    @panel.at(mocked_index).should == mocked_handling_page_panel
  end

  it "should return title" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:title).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)
    mocked_h3 = double("h3")
    mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:title).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_h3, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.title.should == mocked_tooltag
  end

  it "should return handling method buttons" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:handling_method_buttons).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with("/hmethod/").ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:handling_method_buttons).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
    mocked_radio_buttons = double("GameStopHandlingMethodRadioButtons")
    GameStopHandlingMethodRadioButtons.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_radio_buttons)

    @panel.handling_method_buttons.should == mocked_radio_buttons
  end

  it "should return choose store link" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:choose_store_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_rel = double("rel")
    mocked_a.should_receive(:rel).with(".choosestore").ordered.and_return(mocked_rel)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:choose_store_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_rel, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.choose_store_link.should == mocked_tooltag
  end
end

describe GameStopOrderedItemPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopOrderedItemPanel.new(@mocked_tag)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@browser).should be_nil
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

  it "should return an instance of GameStopOrderedItemPanel at index" do
    mocked_index = double("index")
    mocked_at = double("at")
    @panel.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_handling_page_panel = double("GameStopHandlingPagePanel")
    GameStopOrderedItemPanel.should_receive(:new).with(mocked_at, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_handling_page_panel)

    @panel.at(mocked_index).should == mocked_handling_page_panel
  end

  it "should get items" do
    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-confirmlineitem").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:get_items).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_ordered_item = double("GameStopOrderedItem")
    GameStopOrderedItem.should_receive(:new).with(mocked_tooltag, nil).ordered.and_return(mocked_ordered_item)

    @panel.get_items.should == mocked_ordered_item
  end

  it "should return ordered product label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_product_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("col1").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_product_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.ordered_product_label.should == mocked_tooltag
  end

  it "should return ordered availability label 1" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_availability_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("col2").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_availability_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.ordered_availability_label.should == mocked_tooltag
  end

  it "should return ordered quantity label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_quantity_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("col3").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_quantity_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.ordered_quantity_label.should == mocked_tooltag
  end

  it "should return ordered price label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_price_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("col4").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_price_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.ordered_price_label.should == mocked_tooltag
  end

  it "should return order item shipping box" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:order_item_shipping_box).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-confirmshipaddressbox").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:order_item_shipping_box).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_address_panel = double("ConfirmShipAddressPanel")
    ConfirmShipAddressPanel.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_address_panel)

    @panel.order_item_shipping_box.should == mocked_address_panel
  end

  it "should return ordered availabiltity link with a tag" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @panel.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_tooltag.should_receive(:exists).with(no_args).ordered.and_return(true)

    @panel.ordered_availability_link.should == mocked_tooltag
  end

  it "should return ordered availabiltity link with span tag" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @panel.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_tooltag.should_receive(:exists).with(no_args).ordered.and_return(false)

    mocked_span = double("span")
    @panel.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    @panel.should_receive(:create_ats_regex_string).with("ats-avail_link").ordered.and_return(mocked_ats)
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    @panel.should_receive(:format_method).with(:ordered_availability_link).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.ordered_availability_link.should == mocked_tooltag
  end

  it "should return download code" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:download_code).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_div = double("div")
    @panel.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-dlcmsgleft").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:download_code).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.download_code.should == mocked_tooltag
  end

  it "should return download instructions" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:download_instructions).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_div = double("div")
    @panel.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-dlcmsgright").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:download_instructions).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.download_instructions.should == mocked_tooltag
  end

end

describe ConfirmPaymentPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = ConfirmPaymentPanel.new(@mocked_tag)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return confirm payment type label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_payment_type_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("PaymentTypeLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_payment_type_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_payment_type_label.should == mocked_tooltag
  end

  it "should return confirm payment type label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_payment_number_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("CreditCardNumberLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_payment_number_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_payment_number_label.should == mocked_tooltag
  end
end

describe ConfirmShipAddressPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = ConfirmShipAddressPanel.new(@mocked_tag)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return confirm shipping first name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_first_name_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressFirstNameLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_first_name_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_first_name_label.should == mocked_tooltag
  end

  it "should return confirm shipping last name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_last_name_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressLastNameLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_last_name_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_last_name_label.should == mocked_tooltag
  end

  it "should return confirm shipping last name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_addr1_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressLine1Label").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_addr1_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_addr1_label.should == mocked_tooltag
  end

  it "should return confirm shipping city label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_city_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressCityLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_city_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_city_label.should == mocked_tooltag
  end

  it "should return confirm shipping state label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_state_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressStateLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_state_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_state_label.should == mocked_tooltag
  end

  it "should return confirm shipping zip label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_zip_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressZipLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_zip_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_zip_label.should == mocked_tooltag
  end

  it "should return confirm shipping country label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_country_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ShippingAddressCountryLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_shipping_country_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_shipping_country_label.should == mocked_tooltag
  end
end

describe ConfirmBillAddressPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = ConfirmBillAddressPanel.new(@mocked_tag)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return confirm billing first name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_first_name_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressFirstNameLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_first_name_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_first_name_label.should == mocked_tooltag
  end

  it "should return confirm billing last name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_last_name_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressLastNameLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_last_name_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_last_name_label.should == mocked_tooltag
  end

  it "should return confirm billing last name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_addr1_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressLine1Label").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_addr1_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_addr1_label.should == mocked_tooltag
  end

  it "should return confirm billing city label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_city_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressCityLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_city_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_city_label.should == mocked_tooltag
  end

  it "should return confirm billing state label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_state_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressStateLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_state_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_state_label.should == mocked_tooltag
  end

  it "should return confirm billing zip label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_zip_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressZipLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_zip_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_zip_label.should == mocked_tooltag
  end

  it "should return confirm billing country label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_country_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("BillingAddressCountryLabel").ordered.and_return(mocked_ats)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with(mocked_ats).ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:confirm_billing_country_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.confirm_billing_country_label.should == mocked_tooltag
  end
end

describe CreateAcctModal do
  before(:each) do
    @mocked_tag = double("tag")
    @modal = CreateAcctModal.new(@mocked_tag)
  end

  it "should initialize" do
    @modal.instance_variable_get(:@tag).should == @mocked_tag
    @modal.instance_variable_get(:@browser).should be_nil
  end

  it "should return modal close button" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_close_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("ats-closemodal").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_close_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_close_button.should == mocked_tooltag
  end

  it "should return modal email address field" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_email_addr_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("ats-createemailaddr").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_email_addr_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_email_addr_field.should == mocked_tooltag
  end

  it "should return modal password field" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_password_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("ats-createpwdfield").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_password_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_password_field.should == mocked_tooltag
  end

  it "should return modal confirm email field" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_confirm_email_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("ats-confirmemailaddrfield").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_confirm_email_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_confirm_email_field.should == mocked_tooltag
  end

  it "should return modal confirm password field" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_confirm_password_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("ats-confirmpwdfield").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_confirm_password_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_confirm_password_field.should == mocked_tooltag
  end

  it "should return modal opt in checkbox" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_opt_in_checkbox).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("ats-optinbox").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_opt_in_checkbox).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_opt_in_checkbox.should == mocked_tooltag
  end

  it "should return modal create account button" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_create_account_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("btn_negative").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_create_account_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_create_account_button.should == mocked_tooltag
  end

  it "should return modal no thanks link" do
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_no_thanks_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @modal.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @modal.should_receive(:create_ats_regex_string).with("closetext").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @modal.should_receive(:format_method).with(:modal_no_thanks_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @modal.modal_no_thanks_link.should == mocked_tooltag
  end

end

describe GameStopLoginSliderPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopLoginSliderPanel.new(@mocked_tag)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return true when marginleft is 0 for log me in displayed" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:log_me_in_displayed).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @panel.instance_variable_get(:@tag).should_receive(:call).with("style.marginLeft").ordered.and_return(0)

    @panel.log_me_in_displayed.should == true
  end

  it "should return false when marginleft is not equal to 0 for log me in displayed" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:log_me_in_displayed).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @panel.instance_variable_get(:@tag).should_receive(:call).with("style.marginLeft").ordered.and_return(1)

    @panel.log_me_in_displayed.should == false
  end

  it "should return true when marginleft is less than 0 for create account displayed" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:create_account_displayed).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @panel.instance_variable_get(:@tag).should_receive(:call).with("style.marginLeft").ordered.and_return(-1)

    @panel.create_account_displayed.should == true
  end

  it "should return false when marginleft is greater than or equal to 0 for create account displayed" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:create_account_displayed).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @panel.instance_variable_get(:@tag).should_receive(:call).with("style.marginLeft").ordered.and_return(0)

    @panel.create_account_displayed.should == false
  end
end

describe CreditCardList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = CreditCardList.allocate

    @list.instance_variable_set(:@tag, @mocked_tag)
    @list.instance_variable_set(:@spec, @mocked_spec)
    @list.instance_variable_set(:@panels, [])
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_find = double("find")
    @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/EditButton$/").and_return(mocked_id)

    mocked_id.should_receive(:length).with(no_args).and_return(2)

    mocked_button1 = double("button1")
    mocked_id.should_receive(:[]).with(0).ordered.and_return(mocked_button1)
    mocked_table = double("table")
    mocked_button1.should_receive(:parent).with("table").ordered.and_return(mocked_table)
    mocked_parent1 = double("parent1")
    mocked_table.should_receive(:[]).with(2).ordered.and_return(mocked_parent1)

    mocked_parent1.should_receive(:exists?).with(no_args).ordered.and_return(false)

    mocked_button2 = double("button2")
    mocked_id.should_receive(:[]).with(1).ordered.and_return(mocked_button2)
    mocked_table = double("table")
    mocked_button2.should_receive(:parent).with("table").ordered.and_return(mocked_table)
    mocked_parent2 = double("parent2")
    mocked_table.should_receive(:[]).with(2).ordered.and_return(mocked_parent2)

    mocked_parent2.should_receive(:exists?).with(no_args).ordered.and_return(true)

    @list.__send__(:initialize, @mocked_tag, @mocked_spec)
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@panels).should == [mocked_parent2]
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should initialize where tag does not exist" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

    @list.__send__(:initialize, @mocked_tag, @mocked_spec)
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@panels).should == []
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should call at and instantiate a CreditCardPanel instance" do
    mocked_index = double("index")
    mocked_panels = double("panels")
    @list.instance_variable_get(:@panels).should_receive(:[]).with(mocked_index).ordered.and_return(mocked_panels)
    mocked_cc_panel = double("CreditCardPanel")
    CreditCardPanel.should_receive(:new).with(mocked_panels, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_cc_panel)

    @list.at(mocked_index).should == mocked_cc_panel
  end

  it "should call length and return panels length" do
    mocked_length = double("length")
    @list.instance_variable_get(:@panels).should_receive(:length).ordered.and_return(mocked_length)

    @list.length.should == mocked_length
  end

end

describe CreditCardPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @panel = CreditCardPanel.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@spec).should == @mocked_spec
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return edit button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:edit_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/EditButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:edit_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.edit_button.should == mocked_tooltag
  end

  it "should return remove_button when and confirm cancel is default" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_record = double("record")
    @panel.instance_variable_get(:@spec).should_receive(:record).with(no_args).ordered.and_return(mocked_record)
    mocked_confirm = double("confirm")
    mocked_record.should_receive(:confirm).with(no_args).ordered.and_return(mocked_confirm)
    mocked_confirm.should_receive(:ok).with(no_args).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/RemoveButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.remove_button(nil).should == mocked_tooltag
  end

  it "should return remove_button when and confirm cancel is and_confirm_cancel" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_record = double("record")
    @panel.instance_variable_get(:@spec).should_receive(:record).with(no_args).ordered.and_return(mocked_record)
    mocked_confirm = double("confirm")
    mocked_record.should_receive(:confirm).with(no_args).ordered.and_return(mocked_confirm)
    mocked_confirm.should_receive(:cancel).with(no_args).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/RemoveButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.remove_button(:and_confirm_cancel).should == mocked_tooltag
  end

  it "should return default credit card button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:default_credit_card_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/DefaultCreditCardRadioButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:default_credit_card_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.default_credit_card_button.should == mocked_tooltag
  end
end

describe GameStopShippingAddressList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = GameStopShippingAddressList.allocate

    @list.instance_variable_set(:@tag, @mocked_tag)
    @list.instance_variable_set(:@spec, @mocked_spec)
    @list.instance_variable_set(:@panels, [])
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_find = double("find")
    @list.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_tr = double("tr")
    mocked_find.should_receive(:tr).with(no_args).ordered.and_return(mocked_tr)
    mocked_id = double("id")
    mocked_tr.should_receive(:id).with("/trFullName$/").and_return(mocked_id)

    mocked_id.should_receive(:length).with(no_args).and_return(2)

    mocked_name1 = double("name1")
    mocked_id.should_receive(:[]).with(0).ordered.and_return(mocked_name1)
    mocked_table = double("table")
    mocked_name1.should_receive(:parent).with("table").ordered.and_return(mocked_table)
    mocked_parent1 = double("parent1")
    mocked_table.should_receive(:[]).with(2).ordered.and_return(mocked_parent1)

    mocked_parent1.should_receive(:exists).with(no_args).ordered.and_return(false)

    mocked_name2 = double("name2")
    mocked_id.should_receive(:[]).with(1).ordered.and_return(mocked_name2)
    mocked_table = double("table")
    mocked_name2.should_receive(:parent).with("table").ordered.and_return(mocked_table)
    mocked_parent2 = double("parent2")
    mocked_table.should_receive(:[]).with(2).ordered.and_return(mocked_parent2)

    mocked_parent2.should_receive(:exists).with(no_args).ordered.and_return(true)

    @list.__send__(:initialize, @mocked_tag, @mocked_spec)
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@panels).should == [mocked_parent2]
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should initialize where tag does not exist" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

    @list.__send__(:initialize, @mocked_tag, @mocked_spec)
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@panels).should == []
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should call at and instantiate a GameStopShippingAddressPanel instance" do
    mocked_index = double("index")
    mocked_panels = double("panels")
    @list.instance_variable_get(:@panels).should_receive(:[]).with(mocked_index).ordered.and_return(mocked_panels)
    mocked_cc_panel = double("CreditCardPanel")
    GameStopShippingAddressPanel.should_receive(:new).with(mocked_panels, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_cc_panel)

    @list.at(mocked_index).should == mocked_cc_panel
  end

  it "should call length and return panels length" do
    mocked_length = double("length")
    @list.instance_variable_get(:@panels).should_receive(:length).ordered.and_return(mocked_length)

    @list.length.should == mocked_length
  end

end


describe GameStopShippingAddressPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @panel = GameStopShippingAddressPanel.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@spec).should == @mocked_spec
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return edit button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:edit_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/EditButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:edit_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.edit_button.should == mocked_tooltag
  end

  it "should return remove_button when and confirm cancel is default" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_record = double("record")
    @panel.instance_variable_get(:@spec).should_receive(:record).with(no_args).ordered.and_return(mocked_record)
    mocked_confirm = double("confirm")
    mocked_record.should_receive(:confirm).with(no_args).ordered.and_return(mocked_confirm)
    mocked_confirm.should_receive(:ok).with(no_args).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/RemoveButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.remove_button(nil).should == mocked_tooltag
  end

  it "should return remove_button when and confirm cancel is and_confirm_cancel" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_record = double("record")
    @panel.instance_variable_get(:@spec).should_receive(:record).with(no_args).ordered.and_return(mocked_record)
    mocked_confirm = double("confirm")
    mocked_record.should_receive(:confirm).with(no_args).ordered.and_return(mocked_confirm)
    mocked_confirm.should_receive(:cancel).with(no_args).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/RemoveButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:remove_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.remove_button(:and_confirm_cancel).should == mocked_tooltag
  end

  it "should return default credit card button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:default_shipping_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/DefaultAddressRadioButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format")
    @panel.should_receive(:format_method).with(:default_shipping_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.default_shipping_button.should == mocked_tooltag
  end
end

describe GameStopPopupStorePanel do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @panel = GameStopPopupStorePanel.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@spec).should == @mocked_spec
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return close link" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:close_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/lnkClosePopup$/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:close_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.close_link.should == mocked_tooltag
  end

  it "should return store list" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:store_list).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_id = double("id")
    mocked_div.should_receive(:id).with("overlay_addrbox").ordered.and_return(mocked_id)

    mocked_store_list = double("GameStopStoreList")
    GameStopStoreList.should_receive(:new).with(mocked_id, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_store_list)

    @panel.store_list.should == mocked_store_list
  end

  it "should return zip code field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:zip_code_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/txtZipCode$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:zip_code_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.zip_code_field.should == mocked_tooltag
  end

  it "should return search button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:search_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnSearchStores$/").ordered.and_return(mocked_id)

    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:search_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.search_button.should == mocked_tooltag
  end
end

describe GameStopStoreList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = GameStopStoreList.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should call at and instantiate a GameStopStorePanel" do
    mocked_index = double("index")

    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_item = double("item")
    @list.instance_variable_get(:@tag).should_receive(:[]).with(mocked_index).ordered.and_return(mocked_item)
    mocked_panel = double("panel")
    GameStopStorePanel.should_receive(:new).with(mocked_item, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_panel)

    @list.at(mocked_index).should == mocked_panel
  end

  it "should return length when tag exists" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:length).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:exists?).with(no_args).ordered.and_return(true)

    mocked_length = double("length")
    @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

    @list.length.should == mocked_length
  end

  it "should return length when tag does not exist" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:length).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:exists?).with(no_args).ordered.and_return(false)

    @list.length.should == 0
  end
end

describe GameStopStorePanel do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @panel = GameStopStorePanel.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@spec).should == @mocked_spec
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return choose this store button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:choose_this_store_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnChooseStore$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:choose_this_store_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.choose_this_store_button.should == mocked_tooltag
  end
end

describe GameStopPopupAddressPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopPopupAddressPanel.new(@mocked_tag)
  end

  it "should return close link" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:close_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/lnkClosePopup$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:close_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.close_link.should == mocked_tooltag
  end

  it "should return first name field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:first_name_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textFirstName$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:first_name_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.first_name_field.should == mocked_tooltag
  end

  it "should return last name field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:last_name_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textLastName$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:last_name_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.last_name_field.should == mocked_tooltag
  end

  it "should return address 1 field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:address_1_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textAddressLine1$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:address_1_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.address_1_field.should == mocked_tooltag
  end

  it "should return address 2 field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:address_2_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textAddressLine2$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:address_2_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.address_2_field.should == mocked_tooltag
  end

  it "should return city field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:city_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textCity$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:city_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.city_field.should == mocked_tooltag
  end

  it "should return state province selector" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:state_province_selector).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_select = double("select")
    mocked_find.should_receive(:select).with(no_args).ordered.and_return(mocked_select)
    mocked_id = double("id")
    mocked_select.should_receive(:id).with("/ddlState$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:state_province_selector).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_selector = double("selector")
    GameStopSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_selector)

    @panel.state_province_selector.should == mocked_selector
  end

  it "should return zip postal code field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:zip_postal_code_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textZip$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:zip_postal_code_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.zip_postal_code_field.should == mocked_tooltag
  end

  it "should return country selector" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:country_selector).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_select = double("select")
    mocked_find.should_receive(:select).with(no_args).ordered.and_return(mocked_select)
    mocked_id = double("id")
    mocked_select.should_receive(:id).with("/ddlCountry$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:country_selector).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_selector = double("selector")
    GameStopSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_selector)

    @panel.country_selector.should == mocked_selector
  end

  it "should return phone number field" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:phone_number_field).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/textPhoneNumberDaytime$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:phone_number_field).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.phone_number_field.should == mocked_tooltag
  end

  it "should return ship to this address button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ship_to_this_address_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnSubmitShippingAddress$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:ship_to_this_address_button).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.ship_to_this_address_button.should == mocked_tooltag
  end

  it "should return error panel" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:error_panel).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_div = double("div")
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_id = double("id")
    mocked_div.should_receive(:id).with("/ValidationSummary1$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:error_panel).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.error_panel.should == mocked_tooltag
  end

  it "should return first name required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:first_name_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valFirstName$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:first_name_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.first_name_required_label.should == mocked_tooltag
  end

  it "should return last name required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:last_name_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valLastName$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:last_name_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.last_name_required_label.should == mocked_tooltag
  end

  it "should return address 1 required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:address_1_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valAddress$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:address_1_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.address_1_required_label.should == mocked_tooltag
  end

  it "should return city required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:city_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valCity$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:city_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.city_required_label.should == mocked_tooltag
  end

  it "should return postal code required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:postal_code_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valZip$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:postal_code_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.postal_code_required_label.should == mocked_tooltag
  end

  it "should return postal code invalid format label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:postal_code_invalid_format_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valZipRegEx$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:postal_code_invalid_format_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.postal_code_invalid_format_label.should == mocked_tooltag
  end

  it "should return state required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:state_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valState$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:state_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.state_required_label.should == mocked_tooltag
  end

  it "should return phone required label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:phone_required_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/PhoneRequiredValidator$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:phone_required_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.phone_required_label.should == mocked_tooltag
  end

  it "should return phone invalid format label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:phone_invalid_format_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valPhoneFormat$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:phone_invalid_format_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.phone_invalid_format_label.should == mocked_tooltag
  end

  it "should return combined name too long label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:combined_name_too_long_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/valNameLengthLast$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:combined_name_too_long_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.combined_name_too_long_label.should == mocked_tooltag
  end
end

describe CartDiscountsList do
  before(:each) do
    @mocked_tag = double("tag")
    @list = CartDiscountsList.allocate

    @list.instance_variable_set(:@tag, @mocked_tag)
    @list.instance_variable_set(:@rows, [])
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).and_return(2)

    mocked_button1 = double("button1")
    @list.instance_variable_get(:@tag).should_receive(:[]).with(0).ordered.and_return(mocked_button1)
    mocked_table = double("table")
    mocked_button1.should_receive(:parent).with("tr").ordered.and_return(mocked_table)
    mocked_parent1 = double("parent1")
    mocked_table.should_receive(:[]).with(0).ordered.and_return(mocked_parent1)


    mocked_button2 = double("button2")
    @list.instance_variable_get(:@tag).should_receive(:[]).with(1).ordered.and_return(mocked_button2)
    mocked_table = double("table")
    mocked_button2.should_receive(:parent).with("tr").ordered.and_return(mocked_table)
    mocked_parent2 = double("parent2")
    mocked_table.should_receive(:[]).with(0).ordered.and_return(mocked_parent2)


    @list.__send__(:initialize, @mocked_tag)
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@rows).should == [mocked_parent1, mocked_parent2]
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should initialize where tag does not exist" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

    @list.__send__(:initialize, @mocked_tag)
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@rows).should == []
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should return CartDiscountPanel instance at row index" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@rows).should_receive(:length).with(no_args).ordered.and_return(5)

    mocked_row = double("row")
    @list.instance_variable_get(:@rows).should_receive(:[]).with(2).ordered.and_return(mocked_row)
    mocked_panel = double("panel")
    CartDiscountPanel.should_receive(:new).with(mocked_row).ordered.and_return(mocked_panel)

    @list.at(2).should == mocked_panel
  end

  it "should raise exception when index is greater than length" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@rows).should_receive(:length).with(no_args).ordered.and_return(5)

    @list.instance_variable_get(:@rows).should_receive(:length).with(no_args).ordered.and_return(5)
    lambda { @list.at(10) }.should raise_exception(ToolException, "Index out of bounds.  I only have 5 discount(s)")
  end

  it "should raise exception when index less than 0" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@rows).should_receive(:length).with(no_args).ordered.and_return(5)

    @list.instance_variable_get(:@rows).should_receive(:length).with(no_args).ordered.and_return(5)
    lambda { @list.at(-1) }.should raise_exception(ToolException, "Index out of bounds.  I only have 5 discount(s)")
  end

  it "should return length" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:length).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_length = double("length")
    @list.instance_variable_get(:@rows).should_receive(:length).ordered.and_return(mocked_length)

    @list.length.should == mocked_length
  end

  it "should return discount total" do
    BigDecimal.should_receive(:new).with("0").ordered.and_return(0)

    @list.instance_variable_get(:@rows).should_receive(:length).ordered.and_return(2)

    mocked_at = double("at")
    @list.should_receive(:at).with(0).ordered.and_return(mocked_at)
    mocked_at.should_receive(:discount_amount).with(no_args).ordered.and_return("2")
    mocked_sum = double("sum")
    @list.should_receive(:money_string_to_decimal).with("2").ordered.and_return(2)

    @list.should_receive(:at).with(1).ordered.and_return(mocked_at)
    mocked_at.should_receive(:discount_amount).with(no_args).ordered.and_return("2")
    @list.should_receive(:money_string_to_decimal).with("2").ordered.and_return(2)

    @list.discount_total.should == 4
  end
end

describe CartDiscountPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = CartDiscountPanel.allocate

    @panel.instance_variable_set(:@tag, @mocked_tag)
  end

  it "should return content" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:content).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with("td").ordered.and_return(mocked_find)
    mocked_find.should_receive(:[]).with(0).ordered.and_return(mocked_find)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:content).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_find, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_inner_text = double("inner_text")
    mocked_tooltag.should_receive(:inner_text).with(no_args).ordered.and_return(mocked_inner_text)

    @panel.content.should == mocked_inner_text
  end

  it "should return discount_amount" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:discount_amount).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with("td").ordered.and_return(mocked_find)
    mocked_find.should_receive(:[]).with(2).ordered.and_return(mocked_find)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:discount_amount).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_find, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_inner_text = double("inner_text")
    mocked_tooltag.should_receive(:inner_text).with(no_args).ordered.and_return(mocked_inner_text)

    @panel.discount_amount.should == mocked_inner_text
  end

end

describe HopsAlternateStorePopupPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @panel = HopsAlternateStorePopupPanel.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @panel.instance_variable_get(:@tag).should == @mocked_tag
    @panel.instance_variable_get(:@spec).should == @mocked_spec
    @panel.instance_variable_get(:@browser).should be_nil
  end

  it "should return set alternate store button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:set_alternate_store_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @panel.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/AltStoreLinkButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:set_alternate_store_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.set_alternate_store_button.should == mocked_tooltag
  end

  it "should return no thanks button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:no_thanks_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @panel.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/NoAltStoreLinkButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:no_thanks_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.no_thanks_button.should == mocked_tooltag
  end

  it "should return cancel link" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:cancel_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @panel.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/CancelLinkButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:cancel_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_tooltag)

    @panel.cancel_link.should == mocked_tooltag
  end

end

describe ActivatePowerupRewardsPopupPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = ActivatePowerupRewardsPopupPanel.new(@mocked_tag)
  end

  it "should return order submitted label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:order_submitted_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_span = double("span")
    @panel.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/orderSubmittedLabel$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:order_submitted_label).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.order_submitted_label.should == mocked_tooltag
  end

  it "should return activate button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:activate_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_input = double("input")
    @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/redirectImageButton$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:activate_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.activate_button.should == mocked_tooltag
  end

  it "should return cancel link" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:cancel_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_a = double("a")
    @panel.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/btnClose$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:cancel_link).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.cancel_link.should == mocked_tooltag
  end

end

describe MergeAccountsPopupPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = MergeAccountsPopupPanel.new(@mocked_tag)
  end

  it "should return order submitted label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:order_submitted_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_span = double("span")
    @panel.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_id = double("id")
    mocked_span.should_receive(:id).with("/lblMergeAccountsHeader$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:order_submitted_label).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.order_submitted_label.should == mocked_tooltag
  end

  it "should return not now button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:not_now_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_input = double("input")
    @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/btnNotNow$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:not_now_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.not_now_button.should == mocked_tooltag
  end

  it "should return merge accounts button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:merge_accounts_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_input = double("input")
    @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/btnMergeAccounts$/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:merge_accounts_button).ordered.and_return(mocked_format)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.merge_accounts_button.should == mocked_tooltag
  end

end

describe GameStopProductDetailRecommendationList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = GameStopProductDetailRecommendationList.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should call at and instantiate a GameStopProductDetailRecommendationListItem" do
    mocked_index = double("index")

    mocked_at = double("at")
    @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopProductDetailRecommendationListItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

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

describe GameStopProductDetailRecommendationListItem do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @item = GameStopProductDetailRecommendationListItem.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @item.instance_variable_get(:@tag).should == @mocked_tag
    @item.instance_variable_get(:@spec).should == @mocked_spec
    @item.instance_variable_get(:@browser).should be_nil
  end

  it "should return title label" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:title_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_with = double("with")
    mocked_span.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
    mocked_className = double("className")
    mocked_with.should_receive(:className).with("title").ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:title_label).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    @item.title_label.should == mocked_tooltag
  end

  it "should return title link" do
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:title_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_a = double("a")
    mocked_find.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_format = double("format_method")
    @item.should_receive(:format_method).with(:title_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)

    @item.title_link.should == mocked_tooltag

  end

end

describe GameStopMegaMenuHeaderMenu do
  before(:each) do
    @mocked_tag = double("tag")
    @menu = GameStopMegaMenuHeaderMenu.new(@mocked_tag)
  end

  it "should initialize" do
    @menu.instance_variable_get(:@tag).should == @mocked_tag
    @menu.instance_variable_get(:@browser).should be_nil
  end

  it "should return length of list if list exists" do
    @menu.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    @menu.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

    @menu.length.should == mocked_length
  end

  it "should return length of list when none" do
    @menu.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)

    @menu.length.should == 0
  end

end

describe GameStopProductContainerList do
  before(:each) do
    @mocked_tag = double("tag")
    @list = GameStopProductContainerList.new(@mocked_tag)
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should return lenght of list when none" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:length).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)
    @list.length.should == 0
  end

  it "should return length of list if list exists" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:length).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)

    mocked_length = double("length")
    @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(mocked_length)

    @list.length.should == mocked_length
  end

  it "should return item at index" do
    mocked_format = double("format_method")
    @list.should_receive(:format_method).with(:at).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered
    mocked_index = double("index")
    mocked_item = double("GameStopProductContainerItem")
    @list.instance_variable_get(:@tag).should_receive(:[]).with(mocked_index).ordered.and_return(mocked_item)

    GameStopProductContainerItem.should_receive(:new).with(mocked_item).ordered.and_return(mocked_item)

    @list.at(mocked_index).should == mocked_item
  end
end

describe GameStopProductContainerItem do
  it "should initialize" do
    mocked_tag = double("tag")

    item = GameStopProductContainerItem.new(mocked_tag)
    item.instance_variable_get(:@tag).should == mocked_tag
    item.instance_variable_get(:@browser).should be_nil
  end

  it "should return product detail link" do
    item = GameStopProductContainerItem.allocate
    mocked_tag = double("tag")
    item.instance_variable_set(:@tag, mocked_tag)

    mocked_format = double("format_method")
    item.should_receive(:format_method).with(:product_detail_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    item.should_receive(:format_method).with(:product_detail_link).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(item.instance_variable_get(:@tag), mocked_format).ordered.and_return(mocked_tooltag)

    item.product_detail_link.should == mocked_tooltag
  end

  it "should return data track list" do
    item = GameStopProductContainerItem.allocate
    mocked_tag = double("tag")
    item.instance_variable_set(:@tag, mocked_tag)

    mocked_format = double("format_method")
    item.should_receive(:format_method).with(:data_track_list).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_get = double("get")
    item.instance_variable_get(:@tag).should_receive(:get).with("data-track").ordered.and_return(mocked_get)
    mocked_split = double("split")
    mocked_get.should_receive(:split).with("|").ordered.and_return(mocked_split)

    item.data_track_list.should == mocked_split
  end
end

describe GameStopRecommendationList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = GameStopRecommendationList.new(@mocked_tag, @mocked_spec)
  end

  it "should initialize" do
    @list.instance_variable_get(:@tag).should == @mocked_tag
    @list.instance_variable_get(:@spec).should == @mocked_spec
    @list.instance_variable_get(:@browser).should be_nil
  end

  it "should return length of list if list exists" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(true)
    mocked_length = double("length")
    @list.instance_variable_get(:@tag).should_receive(:length).with(no_args).ordered.and_return(5)
    @list.length.should == 4
  end

  it "should return length of list when none" do
    @list.instance_variable_get(:@tag).should_receive(:exists).ordered.and_return(false)
    @list.length.should == 0
  end
end

describe GameStopDiscountPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopDiscountPanel.new(@mocked_tag)
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

  it "should return an instance of GameStopOrderedItemPanel at index" do
    mocked_index = double("index")
    mocked_at = double("at")

    @panel.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopDiscountPanel.should_receive(:new).with(mocked_at, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

    @panel.at(mocked_index).should == mocked_item
  end

  it "should get discount amount" do
    mocked_find = double("find")
    mocked_td = double("td")
    mocked_className = double("className")

    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_find.should_receive(:td).with(no_args).ordered.and_return(mocked_td)
    mocked_td.should_receive(:className).with("ats-confirmationdiscounttotal").ordered.and_return(mocked_className)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:get_discount_amount).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

    mocked_discount = double("GameStopDiscountPanel")
    GameStopDiscountPanel.should_receive(:new).with(mocked_tooltag, nil).ordered.and_return(mocked_discount)

    @panel.get_discount_amount.should == mocked_discount
  end
end

describe GameStopShipGroupPanel do
  before(:each) do
    @panel = GameStopShipGroupPanel.allocate
    @mocked_tag = double("tag")
    @panel.instance_variable_set(:@tag, @mocked_tag)
  end

  it "should have a policy label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:policy_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-policylbl").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:policy_label).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.policy_label.should == mocked_ToolTag
  end

  it "should have a policy number label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:policy_number_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-policynumlbl").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:policy_number_label).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.policy_number_label.should == mocked_ToolTag
  end

  it "should have a shipping method name label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:shipping_method_name_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-shipmethodnamelbl").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:shipping_method_name_label).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.shipping_method_name_label.should == mocked_ToolTag
  end

  it "should have a shipping method amount label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:shipping_method_amount_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-shipmethodamtlbl").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:shipping_method_amount_label).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.shipping_method_amount_label.should == mocked_ToolTag
  end


  it "should have a cancel shipment button" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:cancel_shipment_button).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-cancelshipmntbtn").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:cancel_shipment_button).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.cancel_shipment_button.should == mocked_ToolTag
  end

end

describe GameStopDigitalShipGroupPanel do
  before(:each) do
    @panel = GameStopDigitalShipGroupPanel.allocate
    @mocked_tag = double("tag")
    @panel.instance_variable_set(:@tag, @mocked_tag)
  end

  it "should have a download code label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:download_code_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-dlcodelbl").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:download_code_label).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.download_code_label.should == mocked_ToolTag
  end

  it "should have a download instructions label" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:download_instructions_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_span = double("span")
    mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_ats = double("ats")
    @panel.should_receive(:create_ats_regex_string).with("ats-dlinstructionslbl").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    @panel.should_receive(:format_method).with(:download_instructions_label).ordered.and_return(mocked_format)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

    @panel.download_instructions_label.should == mocked_ToolTag
  end
end

describe GameStopGiftCardsPanel do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopGiftCardsPanel.new(@mocked_tag)
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

  it "should return an instance of GameStopOrderedItemPanel at index" do
    mocked_index = double("index")
    mocked_at = double("at")

    @panel.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopGiftCardsPanel.should_receive(:new).with(mocked_at, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

    @panel.at(mocked_index).should == mocked_item
  end

  it "should return digital_gift_card" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:digital_gift_card).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/rblGiftType_0/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:digital_gift_card).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.digital_gift_card.should == mocked_tooltag
  end

  it "should return physical_gift_card" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:physical_gift_card).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/rblGiftType_1/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:physical_gift_card).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.physical_gift_card.should == mocked_tooltag
  end

  it "should return gift_card_amounts" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:gift_card_amounts).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_select = double("select")
    mocked_find.should_receive(:select).with(no_args).ordered.and_return(mocked_select)
    mocked_id = double("id")
    mocked_select.should_receive(:id).with("/ddlGiftCardAmounts/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:gift_card_amounts).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.gift_card_amounts.should == mocked_tooltag
  end

  it "should return other_gift_amount" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:other_gift_amount).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/tbGiftAmount/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:other_gift_amount).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.other_gift_amount.should == mocked_tooltag
  end

  it "should return gift_card_quantity" do
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:gift_card_quantity).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    mocked_find = double("find")
    @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_input = double("input")
    mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_id = double("id")
    mocked_input.should_receive(:id).with("/tbGiftQuantity/").ordered.and_return(mocked_id)
    mocked_format = double("format_method")
    @panel.should_receive(:format_method).with(:gift_card_quantity).ordered.and_return(mocked_format)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_id, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.gift_card_quantity.should == mocked_tooltag
  end

end


describe GameStopAOWPlans do
  before(:each) do
    @mocked_tag = double("tag")
    @panel = GameStopAOWPlans.new(@mocked_tag)
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

  it "should return an instance of GameStopAOWPlans at index" do
    mocked_index = double("index")
    mocked_at = double("at")

    @panel.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
    mocked_item = double("item")
    GameStopAOWPlans.should_receive(:new).with(mocked_at, @panel.instance_variable_get(:@spec)).ordered.and_return(mocked_item)

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
    
    @panel.instance_variable_get(:@tag).should_receive(:parent).with("p").ordered.and_return(mocked_parent)    
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
    
    @panel.instance_variable_get(:@tag).should_receive(:parent).with("p").ordered.and_return(mocked_parent)
    mocked_parent.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    
    @panel.should_receive(:format_method).with(:aow_price).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_span, mocked_format).ordered.and_return(mocked_tooltag)

    @panel.aow_price.should == mocked_tooltag
  end

end