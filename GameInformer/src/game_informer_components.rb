Object.send(:remove_const, :GIFooterCoverStoriesPanel) if Object.const_defined?(:GIFooterCoverStoriesPanel)
Object.send(:remove_const, :GINavbarHubsListLinks) if Object.const_defined?(:GINavbarHubsListLinks)

# == Overview
# This class houses and provides finders for the GI Footer Cover Stories panel
# == Usage
#  @browser.<component>.<finder>.<action>
class GIFooterCoverStoriesPanel < CommonComponent

    # def initialize(tag)
        # super(tag)  
    # end

    # Returns the produts panel at index
    def at(index)
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag[index].a, format_method(__method__))
    end

    # Returns the list length
    def length
        $tracer.trace(format_method(__method__))
        return @tag.exists ? @tag.length : 0
    end
end

# == Overview
# This class houses and provides finders for the GI hubs navbar links for hubs
# This list is dynamically populated, so therefore using an index to get items in list
# == Usage
#  @browser.<component>.<finder>.<action>
class GINavbarHubsListLinks < CommonComponent

    # def initialize(tag)
        # super(tag)  
    # end

    # Returns the hubs list links at index
    def at(index)
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag[index], format_method(__method__))
    end

    # Returns the list length
    def length
        $tracer.trace(format_method(__method__))
        return @tag.exists ? @tag.length : 0
    end
end


