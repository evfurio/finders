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
# client = TeamCityResource.new("https://logindev.gamestop.com/Api/TeamCity", config)
#
# Example:
# request = client.get_request_from_template(ACTIVATIONREQUEST_RESOURCE_TEMPLATE)
# response = client.activate(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class TeamCityResource < RestService

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

    # Returns all build info.
    def builds
        return @client.get("#{@resource_uri}/builds")
    end

end

