ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseTabbedProductList do

    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @list = ImpulseTabbedProductList.new(@tag, @browser)
    end

    it "should return the item at an index" do
        item = double("item")
        new_item = double("new item")
        tag = double("tag")

        @tag.should_receive(:at).with(2).ordered.and_return(tag)
        tag.should_receive(:parent).with("li").ordered.and_return(item)
        ImpulseTabbedProductListItem.should_receive(:new).with(item, @browser).ordered.and_return(new_item)

        @list.at(2).should == new_item
    end

    it "should return the length" do
        @tag.should_receive(:exists).with(no_args).ordered.and_return(true)
        @tag.should_receive(:length).with(no_args).ordered.and_return(10)

        @list.length.should == 10
    end

    it "should return length 0 if the tag does not exist" do
        @tag.should_receive(:exists).with(no_args).ordered.and_return(false)

        @list.length.should == 0
    end
end

describe ImpulseTabbedProductList do

    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @item = ImpulseTabbedProductListItem.new(@tag, @browser)
    end

    it "should return product title link" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:product_title_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_h1 = double("h1")
        mocked_find.should_receive(:h1).ordered.and_return(mocked_h1)

        mocked_h1.should_receive(:find).ordered.and_return(mocked_find)

        mocked_a = double("a")
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)

        @item.should_receive(:format_method).with(:product_title_link).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.product_title_link.should == mocked_tooltag
    end

    it "should return product image link" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:product_image_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_div = double("div")
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)

        ats_name = double("ats name")
        mocked_classname = double("class name")
        @item.should_receive(:create_ats_regex_string).with("imgBorder").ordered.and_return(ats_name)
        mocked_div.should_receive(:className).with(ats_name).ordered.and_return(mocked_classname)

        mocked_classname.should_receive(:find).ordered.and_return(mocked_find)

        mocked_a = double("a")
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)

        @item.should_receive(:format_method).with(:product_image_link).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.product_image_link.should == mocked_tooltag
    end

    it "should return price button" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:price_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_li = double("li")
        mocked_find.should_receive(:li).ordered.and_return(mocked_li)

        ats_name = double("ats name")
        mocked_classname = double("class name")
        @item.should_receive(:create_ats_regex_string).with("price").ordered.and_return(ats_name)
        mocked_li.should_receive(:className).with(ats_name).ordered.and_return(mocked_classname)

        mocked_classname.should_receive(:find).ordered.and_return(mocked_find)

        mocked_a = double("a")
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)

        @item.should_receive(:format_method).with(:price_button).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.price_button.should == mocked_tooltag
    end

    it "should return buy button" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:buy_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_li = double("li")
        mocked_find.should_receive(:li).ordered.and_return(mocked_li)

        ats_name = double("ats name")
        mocked_classname = double("class name")
        @item.should_receive(:create_ats_regex_string).with("buy").ordered.and_return(ats_name)
        mocked_li.should_receive(:className).with(ats_name).ordered.and_return(mocked_classname)

        mocked_classname.should_receive(:find).ordered.and_return(mocked_find)

        mocked_a = double("a")
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)

        @item.should_receive(:format_method).with(:buy_button).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.buy_button.should == mocked_tooltag
    end

    it "should return pre purchase button" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:pre_purchase_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_li = double("li")
        mocked_find.should_receive(:li).ordered.and_return(mocked_li)

        ats_name = double("ats name")
        mocked_classname = double("class name")
        @item.should_receive(:create_ats_regex_string).with("pp").ordered.and_return(ats_name)
        mocked_li.should_receive(:className).with(ats_name).ordered.and_return(mocked_classname)

        mocked_classname.should_receive(:find).ordered.and_return(mocked_find)

        mocked_a = double("a")
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)

        @item.should_receive(:format_method).with(:pre_purchase_button).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.pre_purchase_button.should == mocked_tooltag
    end
end
