# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameinformerFinder) if Object.const_defined?(:GameinformerFinder)

# This module exists to provide an abstraction layer for
# GameInformer test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameInformerFinder

#####################################################################
##### Finders from gameinformer main page (qa.gameinformer.com) #####
#####################################################################

  # Returns the sign in link from the gameinformer main page
  def sign_in_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/login/"), __method__)
  end

  # Returns the join link from the gameinformer main page
  def join_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/user-registration/"), __method__)
  end
	
  # Returns the gameinformer header link from the gameinformer header
  def gi_header_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("site-banner")).a.innerText("/GameInformer/"), __method__)
  end	
	
  # Returns the light switch ON button from the gameinformer header
  def light_switch_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/Switch/"), __method__)
  end	
	
  # Returns the sign in label from the sign in page
  def sign_in_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/page-name/"), __method__)
  end		
		
  # Returns the lights status label from the header (on/off status)
  def light_status_label
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className("/text/"), __method__)
  end
  
  # Returns the 'newsfeed' panel from main page
  def feed_tabs_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/"), __method__)
  end

  # Returns the feed link from 'newsfeed' panel from main page
  def newsfeed_feed_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").a.at(0).innerText("/the feed/"), __method__)
  end 
  
  # Returns the blogs link from 'newsfeed' panel from main page
  def newsfeed_blogs_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").a.at(1).innerText("/blogs/"), __method__)
  end

  # Returns the community link from 'newsfeed' panel from main page
  def newsfeed_community_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").a.at(2).innerText("/community/"), __method__)
  end

  # Returns the guides link from 'newsfeed' panel from main page
  def newsfeed_guides_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").a.at(3).innerText("/guides/"), __method__)
  end 
  
  # Returns the user profile name from user profile header
  def user_profile_name_link
    $tracer.trace(__method__)
    return ToolTag.new(span.className("/user-name/").a.className("/view-user-profile/"), __method__)
  end    

  # Returns the Control Panel link from the admin bar header
  def control_panel_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/view-control-panel/"), __method__)
  end   

  # Returns the Blogs link from the nav list bar 
  def navlistbar_blogs_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/take-part/").div.className("/subnav/").ul.className("/dropdown/").a("/Blogs/"), __method__)
  end

  # Returns the Forums link from the nav list bar 
  def navlistbar_forums_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/take-part/").div.className("/subnav/").ul.className("/dropdown/").a("/Forums/"), __method__)
  end

  # Returns the Guides link from the nav list bar 
  def navlistbar_guides_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/take-part/").div.className("/subnav/").ul.className("/dropdown/").a("/Guides/"), __method__)
  end 
  
  # Returns the hubs list from the nav list bar
  # this is a component
  def navlistbar_hubs_link
    $tracer.trace(__method__)
    return GINavbarHubsListLinks.new(li.className("magazine").div.className("subnav").a, __method__)
  end  

  # Returns the Read Current Issue link from the nav list bar 
  def navlistbar_digimag_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/take part/").div.className("/subnav/").ul.className("/dropdown/").a("/Read Current Issue/"), __method__)
  end 
  
  # Returns the Groups link from the nav list bar 
  def navlistbar_groups_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/take-part/").div.className("/subnav/").ul.className("/dropdown/").a("/Groups/"), __method__)
  end   

  # Returns the News link from the nav list bar 
  def navlistbar_news_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/news/").a.innerText("/News/"), __method__)
  end     

  # Returns the Podcasts link from the nav list bar 
  def navlistbar_podcasts_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/explore/").div.className("/subnav/").ul.className("/dropdown/").a("/Podcasts/"), __method__)
  end     
  
  # Returns the Reviews link from the nav list bar 
  def navlistbar_reviews_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("/reviews/").a("/Reviews/"), __method__)
  end

  # Returns the Search box field from the homepage 
  def search_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/headerSearchTextBox/"), __method__)
  end  

  # Returns the Search button search box from the homepage 
  def search_button
    $tracer.trace(__method__)
    return ToolTag.new(input.className("/search-options/"), __method__)
  end  
  
  # Returns the Search results panel from the search results page 
  def search_results_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/ctl00_content_ctl00_content/"), __method__)
  end

  # Returns the sign out link from the header
  #FIXME: needs unit test
  def sign_out_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/logout/"), __method__)
  end

  # Returns the settings link from the header
  #FIXME: needs unit test
  def profile_settings_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/edit-user-profile/"), __method__)
  end

  # Returns the manage subscriptions link from the profile settings page
  #FIXME: needs unit test
  def manage_subscriptions_link
    return ToolTag.new(a.className("tab").innerText("Manage Subscriptions"), __method__)
  end

#################################################################################################
##### Finders from gameinformer join page (https://qa.gameinformer.com/user/createuser.aspx) ####
#################################################################################################


  # Returns the join label from the join page
  def join_join_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/create_user_header/").innerText("/Welcome to Game Informer online!/"), __method__)
  end	
  
  # Returns the sign in name field
  def join_signin_name_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_Username/"), __method__)
  end							  

  # Returns the choose password field  
  def join_choose_password_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_PasswordPlaceholder_ctl09_Password/"), __method__)
  end

  # Returns the re enter password field  
  def join_reenter_password_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_PasswordPlaceholder_ctl09_Password2/"), __method__)
  end

  # Returns the email address field  
  def join_email_address_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_Email/"), __method__)
  end

  # Returns the re enter email address field
  def join_reenter_email_address_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_Email2/"), __method__)
  end  

  # Returns the join now button  
  def join_now_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_CreateAccount/"), __method__)
  end    
 
  # Returns the invalid captcha message 
  def incorrect_captcha_label
    $tracer.trace(__method__)
    return ToolTag.new(span.id("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_lblResult/"), __method__)
  end

###########################################################################################
##### Finders from gameinformer sign in page (https://qa.gameinformer.com/login.aspx) #####
###########################################################################################

  # Returns the sign in name field
  def sign_in_name_field
    $tracer.trace(__method__)   
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_username/"), __method__)
  end

  # Returns the sign in password field
  def sign_in_password_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_password/"), __method__)
  end

  # Returns the keep me signed in checkbox
  def keep_signedin_checkbox
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_autoLogin/"), __method__)
  end  
 
  # Returns the sign in button
  def sign_in_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_loginButton/"), __method__)
  end  
 
####################################################################################################################
##### Finders from gameinformer control panel main page (http://qa.gameinformer.com/controlpanel/default.aspx) #####
####################################################################################################################

  # Returns the membership administration link
  def membership_admin_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/Membership/membersearch.aspx/"), __method__)
  end

###################################################################################################################################
##### Finders from gameinformer membership admin page (https://qa.gameinformer.com/controlpanel/Membership/membersearch.aspx) #####
###################################################################################################################################

  # Returns the membership administration label
  def membership_admin_label
    $tracer.trace(__method__)
    return ToolTag.new(h1.className("/CommonTitleBarTitle/").innerText("/Membership Administration/"), __method__)
  end

    # Returns the create new account link from members and roles tab
  def create_new_acct_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/ChildNavPaneTab/").innerText("/Create New Account/"), __method__)
  end

    # Returns the sign-in name field from the mem. admin create account page
  def adm_signin_name_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_username/"), __method__)
  end
  
    # Returns the password field from the mem. admin create account page
  def adm_password_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_password/"), __method__)
  end
  
    # Returns the re-enter password field from the mem. admin create account page
  def adm_reenter_password_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_password2/"), __method__)
  end
  
    # Returns the email address field from the mem. admin create account page
  def adm_email_address_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_email/"), __method__)
  end
  
    # Returns the timezone field from the mem. admin create account page
  def adm_timezone_field
    $tracer.trace(__method__)
    return ToolTag.new(get_self.select.id("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_timezone/"), __method__)
  end
  
    # Returns the create new account buttong from the mem. admin create account page
  def adm_create_acct_button
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_createButton/"), __method__)
  end

    # Returns the user creation success message from the mem. admin create account page
  def adm_user_create_success_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/CommonMessageSuccess/"), __method__)
  end

####################################################################################
##### Finders from gameinformer footer on any of the pages where footer exists #####
####################################################################################

  # Returns the cover stories footer label
  # this is a component
  def footer_cover_stories_label(header_name)
    $tracer.trace(__method__)
    return GIFooterCoverStoriesPanel.new(div.className("nav").dt(header_name).parent("dl").dd, __method__)
  end

  # Returns the Gamestop Network Logo link from the footer
  def footer_gs_network_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("network").a, __method__)
  end

  # Returns the Gamestop.com Logo link from the footer
  def footer_gs_com_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("network").a.className("/gamestop/"), __method__)
  end

  # Returns the Gamestop PC Downloads Logo link from the footer
  def footer_pc_downloads_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("network").a.className("/impulse/"), __method__)
  end

  # Returns the gameinformer Logo link from the footer
  def footer_gi_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("network").a.className("/gi/"), __method__)
  end

  # Returns the Kongregate Logo link from the footer
  def footer_kongregate_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("network").a.className("/kongregate/"), __method__)
  end
  
  ### using list for now - until title class is recognized by d-con ###
  
  # Returns the Contact Us link from the footer
  def footer_contact_us_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(0), __method__)
  end 

  # Returns the Staff Bioss link from the footer  
  def footer_staff_bios_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(1), __method__)
  end   

  # Returns the Terms and Conditions link from the footer  
  def footer_terms_conditions_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(2), __method__)
  end 

  # Returns the Privacy Policy link from the footer  
  def footer_privacy_policy_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(3), __method__)
  end 

  # Returns the Customer Service link from the footer  
  def footer_customer_service_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(4), __method__)
  end   

  # Returns the Corporate Information link from the footer  
  def footer_corporate_information_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(5), __method__)
  end 

  # Returns the Advertising link from the footer  
  def footer_advertising_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(6), __method__)
  end 

  # Returns the The Laboratory link from the footer  
  def footer_the_laboratory_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("business").a.at(7), __method__)
  end  

  ### using list for now - until title class is recognized by d-con ###

  # Returns the twitter link from the footer  
  def footer_twitter_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("social").a.className("twitter"), __method__)
  end    

  # Returns the facebook link from the footer  
  def footer_facebook_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("social").a.className("facebook"), __method__)
  end   

  # Returns the rss link from the footer  
  def footer_rss_link	
    $tracer.trace(__method__)
    return ToolTag.new(div.className("social").a.className("rss"), __method__)
  end   

  # Returns the youtube link from the footer  
  def footer_youtube_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("social").a.className("youtube"), __method__)
  end     
  
  # Returns the webby awards link from the footer  
  def footer_webby_awards_link
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/webby_awards/"), __method__)
  end  

  # Returns the gi logo link from the footer  
  def footer_gi_logo_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("logo"), __method__)
  end    

  ### using list for now - until title class is recognized by d-con ###

  # Returns the about link from the footer  
  def footer_about_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("authentication").a.at(0), __method__)
  end   

  # Returns the join link from the footer  
  def footer_join_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("authentication").a.at(1), __method__)
  end   

  # Returns the sign in link from the footer  
  def footer_sign_in_link
    $tracer.trace(__method__)
    return ToolTag.new(nav.className("authentication").a.at(2), __method__)
  end     
   
  ### using list for now - until title class is recognized by d-con ###

  
################################################
##### Finders from gameinformer blogs page #####
################################################

  # Returns the user blogs label from the user blogs page  
  def user_blogs_label
    $tracer.trace(__method__)
    return ToolTag.new(span("user blogs"), __method__)
  end   

  # Returns the user blog list from the user blogs page  
  def user_blogs_list
    $tracer.trace(__method__)
    return ToolTag.new(ul.className("/content-list standard/").li.className("/content-item/"), __method__)
  end   

  # Returns a user blog post from a blogs page after clicking on user blog
  def user_blogs_post_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("full-post"), __method__)
  end     
  
#################################################
##### Finders from gameinformer forums page #####
#################################################

  # Returns the user forums label from the user forums page  
  def user_forums_label
    $tracer.trace(__method__)
    return ToolTag.new(h2.className("group-name").innerText("/Forums/"), __method__)
  end   
  
  # Returns the General Gaming link from the user forums page  
  # FIXME: couldn't get the innerText to work - team is looking at. will wrap this into a component when regression test forums
  def forums_general_gaming_link
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/fragment-4335/").div.className("/content-fragment-content/").ul.li.className("/content-item/").at(1).span.className("/group-name/").a, __method__)
  end
  
  # Returns the General Gaming label from the general gaming forums page  
  def forums_general_gaming_label
    $tracer.trace(__method__)
    return ToolTag.new(h2.className("group-name").innerText("/General Gaming/"), __method__)
  end  

  # Returns the Gamer Helpline link from the general gaming forums page
  def forums_gamer_helpline_link
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/ctl00_content_ctl00_fragment_4954_ctl01_ctl00_appBrowser_DelayedSections/").a.innerText("/Gamer Helpline/"), __method__)
  end   

  # Returns the forum posts list from a forums page  
  def forums_posts_list
    $tracer.trace(__method__)
    return ToolTag.new(table.className("/table-list/").tr.className("/table-item/"), __method__)
  end
  
  # Returns the forum post links in the list from the Gamer Helpline forums page (list based)  
  def forums_post_link
    $tracer.trace(__method__)
    return ToolTag.new(table.className("/table-list/").tr.className("/table-item/").a.className("/view-post forum/"), __method__)
  end  

  # Returns the forum post title from the Gamer Helpline article page   
  def forums_post_title_label
    $tracer.trace(__method__)
    return ToolTag.new(h4.className("/post-name/"), __method__)
  end  

#################################################
##### Finders from gameinformer guides page #####
#################################################

  # Returns the user guides label from the user guides page  
  def user_guides_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("tabs").innerText("/guides/"), __method__)
  end   
 
  # Returns the all pages link from the user guides page  
  def guides_allpages_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("sort-options").a("/All Pages/"), __method__)
  end  

  # Returns the new pages link from the user guides page  
  def guides_newpages_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("sort-options").a("/New Pages/"), __method__)
  end  

  # Returns the updated pages link from the user guides page  
  def guides_updatedpages_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("sort-options").a("/Updated Pages/"), __method__)
  end    

  # Returns the guides posts list from the user guides page  
  def guides_posts_list
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/fragment-3805/").ul.className("content-list").li.className("/content-item/"), __method__)
  end      
  
  # Returns the guides post link from the user guides page (list based for now)
  def guides_posts_link
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/fragment-3805/").ul.className("content-list").li.className("/content-item/").h4.a, __method__)
  end  

  # Returns the guides post title lagel from the user guides page
  def guides_posts_title_label
    $tracer.trace(__method__)
    return ToolTag.new(h1.className("/post-name/"), __method__)
  end  

############################################################
##### Finders from gameinformer digital mag flow pages #####
############################################################

  # Returns the digital edition type label from the digital mag type page  
  def digital_mag_edition_label
    $tracer.trace(__method__)
    return ToolTag.new(h1("/Access the Latest Digital Edition/"), __method__)
  end

  # Returns the PC/MAC button from the digital mag type page  
  def pc_mac_mag_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/digimag/"), __method__)
  end

  # Returns the Apple App Store button from the digital mag type page  
  def digimag_apple_store_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/appstore/"), __method__)
  end    

  # Returns the Google Play Android App button from the digital mag type page  
  def digimag_google_play_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/googleplay/"), __method__)
  end    

  # Returns the Google Play Magazine button from the digital mag type page  
  def digimag_google_magazine_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/googleplaymagazine/"), __method__)
  end      

  # Returns the gameinformer digital label from the digital mag signin page (not signed in page state)
  def gi_digital_mag_label
    $tracer.trace(__method__)
    return ToolTag.new(h2("/Game Informer, Digital/"), __method__)
  end     
  
  # Returns the signin name field from the digital mag signin page  
  def digimag_signin_name_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_username/"), __method__)
  end   

  # Returns the signin password field from the digital mag signin page  
  def digimag_signin_password_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_password/"), __method__)
  end

  # Returns the keep me signed in checkbox from the digital mag signin page  
  def digimag_keep_signin_checkbox
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_autoLogin/"), __method__)
  end

  # Returns the login button from the digital mag signin page  
  def digimag_login_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_loginButton/"), __method__)
  end

  # Returns the profile tabs tabset from the user settings page (each tab is an iframe, this is for the container of the tabs)
  # FIXME: needs unit test
  def user_profile_settings_label
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/ProfileTabs_TabSet/") ,__method__)
  end

  # iframe elements can't be found, need to get these off of the actual iframe page
  # qa.awesome.gameinformer.com/subscriberidentification or qa.awesome.gameinformer.com/subscriptionmanagement

  # Returns the start over button from the linking wizard manage subscriptions page (iframe page)
  # FIXME: needs unit test
  def linkwizard_startover_button
    $tracer.trace(__method__)
    return ToolTag.new(form.id("StartOver").button.className("/btn/") ,__method__)
  end

  # Returns the zip code field from the linking wizard (iframe page)
  # FIXME: needs unit test
  def linkwizard_zip_field
    $tracer.trace(__method__)
    return ToolTag.new(input.className("ats-enter_zip_field") ,__method__)
  end

  # Returns the next button from the linking wizard find my subscription page (iframe page)
  # FIXME: needs unit test
  def linkwizard_next_button
    $tracer.trace(__method__)
    return ToolTag.new(button.className("/ats-search_button/") ,__method__)
  end

  # Returns the subscriber number field from the linking wizard find my subscription page (iframe page)
  # FIXME: needs unit test
  def linkwizard_crm_num_field
    $tracer.trace(__method__)
    return ToolTag.new(input.className("/ats-enter_subscriber_number_field/") ,__method__)
  end

  # Returns the find button from the linking wizard find my subscription page (iframe page)
  # FIXME: needs unit test
  def linkwizard_find_button
    $tracer.trace(__method__)
    return ToolTag.new(button.className("/ats-search_button/") ,__method__)
  end

  # Returns the confirm button from the linking wizard find my subscription page (iframe page)
  # FIXME: needs unit test
  def linkwizard_confirm_button
    $tracer.trace(__method__)
    return ToolTag.new(button.id("/btnSubmit/") ,__method__)
  end

  # Returns the find my subscription label from the linking wizard find my subscription page (iframe page)
  # FIXME: needs unit test
  def linkwizard_findsub_label
    $tracer.trace(__method__)
    return ToolTag.new(h3("/Find My Subscription/") ,__method__)
  end

#######################################################
##### Finders from gameinformer membergroups page #####
#######################################################

  # Returns the kool kid crusade group label from the membergroups page  
  def membergroups_koolkid_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/parent-group-title/").innerText("/Kool Kid Crusade/"), __method__)
  end

  # Returns the platform group label from the membergroups page  
  def membergroups_platform_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/parent-group-title/").innerText("/Platform/"), __method__)
  end

  # Returns the style group label from the membergroups page  
  def membergroups_style_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/parent-group-title/").innerText("/Style/"), __method__)
  end  
  
    # Returns the players lounge group label from the membergroups page  
  def membergroups_playerslounge_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/parent-group-title/").innerText("/Player's Lounge/"), __method__)
  end

  # Returns the culture group label from the membergroups page  
  def membergroups_culture_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/parent-group-title/").innerText("/Culture/"), __method__)
  end  
  
  # Returns the gameinformer group label from the membergroups page  
  def membergroups_gameinformer_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/parent-group-title/").innerText("/Game Informer/"), __method__)
  end  
  
    # Returns the gio old timers link from the gameinformer group from the membergroups page  
  def membergroups_giooldtimers_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("//membergroups/game_informer/gio_old_timers/default.aspx/"), __method__)
  end
  
    # Returns the site feedback link from the gameinformer group from the membergroups page  
  def membergroups_sitefeedback_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("//membergroups/game_informer/site_feedback/default.aspx/"), __method__)
  end

    # Returns the writers guild link from the gameinformer group from the membergroups page  
  def membergroups_writersguild_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("//membergroups/game_informer/writers_guild/default.aspx/"), __method__)
  end  
  
    # Returns the site feedback label from the site feedback group page   
  def sitefeedback_sitefeedback_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/group-banner/").h2.className("/group-name/").innerText("/Site Feedback/"), __method__)
  end    
  
    # Returns the home tab from the navigation listbar from the site feedback group page   
  def sitefeedback_hometab_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/view-group/").innerText("Home"), __method__)
  end    
  
    # Returns the blog tab from the navigation listbar from the site feedback group page   
  def sitefeedback_blogtab_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/weblog/").innerText("Blog"), __method__)
  end 

    # Returns the forum tab from the navigation listbar from the site feedback group page   
  def sitefeedback_forumtab_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/forum/").innerText("Forum"), __method__)
  end 

    # Returns the files tab from the navigation listbar from the site feedback group page   
  def sitefeedback_filestab_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/media-gallery/").innerText("Files"), __method__)
  end

    # Returns the wiki tab from the navigation listbar from the site feedback group page   
  def sitefeedback_wikitab_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("/wiki/").innerText("Wiki"), __method__)
  end 

    # Returns the site feedback posts list (list based index) from the site feedback group page   
  def sitefeedback_hometabposts_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/ctl00_content_ctl00_fragment_4819_MessageListWrapper/"), __method__)
  end
  
###############################################
##### Finders from gameinformer news page #####
###############################################

  # Returns the news list label from the news page  
  def news_stories_label
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/ctl00_content_newsPage_fragment_15369_ctl01_ctl00_delayer/").ul.className("/content-list/"), __method__)
  end  

  # Returns the recent link from the news page  
  def news_recent_link
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/ctl00_content_newsPage_fragment_15369_ctl01_ctl00_delayer_ctl01_btnSortByMostRecent/"), __method__)
  end  

  # Returns the popular link from the news page  
  def news_popular_link
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/ctl00_content_newsPage_fragment_15369_ctl01_ctl00_delayer_ctl01_btnSortByMostViewed/"), __method__)
  end  
  
  # Returns the news story post label (generic) from the news page  
  def news_storypost_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/gi-post/").div.className("/full-post/").innerText("/post-name/"), __method__)
  end    
  
###################################################
##### Finders from gameinformer podcasts page #####
###################################################

  # Returns the podcast label from the podcasts page  
  def podcasts_podcasts_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").div.className("/content-fragment-header/").span.innerText("/Podcasts/"), __method__)
  end    
  
  # Returns the podcasts story panel from the podcasts page  
  def podcasts_podcasts_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/gi-post-list/").ul.className("/content-list standard/"), __method__)
  end 

  # Returns the podcasts story label from the podcast story page  
  def podcasts_podcastsstory_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/gi-post preview/").div.className("/full-post/").innerText("/post-name/"), __method__)
  end 

##################################################
##### Finders from gameinformer reviews page #####
##################################################

  # Returns the featured reviews label from the reviews page  
  def reviews_featured_reviews_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/FeedTag/").innerText("/Featured Reviews/"), __method__)
  end    
  
  # Returns the editor reviews button from the reviews page  
  def reviews_editorreviews_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").a.innerText("/Editor Reviews/"), __method__)
  end 

  # Returns the user reviews button from the reviews page  
  def reviews_userreviews_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/tabs/").a.innerText("/user reviews/"), __method__)
  end   
  
  # Returns the reviews story panel from the reviews page  
  def reviews_reviews_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/gi-post-list/").ul.className("/content-list/"), __method__)
  end

  # Returns the podcasts story label from the podcast story page  
  def reviews_reviewsstory_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/gi-post/").h1.className("/game-name/"), __method__)
  end  
  
end