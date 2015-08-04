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
# client = ProfilesResource.new("https://logindev.gamestop.com/Api/Profiles", config)
#
# Example:
# request = client.get_request_from_template(PROFILES_RESOURCE_TEMPLATE)
# response = client.activate(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class ProfilesResource < RestService

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

    # Shows a digital wallet according to index
    # === Parameters:
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def show(cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get(@resource_uri)
    end

    # Updates the profile.  includeResponseBody as a parameter, if true will include a response body, otherwise if false, empty.
    # === Parameters:
    # _profile_:: JSON or XML template containing a profile.
    # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
    #                (excluding beginning "?"). Default is no query string.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def update(profile, parameters = nil, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.put(add_parameters_to_uri(@resource_uri, parameters), profile)
    end

    # Sets the default wallet based on index.  includeResponseBody as a parameter, if true, will include a response body, otherwse if false, empty.
    # === Parameters:
    # _property_:: property to be updated (string)
    # _profile_:: JSON or XML template containing a profile.  Default is nil, as the 'value' for property can be passed in the
    #             querystring parameter instead.
    # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
    #                (excluding beginning "?"). Default is no query string.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def update_property(property, profile = nil, parameters = nil, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.put(add_parameters_to_uri("#{@resource_uri}/#{property}", parameters), profile)
    end

end
