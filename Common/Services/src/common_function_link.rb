Object.send(:remove_const, :CommonFunctionLink) if Object.const_defined?(:CommonFunctionLink)

# == Overview
# This class is used to simplify d-con script writers interaction with the SOAP Agent.  This class may be
# instantiated directory, or be instantiated through one of the sub classes.
#
# Service operations methods are dynamically generated.  You will NOT find these located in the rdocs because of this.  Each operation
# method call is created directly from the wsdl. For example:
#
# Querying the wsdl, you will see operations, such as:
#   <wsdl:operation name="GetConfigurationValues"></wsdl:operation>
#
# This will be translated to a ruby underscore style method call named "get_configuration_values".  This can then be used as a client method call,
# as shown below in the Usage.  Currently, the GET_CONFIGURATION_VALUES xml request string will need to be provided by the user.
#
# Refer to the parent base class (SoapService) for more information.
#
# == Usage
#      @client = ConfigurationService.new(configservice)
#
class CommonFunctionLink

  def initialize
  end

end