# == Overview
# This class contains finder functionalities related to creating a post.
class ImpulseForumsCreatePostPanel < CommonComponent
    # Returns the "Title" label.
    def title_label
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-forums-post-title-label")), formatted_method, @browser)
    end

    # Returns the "Title" field.
    def title_field
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.input.className(create_ats_regex_string("ats-forums-post-title-field")), formatted_method, @browser)
    end

    # Returns the "Subtitle" label.
    def subtitle_label
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.div.className(create_ats_regex_string('ats-forums-post-subtitle-label')), formatted_method, @browser)
    end

    # Returns the "Subtitle" title.
    def subtitle_field
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.input.className(create_ats_regex_string("ats-forums-post-subtitle-field")), formatted_method, @browser)
    end

    # Returns the "submit new post" button.
    def submit_new_post_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.input.className(create_ats_regex_string('ats-forums-post-submit-new-post-button')), formatted_method, @browser)
    end

    # Returns the "reply" button.
    def post_reply_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.input.className(create_ats_regex_string('ats-forums-post-reply-button')), formatted_method, @browser)
    end

    # Returns the forums' post message field.
    def post_message_field
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        # unit_test_no_generate: post_message_field, div.className(create_ats_regex_string("ats-forums-post-message-field")); ImpulseTinyMCE
        return ImpulseTinyMCE.new(ToolTag.new(@tag.div.className(create_ats_regex_string("ats-forums-post-message-field")), formatted_method, @browser), @browser)
    end
end

# == Overview
# This class contains finder functionalities related to replying to a post.
class ImpulseForumsReplyPostPanel < CommonComponent
    # Returns the "reply" button.
    def post_reply_button
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.input.className(create_ats_regex_string('ats-forums-post-reply-button')), formatted_method, @browser)
    end

    # Returns the forums' post message field.
    def post_message_field
        formatted_method = format_method(__method__)
        $tracer.trace(formatted_method)
        return ImpulseTinyMCE.new(ToolTag.new(@tag.div.className(create_ats_regex_string("ats-forums-post-message-field")), formatted_method, @browser), @browser)
    end
end

