# == Overview
# This class houses and provides finders for the header menu list.
# == Usage
#  list_item = @browser.genre_menu_list.at(0)
#  list_item = @browser.gener_menu_list.find("Adventure")
class ImpulseHeaderMenuList < CommonComponent
    # Initializes variables.
    # === Parameters:
    # _tag_:: ToolTag of current tag
    def initialize(tag, browser)
        super(tag, browser)
        @item_h = create_hash(tag)
    end

    # Returns the product item at the specified index from the list. The item
    # is returned as an ImpulseProductListItem; see it's documentation
    # for additional usage examples.  NOTE: An ToolTag is returned.
    # === Parameters:
    # _index_:: zero-based index of the product to be retrieved from the list.
    def at(index)
        $tracer.trace("\tAction: #{__method__}(#{index})")
        # NOTE: ToolTag is returned, no specific item class necessary.
        return ToolTag.new(@tag.find.li.at(index).a, format_method(__method__), @browser)
    end

    # Returns the item seached for, given a particular key, ie. inner text of item -- must be exact.
    # NOTE: a ToolTag is returned.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def find(key)
        $tracer.trace("\tAction: #{__method__}(\"#{key}\")")
        if @item_h.has_key?(key)
            return ToolTag.new(@tag.find.li.at(@item_h[key].to_i).a, format_method(__method__), @browser)
        else
            raise Exception.new("key, #{key} not found in menu list")
        end
    end

    # Returns the number of items in the list.
    def length()
        # If there are no items, return 0 for the length.
        if(!@tag.find.li.exists)
            return 0
        end

        return @tag.find.li.length
    end

    private

    # Returns a hash list with the key being the menu item name.
    # === Parameters:
    # _tag_:: tag used to determine hash table
    def create_hash(tag)
        hash = {}
        menu_list = tag.find.li
        menu_length = menu_list.length
        for i in 0 .. menu_length - 1
          hash[menu_list[i].innerText.strip] = i
        end
        
      return hash
    end
end

