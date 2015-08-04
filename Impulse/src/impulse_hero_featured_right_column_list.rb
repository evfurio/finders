# == Overview
# This class houses and provides finders for Announcements list.
# == Usage
#  list = @browser.announcement_list
#  list_item = @browser.announcement_list.at(0)
class ImpulseAnnouncementsList < CommonComponent
    # Returns the product item at the specified index from the list. The item
    # is returned as an ImpulseProductListItem; see it's documentation
    # for additional usage examples.
    # === Parameters:
    # _index_:: zero-based index of the product to be retrieved from the list.
    def at(index)
        return ImpulseAnnouncementsListItem.new(@tag.article.at(index), @browser)
    end

    # Returns the number of products in the list.
    def length()
        # If there are no items, return 0 for the length.
        if(!@tag.article.exists)
            return 0
        end

        return @tag.article.length
    end
end

# == Overview
# This class houses and provides finders for an Announcement list item.
# == Usage
#  list_item = @browser.announcement_list.at(0)
#  date = list_item.date_text
#  title = list_item.title_text
#  list_item.read_more_link.click
class ImpulseAnnouncementsListItem < CommonComponent

    # Returns announcement date in text form.
    def date_label
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag.h2, format_method(__method__), @browser)
    end

    # Returns announcement title in text form.
    def title_label
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag.h1, format_method(__method__), @browser)
    end

    # Returns the "read more" link.
    def read_more_link
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag.a.innerText("read more"), format_method(__method__), @browser)
    end

    # Returns the announcement link
    def announcement_link
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag.a.href("/http:/"), format_method(__method__), @browser)
    end
end

