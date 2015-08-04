# == Overview
# This class is used to simplify d-con script writers interaction with the Rest Agent.
#
# Refer to the parent base class (RestService) for more information.
#
# == Usage
# config = RestAgentConfig.new
# config.set_user_agent('iPhone')
# config.set_option("accept", 'text/xml')
# config.set_option("content-type", 'text/xml')
#
# client = UsersProfilesResource.new("http://qa1.secureapi.impulsedriven.com/Users/v1/Profiles", config)
#
# Example:
# request = client.get_request_from_template(USERS_PROFILES_RESOURCE_TEMPLATE)
# response = client.create(request.xml, "includeResponseBody=true")
#
# NOTE: Please see online service resource help documents for more detailed information.

class UsersProfilesResource < RestService

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

    # Performs the "index" operation, responding with user profile data as a dot object.
    # === Parameters:
    # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
    #                  (excluding beginning "?"). Default is no query string.
    def index(parameters = nil)
        return @client.get(add_parameters_to_uri(@resource_uri, parameters))
    end

    # Performs the "create" operation, creating accounts, responding as a dot object.
    # === Parameters:
    # _data_:: user specified data as a string. This generally should be via an xml/json template,
    #          but must be in the type specified via the configuration.
    # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
    #                  (excluding beginning "?"). Default is no query string.
    def create(data, parameters = nil)
        return @client.post(add_parameters_to_uri(@resource_uri, parameters), data)
    end

    # Performs the "update" operation, updates account, responding as a dot object.
    # === Parameters:
    # _full_uri_::  This is the resource_uri plus "/{id}".  NOTE: this full uri can be retrieved via "index", "uri" field.
    # _data_:: user specified data as a string. This generally should be via an xml/json template, or from the "index" operation
    #          response, but must be in the type specified via the configuration.
    # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
    #                  (excluding beginning "?"). Default is no query string.
    def update(full_uri, data, parameters = nil)
        return @client.put(add_parameters_to_uri(full_uri, parameters), data)
    end

    # Perform the "show" operation, responding as a dot object.
    # === Parameters:
    # _full_uri_::  This is the resource_uri plus "/{id}".  NOTE: this full uri can be retrieved via "index", "uri" field.
    def show(full_uri)
        return @client.get(full_uri)
    end

    # Performs the "search" operation, responding with a dot object.  The search operation requires an
    # XML or JSON data structure -- this is due to the password possibly being exposed in log files,
    # even though the connection established is secure.
    # === Parameters:
    # _data_:: user specified data as a string. This generally should be via an xml/json template, or from the "index" operation
    #          response, but must be in the type specified via the configuration.
    # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
    #                  (excluding beginning "?"). Default is no query string.
    def search(data)
        resource_uri = "#{@resource_uri}/search"
        return @client.post(resource_uri, data)
    end

    # Performs the "ShowProperty" operation, responding as a dot object.
    # === Paramters:
    # _full_uri_::  This is the resource_uri plus "/{id}".  NOTE: this full uri can be retrieved via "index", "uri" field.
    # _property_name_:: the actual property name as a string.
    def show_property(full_uri, property_name)
        property_uri = "#{full_uri}/#{property_name}"
        return @client.get(property_uri)
    end

    # Performs the "PutProperty" operation, responding as a dot object.
    # === Paramters:
    # _full_uri_::  This is the resource_uri plus "/{id}".  NOTE: this full uri can be retrieved via "index", "uri" field.
    # _property_name_:: the actual property name as a string.
    # _data_:: user specified data as a string. This generally should be via an xml/json template, if needed.
    def put_property(full_uri, property_name, data)
        property_uri = "#{full_uri}/#{property_name}"
        return @client.put(property_uri, data)
    end
end
