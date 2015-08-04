# Author:: Chelsea Lovas & Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to user forums.
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseForumsFinder

    # Returns the forums email address field (forums)
    def forums_email_address_field
        # unit_test_no_generate: forums_email_address_field, input.className(create_ats_regex_string("ats-email-address-field"))
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-email-address-field")), __method__, self)
    end

    # Returns the forums password field (forums).
    def forums_password_field
        # unit_test_no_generate: forums_password_field, input.className(create_ats_regex_string("ats-password-field"))
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-password-field")), __method__, self)
    end

    # Returns the "Sign Up" link.
    def forums_sign_up_link
        # unit_test_no_generate: forums_sign_up_link, a.className(create_ats_regex_string("ats-sign-up-link"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-sign-up-link")), __method__, self)
    end

    # Returns the "create new account" button.
    def forums_create_new_account_button
        # unit_test_no_generate: forums_create_new_account_button, a.className(create_ats_regex_string("ats-create-account-button"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-create-account-button")), __method__, self)
    end

    # Returns the forums login button (forums).
    def forums_login_button
        # unit_test_no_generate: forums_login_button, input.className(create_ats_regex_string("ats-login-button"))
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-login-button")), __method__, self)
    end

    # Returns the forums Recent Posts label (forums).
    def forums_recent_posts_label
        # unit_test_no_generate: forums_recent_posts_label, div.className("/section recentposts/").a.title("/Recent Posts Within 72 Hours/")
        $tracer.trace(__method__)
        return ToolTag.new(div.className("/section recentposts/").a.title("/Recent Posts Within 72 Hours/"), __method__, self)
    end

    # Returns the forums "Recent Posts" link.
    def forums_recent_posts_link
        # unit_test_no_generate: forums_recent_posts_link, a.className(create_ats_regex_string("ats-recent-posts-link"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-recent-posts-link")), __method__, self)
    end

    # Returns the forums sign out link (forums).
    def forums_sign_out_link
        # unit_test_no_generate: forums_sign_out_link, a.className(create_ats_regex_string("ats-logout-link"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-logout-link")), __method__, self)
    end

    # Returns the forums My Account link (forums).
    def forums_my_account_link
        # unit_test_no_generate: forums_my_account_link, a.class(create_ats_regex_string("ats-my-account-link"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-my-account-link")), __method__, self)
    end

    # Returns the forums Invalid Login label (forums).
    def forums_invalid_login_label
        # unit_test_no_generate: forums_invalid_login_label, span.className(create_ats_regex_string("ats-invalid-login-label"))
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-invalid-login-label")), __method__, self)
    end

    # Returns the "Welcome <user>" label.
    def forums_welcome_label
        # unit_test_no_generate: forums_weclome_label, span.className(create_ats_regex_string("ats-welcome-user-label"))
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-welcome-user-label")), __method__, self)
    end

    # Returns the "Home" link.
    def forums_home_link
        # unit_test_no_generate: forums_home_link, a.className(create_ats_regex_string("ats-forums-home-link"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-forums-home-link")), __method__, self)
    end

    # Returns the "Pinned Post" list.  The first item is the original post, followed by replies.
    def forums_post_list
        # unit_test_no_generate: forums_post_list, div.className(create_ats_regex_string("post")); ImpulseForumsPostList
        $tracer.trace(__method__)
        return ImpulseForumsPostList.new(ToolTag.new(div.className(create_ats_regex_string("post")), __method__, self), self)
    end

    # Return forums "create post" button.
    def forums_create_post_button
        # unit_test_no_generate: forums_create_post_button, a.className(create_ats_regex_string("ats-forums-create-post-button"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-forums-create-post-button")), __method__, self)
    end

    # Return the "Write New Post" label.
    def forums_write_new_post_label
        # unit_test_no_generate: forums_write_new_post_label, span.className(create_ats_regex_string("ats-forums-write-new-post-label"))
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-forums-write-new-post-label")), __method__, self)
    end

    # Returns the create post panel that contains the tinymce editor.
    def forums_create_post_panel
        # unit_test_no_generate: forums_create_post_panel, div.className(create_ats_regex_string("ats-forums-post-editor")); ImpulseForumsCreatePostPanel
        $tracer.trace(__method__)
        return ImpulseForumsCreatePostPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-forums-post-editor")), __method__, self), self)
    end

    # Returns the reply post panel that contains the tinymce editor.
    def forums_reply_post_panel
        # unit_test_no_generate: forums_reply_post_panel, div.className(create_ats_regex_string("ats-forums-post-editor")); ImpulseForumsReplyPostPanel
        $tracer.trace(__method__)
        return ImpulseForumsReplyPostPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-forums-post-editor")), __method__, self), self)
    end

end
