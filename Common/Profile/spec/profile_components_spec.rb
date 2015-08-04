ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

require 'ostruct'

describe ProfileAddressList do

    before(:each) do
        @mocked_tag = double("tag")
        @list = ProfileAddressList.allocate
        @list.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should call at and instantiate a ProfileAddressListItem instance" do
        mocked_index = double("index")
        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)

        mocked_item = double("item")
        ProfileAddressListItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should call length and return length of items" do
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

describe ProfileAddressListItem do
    before(:each) do
        @mocked_tag = double("tag")
        @item = ProfileAddressListItem.allocate
        @item.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return full address label" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:full_address_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div = double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @item.should_receive(:create_ats_regex_string).with("ats-fulladdrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
        mocked_ats
        @item.should_receive(:format_method).with(:full_address_label).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @item.full_address_label.should == mocked_ToolTag
    end

    it "should return default address label" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:default_address_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @item.should_receive(:create_ats_regex_string).with("ats-defaultaddrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @item.should_receive(:format_method).with(:default_address_label).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @item.default_address_label.should == mocked_ToolTag
    end

    it "should return edit address button" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:edit_address_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @item.should_receive(:create_ats_regex_string).with("ats-editbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @item.should_receive(:format_method).with(:edit_address_button).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @item.edit_address_button.should == mocked_ToolTag
    end

    it "should return delete address button" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:delete_address_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @item.should_receive(:create_ats_regex_string).with("ats-deletebtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @item.should_receive(:format_method).with(:delete_address_button).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @item.delete_address_button.should == mocked_ToolTag
    end

    it "should return make default button" do
        mocked_format = double("format_method")
        @item.should_receive(:format_method).with(:make_default_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @item.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @item.should_receive(:create_ats_regex_string).with("ats-makedefaultbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @item.should_receive(:format_method).with(:make_default_button).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @item.make_default_button.should == mocked_ToolTag
    end

end

describe ProfileAddressPanel do
    before(:each) do
        @panel = ProfileAddressPanel.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return address header label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:address_header_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h3 = double("h3")
        mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addrheaderlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:address_header_label).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @panel.address_header_label.should == mocked_ToolTag
    end

    it "should return address list" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:address_list).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addrpanel").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:address_list).ordered.and_return(mocked_format)

        mocked_list = double("ProfileAddressList")
        ProfileAddressList.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_list)

        @panel.address_list.should == mocked_list
    end

    it "should return add address button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:add_address_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addaddrbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:add_address_button).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @panel.add_address_button.should == mocked_ToolTag
    end

    it "should return mailing note label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:mailing_note_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-mailnotelbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:mailing_note_label).ordered.and_return(mocked_format)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @panel.mailing_note_label.should == mocked_ToolTag
    end

end

describe ProfilePopupAddressPanel do
    before(:each) do
        @panel = ProfilePopupAddressPanel.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return popup address label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:popup_address_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h3 = double("h3")
        mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-popupaddrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:popup_address_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.popup_address_label.should == mocked_tooltag
    end

    it "should return name label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:name_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_label = double("label")
        mocked_find.should_receive(:label).with(no_args).ordered.and_return(mocked_label)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-namelbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_label.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:name_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.name_label.should == mocked_tooltag
    end

    it "should return first name field" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:first_name_field).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-fnamefield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:first_name_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

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
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-lnamefield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:last_name_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.last_name_field.should == mocked_tooltag
    end

    it "should return address label"do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:address_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_label = double("label")
        mocked_find.should_receive(:label).with(no_args).ordered.and_return(mocked_label)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_label.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:address_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.address_label.should == mocked_tooltag
    end

    it "should return address 1 field" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:address_1_field).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-line1field").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:address_1_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

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
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-line2field").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:address_2_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

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
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-cityfield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:city_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

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
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-usstate").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_select.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
        mocked_ToolTag = double("ToolTag")
        @panel.should_receive(:format_method).with(:state_province_selector).ordered.and_return(mocked_format)
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)
        mocked_selector = double("CommonSelector")
        CommonSelector.should_receive(:new).with(mocked_ToolTag).ordered.and_return(mocked_selector)

        @panel.state_province_selector.should == mocked_selector
    end

    it "should return state province field" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:state_province_field).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-state").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)

        @panel.should_receive(:format_method).with(:state_province_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_input, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.state_province_field.should == mocked_tooltag
    end

    it "should return zip postal code field" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:zip_postal_code_field).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-postalcodefield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:zip_postal_code_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

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
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-countryfield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_select.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:country_selector).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)
        mocked_selector = double("CommonSelector")
        CommonSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_selector)

        @panel.country_selector.should == mocked_selector
    end

    it "should return phone number label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:phone_number_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_label = double("label")
        mocked_find.should_receive(:label).with(no_args).ordered.and_return(mocked_label)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-phonelbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_label.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:phone_number_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.phone_number_label.should == mocked_tooltag
    end

    it "should return phone number field" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:phone_number_field).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-phonefield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:phone_number_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.phone_number_field.should == mocked_tooltag
    end

    it "should return save button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:save_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-savebtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:save_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.save_button.should == mocked_tooltag
    end

    it "should return cancel button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:cancel_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-cancelbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:cancel_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.cancel_button.should == mocked_tooltag
    end

    it "should return default address checkbox" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:default_address_checkbox).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-defaultaddrbox").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:default_address_checkbox).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.default_address_checkbox.should == mocked_tooltag
    end

    it "should return default address label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:default_address_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-defaultaddrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:default_address_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.default_address_label.should == mocked_tooltag
    end

    it "should return popup address error label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:popup_address_error_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div = double("div")
        mocked_find.should_receive("div").with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-popupaddrerrorlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:popup_address_error_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.popup_address_error_label.should == mocked_tooltag
    end

end

describe ProfilePopupRemovePanel do
    before(:each) do
        @panel = ProfilePopupRemovePanel.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return remove header label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:remove_header_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h1 = double("h1")
        mocked_find.should_receive(:h1).with(no_args).ordered.and_return(mocked_h1)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-removehdrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_h1.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:remove_header_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.remove_header_label.should == mocked_tooltag
    end

    it "should return remove text label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:remove_text_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-removetxtlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:remove_text_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.remove_text_label.should == mocked_tooltag
    end

    it "should return remove submit button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:remove_submit_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-submitbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:remove_submit_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.remove_submit_button.should == mocked_tooltag
    end

    it "should return remove cancel button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:remove_cancel_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-cancelbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:remove_cancel_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.remove_cancel_button.should == mocked_tooltag
    end

end

describe ProfilePopupMaxNumPanel do
    before(:each) do
        @panel = ProfilePopupMaxNumPanel.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return max number header label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:max_number_header_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h1 = double("h1")
        mocked_find.should_receive("h1").with(no_args).ordered.and_return(mocked_h1)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-maxnumlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_h1.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:max_number_header_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.max_number_header_label.should == mocked_tooltag
    end

    it "should return max number text label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:max_number_text_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-maxnumtxtlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:max_number_text_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.max_number_text_label.should == mocked_tooltag
    end

    it "should return max number confirm button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:max_number_confirm_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-maxnumconfirmbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:max_number_confirm_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.max_number_confirm_button.should == mocked_tooltag
    end

end

describe ProfileStoresPanel do
    before(:each) do
        @panel = ProfileStoresPanel.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return store header label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_header_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h3 = double("h3")
        mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storeheaderlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_header_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_header_label.should == mocked_tooltag
    end

    it "should return stores list" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:stores_list).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storepanel").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:stores_list).ordered.and_return(mocked_format)
        mocked_list = double("ProfileStoreList")
        ProfileStoreList.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_list)

        @panel.stores_list.should == mocked_list
    end

    it "should return add store button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:add_store_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addstorebtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:add_store_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.add_store_button.should == mocked_tooltag
    end

end

describe ProfileStoreList do

    before(:each) do
        @mocked_tag = double("tag")
        @list = ProfileStoreList.allocate
        @list.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should call at and instantiate a ProfileStoreListItem instance" do
        mocked_index = double("index")
        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)

        mocked_item = double("item")
        ProfileStoreListItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should call length and return length of items" do
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

describe ProfileStoreListItem do
    before(:each) do
        @panel = ProfileStoreListItem.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return full store label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:full_store_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div = double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-fullstorelbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:full_store_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.full_store_label.should == mocked_tooltag
    end

    it "should return home store label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:home_store_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-homestorelbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:home_store_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.home_store_label.should == mocked_tooltag
    end

    it "should return make home store button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:make_home_store_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-makehomestorebtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:make_home_store_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.make_home_store_button.should == mocked_tooltag
    end

    it "should return delete store button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:delete_store_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-deletestorebtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:delete_store_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.delete_store_button.should == mocked_tooltag
    end

end

describe ProfilePopupStorePanel do
    before(:each) do
        @panel = ProfilePopupStorePanel.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return store finder header label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_finder_header_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_h3 = double("h3")
        mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storefinderheaderlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_finder_header_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_finder_header_label.should == mocked_tooltag
    end

    it "should return store finder text label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_finder_text_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storefindertxtlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_finder_text_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_finder_text_label.should == mocked_tooltag
    end

    it "should return store finder field" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_finder_field).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_input = double("input")
        mocked_find.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storefinderfield").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_finder_field).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_finder_field.should == mocked_tooltag
    end

    it "should return find stores button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:find_stores_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-findstoresbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:find_stores_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.find_stores_button.should == mocked_tooltag
    end

    it "should return store finder map image" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_finder_map_image).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div = double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storefindermapimg").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_finder_map_image).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_finder_map_image.should == mocked_tooltag
    end

    it "should return store finder results label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_finder_results_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_p = double("p")
        mocked_find.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storefinderresultslbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_finder_results_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_finder_results_label.should == mocked_tooltag
    end

    it "should return store finder cancel button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_finder_cancel_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-cancelbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_finder_cancel_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_finder_cancel_button.should == mocked_tooltag
    end

    it "should return store results list" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_results_list).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_div = double("div")
        mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storeresultpanel").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_results_list).ordered.and_return(mocked_format)
        mocked_list = double("StoreFinderResultsList")
        StoreFinderResultsList.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_list)

        @panel.store_results_list.should == mocked_list
    end

end

describe StoreFinderResultsList do

    before(:each) do
        @mocked_tag = double("tag")
        @list = StoreFinderResultsList.allocate
        @list.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should call at and instantiate a StoreFinderResultsListItem instance" do
        mocked_index = double("index")
        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)

        mocked_item = double("item")
        StoreFinderResultsListItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should call length and return length of items" do
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

describe StoreFinderResultsListItem do
    before(:each) do
        @panel = StoreFinderResultsListItem.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return store number label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:store_number_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-storenumlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:store_number_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.store_number_label.should == mocked_tooltag
    end

    it "should return added store label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:added_store_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addedstorelbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:added_store_label).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.added_store_label.should == mocked_tooltag
    end

    it "should return add store button" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:add_store_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-addstorebtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:add_store_button).ordered.and_return(mocked_format)
        mocked_tooltag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_tooltag)

        @panel.add_store_button.should == mocked_tooltag
    end

end

describe PURAddressList do

    before(:each) do
        @mocked_tag = double("tag")
        @list = PURAddressList.allocate
        @list.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should call at and instantiate a PURAddressListItem instance" do
        mocked_index = double("index")
        mocked_at = double("at")
        @list.instance_variable_get(:@tag).should_receive(:at).with(mocked_index).ordered.and_return(mocked_at)

        mocked_item = double("item")
        PURAddressListItem.should_receive(:new).with(mocked_at).ordered.and_return(mocked_item)

        @list.at(mocked_index).should == mocked_item
    end

    it "should call length and return length of items" do
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

describe PURAddressListItem do
    before(:each) do
        @panel = PURAddressListItem.allocate
        @mocked_tag = double("tag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return pur saved address label" do
        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:pur_saved_address_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_span = double("span")
        mocked_find.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-purfulladdrlbl").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:pur_saved_address_label).ordered.and_return(mocked_format)
        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @panel.pur_saved_address_label.should == mocked_ToolTag
    end

    it "should return pur select address button" do

        mocked_format = double("format_method")
        @panel.should_receive(:format_method).with(:pur_select_address_button).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_find = double("find")
        @panel.instance_variable_get(:@tag).should_receive(:find).with(no_args).ordered.and_return(mocked_find)
        mocked_button = double("button")
        mocked_find.should_receive(:button).with(no_args).ordered.and_return(mocked_button)
        mocked_ats = double("ats")
        @panel.should_receive(:create_ats_regex_string).with("ats-purselectbtn").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_button.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        @panel.should_receive(:format_method).with(:pur_select_address_button).ordered.and_return(mocked_format)
        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, mocked_format).ordered.and_return(mocked_ToolTag)

        @panel.pur_select_address_button.should == mocked_ToolTag
    end
end
