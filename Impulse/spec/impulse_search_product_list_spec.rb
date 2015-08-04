ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseSearchProductList do

    before(:each) do
        @tag = double("tag")
        @browser = double("browser")
        @list = ImpulseSearchProductList.new(@tag, @browser)
    end

    it "should return the item at an index" do
        item = double("item")
        new_item = double("new item")

        @tag.should_receive(:at).with(2).ordered.and_return(item)
        ImpulseSearchProductListItem.should_receive(:new).with(item, @browser).ordered.and_return(new_item)

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

describe ImpulseSearchProductListItem do

    before(:each) do
        @item = ImpulseSearchProductListItem.allocate
        mocked_tag = double("tag")
        @item.instance_variable_set(:@tag, mocked_tag)
    end

    it "should return product title link" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:product_title_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_td = double("td")
        mocked_find.should_receive(:td).ordered.and_return(mocked_td)

        mocked_classname = double("title")
        ats_string = double("ats-string")
        @item.should_receive(:create_ats_regex_string).with("ats-product-title").ordered.and_return(ats_string)
        mocked_td.should_receive(:className).with(ats_string).ordered.and_return(mocked_classname)

        mocked_classname.should_receive(:find).ordered.and_return(mocked_find)

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

        mocked_td = double("td")
        @item.instance_variable_get(:@tag).should_receive(:td).ordered.and_return(mocked_td)

        mocked_at = double("at")
        mocked_td.should_receive(:at).with(0).ordered.and_return(mocked_at)

        mocked_find = double("find")
        mocked_at.should_receive(:find).ordered.and_return(mocked_find)

        mocked_a = double("a")
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)

        @item.should_receive(:format_method).with(:product_image_link).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.product_image_link.should == mocked_tooltag
    end

    it "should return product publisher label" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:product_publisher_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_td = double("td")
        mocked_find.should_receive(:td).ordered.and_return(mocked_td)

        mocked_classname = double("title")
        ats_string = double("ats-string")
        @item.should_receive(:create_ats_regex_string).with("ats-product-title").ordered.and_return(ats_string)
        mocked_td.should_receive(:className).with(ats_string).ordered.and_return(mocked_classname)

        mocked_small = double("small")
        mocked_classname.should_receive(:small).ordered.and_return(mocked_small)

        mocked_at = double("at")
        mocked_small.should_receive(:at).with(0).ordered.and_return(mocked_at)

        @item.should_receive(:format_method).with(:product_publisher_label).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.product_publisher_label.should == mocked_tooltag

    end

    it "should return product genre label" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:product_genre_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).ordered.and_return(mocked_find)

        mocked_td = double("td")
        mocked_find.should_receive(:td).ordered.and_return(mocked_td)

        mocked_classname = double("title")
        ats_string = double("ats-string")
        @item.should_receive(:create_ats_regex_string).with("ats-product-title").ordered.and_return(ats_string)
        mocked_td.should_receive(:className).with(ats_string).ordered.and_return(mocked_classname)

        mocked_small = double("small")
        mocked_classname.should_receive(:small).ordered.and_return(mocked_small)

        mocked_at = double("at")
        mocked_small.should_receive(:at).with(1).ordered.and_return(mocked_at)

        @item.should_receive(:format_method).with(:product_genre_label).ordered.and_return(mocked_format)

        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_format, @browser).ordered.and_return(mocked_tooltag)

        @item.product_genre_label.should == mocked_tooltag

    end
end
