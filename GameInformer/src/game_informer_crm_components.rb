require "bigdecimal"

# == Overview
# Parent class for other components. This exists only to house common data
# and functionality (which is currently only the tag). For usage, see one of the
# derived classes.

# generated using: grep ^class game_stop_components.rb | while read line; do class=`echo $line | cut -d" " -f2`; echo "Object.send(:remove_const, :$class) if Object.const_defined?(:$class)"; done
#Object.send(:remove_const, :GameInformerCRMMenuList) if Object.const_defined?(:GameInformerCRMMenuList)
#Object.send(:remove_const, :GameInformerCRMSelector) if Object.const_defined?(:GameInformerCRMSelector)


# == Overview
# This class houses and provides finders for a GameInformer CRM. This list is
# typically generated as the result of a search.
# == Usage
#  list_item = @browser.gameinformer_crm_menu_list.at(0)
class GameInformerCRMMenuList < CommonComponent
    # Returns the menu items at the specified index from the list. The item
    # === Parameters:
    # _index_:: zero-based index of the store row to be retrieved from the list.
    def at(index)
		return ToolTag.new(@tag.at(index),format_method(__method__))
    end

    # Returns the number of products in the list.
    def length()
        # If there are no items, return 0 for the length.
        if(!@tag.exists)
            return 0
        end

        return @tag.length
    end
end


class GameInformerCRMSelector < CommonComponent
  # Sets the select tag's option specified value. An _ArgumentError_ will be
  # raised if the specified value is not the text for one of the valid option
  # tags.
  # _v_:: value to set the selector to.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    @tag.option(v).selected = true
  end

  # Returns the value currently set as selected for the select tag.
  def value()
    $tracer.trace("\tAction: #{format_method(__method__)}")
    @tag.option.selected(true).innerText.strip
  end
end