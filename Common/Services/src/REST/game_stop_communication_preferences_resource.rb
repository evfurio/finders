# == Overview
# This calss is used to simplify d-con script writers interaction with the Rest Agent
#
# Refer to the parent base class (RestService) for more information.
#
# == Usage
# config = RestAgentConfig.new
# config.set_user_agent('iPhone')
# config.set_option("accept", 'text/xml')
# config.set_option("content-type", 'text/xml')
#
# client = CommunicationPreferencesResource.new("https://logindev.gamestop.com/Api/CommunicationPreferences", config)
#
# Example:
# request = client.get_request_from_template(COMMUNICATION_PREFERENCE_RESOURCE_TEMPLATE)
# response = client.activate(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class CommunicationPreferencesResource < RestService

    # resource uri, is the uri for the rest service resource.  This is the uri provided at instantiation of the resource.
    attr_reader :resource_uri

    # Initializes Resource using user specified resource URI.
    # === Parameters:
    # _resource_uri_:: URI string of user specified resource
    # _config_::user provided config.  This must be an instance of RestAgentConfig.
    def initialize(resource_uri, config)
        @resource_uri = resource_uri

        super(config)
    end

    # Gets all communication preference for the current user.
    # === Parameters:
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def index(cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get(@resource_uri)
    end

    # Gets one communication preference for the current user by id
    # === Parameters:
    # _id_:: id of communication preferences to be retrieved.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def show(id, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get("#{@resource_uri}/#{id}")
    end

    # Updates a list of communication preferences for a given user.
    # === Parameters:
    #_communication_preference_:: JSON or XML template containing an array of Communcation Preferences.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def update_many(communication_preferences, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.put(@resource_uri, communication_preferences)
    end

    # Updates a single communication perference property, given an id
    # === Parameters:
    # _id_:: id of communication preferences to be retrieved.
    # _property_:: communication preference property to be updated (string)
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def update_property(id, property, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.put("#{@resource_uri}/#{id}/#{property}")
    end

    # Returns a list of communication perference that have a given channel, ie. GameStop, PUR, GI, etc.
    # === Parameters:
    # _channel_:: channel (GameStop, PUR, GI, etc) (string)
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def get_by_channel(channel, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get("#{@resource_uri}/channel/#{channel}")
    end

    # Returns a list of communication preferences that have a given type, ie. email, text, etc.
    # === Parameters:
    # _type_:: type (email, text, etc) (string)
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def get_by_type(type, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get("#{@resource_uri}/type/#{type}")
    end

end
