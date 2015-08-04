ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopWishListFinder, "finders" do

    before(:all) do
        class GameStopWishListFinderTest
            include GameStopWishListFinder
        end

        @browser = GameStopWishListFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopWishListFinderTest) if Object.const_defined?(:GameStopWishListFinderTest)
    end

    it "should have a add to wish list link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:add_to_wish_list_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/wishlist_trigger/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :add_to_wish_list_link).ordered.and_return(mocked_tooltag)

        @browser.add_to_wish_list_link.should == mocked_tooltag
    end

    it "should return a wish list" do
        $tracer.should_receive(:trace).with(:wish_list).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_id1 = double("id 1")
        mocked_a.should_receive(:id).with("/nameLink/").ordered.and_return(mocked_id1)

        mocked_input = double("input")
        @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_id2 = double("id 2")
        mocked_input.should_receive(:id).with("/RemoveButton/").ordered.and_return(mocked_id2)

        mocked_tooltag1 = double("ToolTag 1")
        ToolTag.should_receive(:new).with(mocked_id1, :wish_list).ordered.and_return(mocked_tooltag1)
        mocked_tooltag2 = double("ToolTag 2")
        ToolTag.should_receive(:new).with(mocked_id2, :wish_list).ordered.and_return(mocked_tooltag2)
        mocked_wish_list = double("GameStopWishList")
        GameStopWishList.should_receive(:new).with(mocked_tooltag1, mocked_tooltag2).ordered.and_return(mocked_wish_list)

        @browser.wish_list.should == mocked_wish_list
    end

    it "should have a wish list label" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_src = double("src")

        $tracer.should_receive(:trace).with(:wish_list_label).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        mocked_img.should_receive(:src).with("/core_wish/").ordered.and_return(mocked_src)
        ToolTag.should_receive(:new).with(mocked_src, :wish_list_label).ordered.and_return(mocked_tooltag)

        @browser.wish_list_label.should == mocked_tooltag
    end

end


