qaautomation_finders_dir = ENV["QAAUTOMATION_FINDERS"]
require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

# Used to avoid actual initializing base class, through super.
class RestService
    def test_initialize(config = nil)
        puts "dummy"

        unless config.nil?
            puts "dummy config"
        end
    end
end

describe ActivationResource, "initialize" do
   before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class RestService
            alias :initialize :test_initialize
        end
    end

    it "should initialize with config" do
        resource = ActivationResource.allocate
        mocked_uri = double("resource_uri")
        mocked_config = double("config")

        resource.should_receive(:puts).with("dummy").ordered
        resource.should_receive(:puts).with("dummy config").ordered

        resource.send(:initialize, mocked_uri, mocked_config)
        resource.resource_uri.should == mocked_uri
        ActivationResource.superclass.should == RestService
    end
end

describe ActivationResource, "activate" do
    it "should perform activate, utilizing rest post with cookie" do
        resource = ActivationResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        mocked_activation_request = double("activation_request")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with(resource.instance_variable_get(:@resource_uri), mocked_activation_request).ordered.and_return(mocked_response)

        resource.activate(mocked_activation_request, mocked_cookie).should == mocked_response
    end

    it "should perform activate, utilizing rest post, with defaults" do
        resource = ActivationResource.allocate
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        mocked_activation_request = double("activation_request")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with(resource.instance_variable_get(:@resource_uri), mocked_activation_request).ordered.and_return(mocked_response)

        resource.activate(mocked_activation_request).should == mocked_response
    end
end

describe ActivationResource, "check_activation_status" do
    it "should perform check_activation_status, utilizing rest post with cookie" do
        resource = ActivationResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        mocked_activation_data = double("activation_data")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with("#{resource.instance_variable_get(:@resource_uri)}/check", mocked_activation_data).ordered.and_return(mocked_response)

        resource.check_activation_status(mocked_activation_data, mocked_cookie).should == mocked_response
    end

    it "should perform check_activation_status, utilizing rest post, with defaults" do
        resource = ActivationResource.allocate
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        mocked_activation_data = double("activation_data")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with("#{resource.instance_variable_get(:@resource_uri)}/check", mocked_activation_data).ordered.and_return(mocked_response)

        resource.check_activation_status(mocked_activation_data).should == mocked_response
    end
end

