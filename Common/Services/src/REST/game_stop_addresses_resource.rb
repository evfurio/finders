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
# client = AddressesResource.new("https://logindev.gamestop.com/Api/Addresses", config)
#
# Example:
# request = client.get_request_from_template(ADDRESS_RESOURCE_TEMPLATE)
# response = client.create(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class AddressesResource < RestService

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

    # Creates a new address.
    # === Parameters:
    # _address_:: user specified data as a string. This generally should be via an xml/json template,
    #             but must be in the type specified via the configuration.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def create(address, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.post(@resource_uri, address)
    end

    # Deletes an existing address.
    # === Parameters:
    # _id_:: id of address to delete
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def delete(id, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get("#{@resource_uri}/#{id}/delete")
    end

    # Updates an existing address.
    # === Parameters:
    # _id_:: id of address to update
    # _address_:: user specified data as a string. This generally should be via an xml/json template,
    #             but must be in the type specified via the configuration.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def update(id, address, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.put("#{@resource_uri}/#{id}", address)
    end
end
