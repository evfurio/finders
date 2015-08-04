ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"


describe MGSReviewList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSReviewList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSReviewList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSReviewList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return tag_rating" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:tag_rating).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    @list.should_receive(:format_method).with(:tag_rating).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_div, mocked_format).ordered.and_return(mocked_tooltag)
    @list.tag_rating.should == mocked_tooltag
  end
	
	it "should return comment" do
    mocked_format = double("format_method")
		mocked_p = double("p")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:comment).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:p).with(no_args).ordered.and_return(mocked_p)
    @list.should_receive(:format_method).with(:comment).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_p, mocked_format).ordered.and_return(mocked_tooltag)
    @list.comment.should == mocked_tooltag
  end
	
end


describe MGSRecommendationsList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSRecommendationsList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSRecommendationsList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSRecommendationsList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return header" do
    mocked_format = double("format_method")
		mocked_h3 = double("h3")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:header).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
    @list.should_receive(:format_method).with(:header).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_h3, mocked_format).ordered.and_return(mocked_tooltag)
    @list.header.should == mocked_tooltag
  end
	
	it "should return description" do
    mocked_format = double("format_method")
		mocked_h4 = double("h4")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:description).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:h4).with(no_args).ordered.and_return(mocked_h4)
    @list.should_receive(:format_method).with(:description).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_h4, mocked_format).ordered.and_return(mocked_tooltag)
    @list.description.should == mocked_tooltag
  end
	
	it "should return product_list" do
    mocked_format = double("format_method")
		mocked_li = double("li")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_mgsrecoprodlist = double("MGSRecoProdList")
		
    @list.should_receive(:format_method).with(:product_list).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:li).with(no_args).ordered.and_return(mocked_li)
		@list.should_receive(:create_ats_regex_string).with("ats-prodReco-list").ordered.and_return(mocked_ats)
		mocked_li.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:product_list).ordered.and_return(mocked_format)
		MGSRecoProdList.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_mgsrecoprodlist)
		@list.product_list.should == mocked_mgsrecoprodlist		
  end

end


describe MGSRecoProdList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSRecoProdList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSRecoProdList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSRecoProdList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return product_link" do
    mocked_format = double("format_method")
		mocked_a = double("a")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:product_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
		@list.should_receive(:create_ats_regex_string).with("ats-prodReco-lnk").ordered.and_return(mocked_ats)
		mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:product_link).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
    @list.product_link.should == mocked_tooltag
  end
	
	it "should return product_image" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:product_image).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-prodReco-img").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:product_image).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
    @list.product_image.should == mocked_tooltag
  end
	
	it "should return product_label" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:product_label).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-prodReco-name").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:product_label).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.product_label.should == mocked_tooltag		
  end

end

#-------------------------------------------------------------------------------------------------------

describe MGSSearchFilterList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSSearchFilterList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSSearchFilterList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSSearchFilterList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return filter_header" do
    mocked_format = double("format_method")
		mocked_h3 = double("h3")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:filter_header).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
    @list.should_receive(:format_method).with(:filter_header).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_h3, mocked_format).ordered.and_return(mocked_tooltag)
    @list.filter_header.should == mocked_tooltag
  end
	
	it "should return expand_collapse" do
    mocked_format = double("format_method")
		mocked_h3 = double("h3")
		mocked_i = double("i")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:expand_collapse).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
		mocked_h3.should_receive(:i).ordered.and_return(mocked_i)
    @list.should_receive(:format_method).with(:expand_collapse).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_i, mocked_format).ordered.and_return(mocked_tooltag)
    @list.expand_collapse.should == mocked_tooltag
  end
	
	it "should return filter_items" do
    mocked_format = double("format_method")
		mocked_ul = double("ul")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_li = double("li")
		mocked_mgsfilteritems = double("MGSSearchFilterItems")
		
    @list.should_receive(:format_method).with(:filter_items).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-filterListItems").ordered.and_return(mocked_ats)
		mocked_ul.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		mocked_className.should_receive(:li).ordered.and_return(mocked_li)
		
    @list.should_receive(:format_method).with(:filter_items).ordered.and_return(mocked_format)
		MGSSearchFilterItems.should_receive(:new).with(mocked_li, mocked_format).ordered.and_return(mocked_mgsfilteritems)
		@list.filter_items.should == mocked_mgsfilteritems		
  end

end


describe MGSSearchFilterItems do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSSearchFilterItems.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSSearchFilterItems" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSSearchFilterItems.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return item_link" do
    mocked_format = double("format_method")
		mocked_a = double("a")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:item_link).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)		
    @list.should_receive(:format_method).with(:item_link).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)
    @list.item_link.should == mocked_tooltag
  end
	
	it "should return record_count" do
    mocked_format = double("format_method")
		mocked_a = double("a")
		mocked_span = double("span")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:record_count).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)		
    mocked_a.should_receive(:span).ordered.and_return(mocked_span)
		@list.should_receive(:format_method).with(:record_count).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_span, mocked_format).ordered.and_return(mocked_tooltag)
    @list.record_count.should == mocked_tooltag
  end

end


describe MGSSearchBreadcrumbList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSSearchBreadcrumbList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSSearchBreadcrumbList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSSearchBreadcrumbList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return selected_filter" do
    mocked_format = double("format_method")
		mocked_span = double("span")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:selected_filter).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:span).with(no_args).ordered.and_return(mocked_span)		
    @list.should_receive(:format_method).with(:selected_filter).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_span, mocked_format).ordered.and_return(mocked_tooltag)
    @list.selected_filter.should == mocked_tooltag
  end
	
	it "should return remove_filter" do
    mocked_format = double("format_method")
		mocked_i = double("i")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:remove_filter).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:i).with(no_args).ordered.and_return(mocked_i)		
    @list.should_receive(:format_method).with(:remove_filter).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_i, mocked_format).ordered.and_return(mocked_tooltag)
    @list.remove_filter.should == mocked_tooltag
  end

end


describe MGSSearchSortingList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSSearchSortingList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSSearchSortingList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSSearchSortingList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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
	
	it "should return sort_name" do
    mocked_format = double("format_method")
		mocked_a = double("a")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:sort_name).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)		
    @list.should_receive(:format_method).with(:sort_name).ordered.and_return(mocked_format)
    ToolTag.should_receive(:new).with(mocked_a, mocked_format).ordered.and_return(mocked_tooltag)
    @list.sort_name.should == mocked_tooltag
  end

end


describe MGSSearchProductList do
  before(:each) do
    @mocked_tag = double("tag")
    @mocked_spec = double("spec")
    @list = MGSSearchProductList.new(@mocked_tag, @mocked_spec)
  end

  it "should call at and instantiate a MGSSearchProductList" do
		mocked_index = double("index")
		mocked_at = double("at")
		mocked_item = double("item")
		
		@list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)
		MGSSearchProductList.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@spec)).ordered.and_return(mocked_item)
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

	it "should return prod_lnk" do
    mocked_format = double("format_method")
		mocked_a = double("a")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_lnk).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodLnk").ordered.and_return(mocked_ats)
		mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_lnk).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_lnk.should == mocked_tooltag		
  end
	
	it "should return prod_img" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_img = double("img")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_img).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodImg").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		mocked_className.should_receive(:img).ordered.and_return(mocked_img)
		
    @list.should_receive(:format_method).with(:prod_img).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_img, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_img.should == mocked_tooltag		
  end
	
	it "should return prod_info" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_info).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodInfo").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_info).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_info.should == mocked_tooltag		
  end
	
	it "should return prod_title" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_title).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodName").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_title).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_title.should == mocked_tooltag		
  end
	
	it "should return prod_platform" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_platform).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodPlatform").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_platform).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_platform.should == mocked_tooltag		
  end
	
	it "should return prod_release" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_release).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodRelease").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_release).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_release.should == mocked_tooltag		
  end
	
	it "should return prod_puas" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_puas).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodPuas").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_puas).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_puas.should == mocked_tooltag		
  end
	
	it "should return prod_price" do
    mocked_format = double("format_method")
		mocked_div = double("div")
		mocked_ats = double("create_ats_regex_string")
		mocked_className = double("className")
		mocked_tooltag = double("ToolTag")
		
    @list.should_receive(:format_method).with(:prod_price).ordered.and_return(mocked_format)
    $tracer.should_receive(:trace).with(mocked_format).ordered

    @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
		@list.should_receive(:create_ats_regex_string).with("ats-searchMob-prodPrice").ordered.and_return(mocked_ats)
		mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
		
    @list.should_receive(:format_method).with(:prod_price).ordered.and_return(mocked_format)
		ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
		@list.prod_price.should == mocked_tooltag		
  end
	
end







