# == Overview
# This class contains the finders for the post forums post page.
# Usage:
# post_list = browser.post_list
# post = post_list.at(0)
# reply = post_list.at(1)
class ImpulseForumsPostList < CommonComponent

    # Returns the post specified via an index from the post list.  The 0th index is always the original post, where all
    # following posts are replies.
    # === Parameters:
    # _index_:: zero-based index of the post to be retrieved from the post list.
    #           0 index returns an InpulseForumsPostOriginalItem instance
    #           >0 index returns an ImpulseForumsPostReplyItem instance
    def at(index)

        if index == 0
            return ImpulseForumsPostOriginalItem.new(@tag, @browser)
        else
            return ImpulseForumsPostReplyItem.new(@tag.div.className(create_ats_regex_string("replyoverall")).at(index - 1), @browser)
        end
    end

    # Returns the number of posts in the list. At least 1 is always returned, as an int.
    def length
        # length will always return at least 1... as @tag is this item (you can't have this page without an original post).
        length = 1 + @tag.div.className(create_ats_regex_string("replyoverall")).length

        return length
    end

end

# == Overview
# The class contains the finders for the first (original) post.  The original post has different entites than the reply posts,
# thus the reason a seperate original item class.
#
# Usage:
# post_list = browser.post_list
# post = post_list.at(0)
# post.title_label.reply_button.click
class ImpulseForumsPostOriginalItem < CommonComponent
    # Returns the forum title label.
    def title_label
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.h2.className(create_ats_regex_string("ats-forums-post-title-label")).at(0), formatted_method, @browser)
    end

    # Returns the "reply" button.
    def reply_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-reply-button")).at(0), formatted_method, @browser)
    end

    # Returns the "quote" button.
    def quote_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-quote-button")).at(0), formatted_method, @browser)
    end

    # Returns the "report" button
    def report_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-report-button")).at(0), formatted_method, @browser)
    end

    # Returns the posts author menu link.
    def author_menu_link
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-post-author-link")).at(0), formatted_method, @browser)
    end

    # Returns the posts author menu.
    def author_menu
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ImpulseForumsPostAuthorMenu.new(ToolTag.new(@tag.div.className(create_ats_regex_string("ats-post-author-menu-list")).at(0).a, formatted_method, @browser), @browser)
    end

end

# == Overview
# This class contains the finders for each reply post.  These posts differ from the "original" post, thus the reason for
# the separate class.  Currently, we are not supporting any functionality on these posts.
#
# Usage:
# post_list = browser.post_list
# post = post_list.at(1)
# post.title_label.reply_button.click
class ImpulseForumsPostReplyItem < CommonComponent

    # Returns the "reply" button.
    def reply_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-reply-button")), formatted_method, @browser)
    end

    # Returns the "quote" button.
    def quote_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-quote-button")), formatted_method, @browser)
    end

    # Returns the "report" button.
    def report_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-report-button")), formatted_method, @browser)
    end

    # Returns the "karma" thumbs-up button.
    def karma_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-karma-button")), formatted_method, @browser)
    end

    # Returns the posts author menu link.
    def author_menu_link
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-forums-post-author-link")), formatted_method, @browser)
    end

    # Returns the posts author menu.
    def author_menu
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)

        # In the onclick attribute, a method call is made in reference to actual menu.. we need this as a reference to an actual tag.
        # example: "Sd.Menus.showMenu('userMenu0');"
        user_specific_author_menu_tag = @tag.a.className(create_ats_regex_string("ats-forums-post-author-link")).get("onclick").match(/(["'](.*)["'])/)[2]

        return ImpulseForumsPostAuthorMenu.new(ToolTag.new(@tag.div.id(user_specific_author_menu_tag), formatted_method, @browser), @browser)
    end
end

# == Overview
# This class contains the the functionality to retrieve selected menu items.  This can currently be achieved by selecting the index
# of the menu item you would like to perform an action on.
#
# Usage:
# reply_item = post_list.at(1)
# menu = reply_item.author_menu
# menu.at(2).click
class ImpulseForumsPostAuthorMenu < CommonComponent
    # Returns the menu item specified via an index, as a ToolTag.
    # === Parameters:
    # _index_:: zero-based index of the menu item to be retrieved from the menu.
    def at(index)
        return ToolTag.new(@tag.div.className(create_ats_regex_string("items")).a.at(index), format_method(__method__), @browser)
    end

    # Returns the number selectable menu items in the menu, as an int.
    def length
        return @tag.a.length
    end
end
