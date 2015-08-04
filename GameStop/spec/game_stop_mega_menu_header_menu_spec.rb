ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopMegaMenuHeaderMenu do
  # it "should access an individual item" do
  # tag = double("tag")
  # returned_tag = double("returned tag")
  # new_instance = double("new instance")
  # list = GameStopMegaMenuHeaderMenu.new(tag)

  # tag.should_receive(:at).with(1).ordered.and_return(returned_tag)
  # ToolTag.should_receive(:new).with(returned_tag,"GameStopMegaMenuHeaderMenu#at").ordered.and_return(new_instance)

  # list.at(1).should == new_instance
  # end

  it "should return its length" do
    tag = double("tag")
    list = GameStopMegaMenuHeaderMenu.new(tag)

    tag.should_receive(:exists).ordered.and_return(true)
    tag.should_receive(:length).ordered.and_return(249)

    list.length.should == 249
  end

  it "should return length 0 if the tag does not exist" do
    tag = double("tag")
    list = GameStopMegaMenuHeaderMenu.new(tag)

    tag.should_receive(:exists).ordered.and_return(false)

    list.length.should == 0
  end
end
