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

describe ProfilesResource, "initialize" do
   before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class RestService
            alias :initialize :test_initialize
        end
    end

    it "should initialize with config" do
        resource = ProfilesResource.allocate
        mocked_uri = double("resource_uri")
        mocked_config = double("config")

        resource.should_receive(:puts).with("dummy").ordered
        resource.should_receive(:puts).with("dummy config").ordered

        resource.send(:initialize, mocked_uri, mocked_config)
        resource.resource_uri.should == mocked_uri
        ProfilesResource.superclass.should == RestService
    end
end

describe ProfilesResource, "show" do
    it "should perform show, utilizing rest get with cookie" do
        resource = ProfilesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(resource.instance_variable_get(:@resource_uri)).ordered.and_return(mocked_response)

        resource.show(mocked_cookie).should == mocked_response
    end

    it "should perform show, utilizing rest get, with defaults" do
        resource = ProfilesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(resource.instance_variable_get(:@resource_uri)).ordered.and_return(mocked_response)

        resource.show.should == mocked_response
    end
end

describe ProfilesResource, "update" do
    it "should perform update, utilizing rest get with cookie" do
        resource = ProfilesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_profile = double("profile")
        mocked_parameters = double("parameters")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered

        mocked_new_resource_uri = double("new resource_uri")
        resource.should_receive(:add_parameters_to_uri).with(resource.instance_variable_get(:@resource_uri), mocked_parameters).ordered.and_return(mocked_new_resource_uri)

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(mocked_new_resource_uri, mocked_profile).ordered.and_return(mocked_response)

        resource.update(mocked_profile, mocked_parameters, mocked_cookie).should == mocked_response
    end

    it "should perform update, utilizing rest get, with defaults" do
        resource = ProfilesResource.allocate
        mocked_client = double("client")
        mocked_profile = double("profile")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered

        mocked_new_resource_uri = double("new resource_uri")
        resource.should_receive(:add_parameters_to_uri).with(resource.instance_variable_get(:@resource_uri), nil).ordered.and_return(mocked_new_resource_uri)

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(mocked_new_resource_uri, mocked_profile).ordered.and_return(mocked_response)

        resource.update(mocked_profile).should == mocked_response
    end
end

describe ProfilesResource, "update_property" do
    it "should perform update_property, utilizing rest get with cookie" do
        resource = ProfilesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_profile = double("profile")
        mocked_parameters = double("parameters")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered

        mocked_new_resource_uri = double("new resource_uri")
        resource.should_receive(:add_parameters_to_uri).with("#{resource.instance_variable_get(:@resource_uri)}/a_property", mocked_parameters).ordered.and_return(mocked_new_resource_uri)

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(mocked_new_resource_uri, mocked_profile).ordered.and_return(mocked_response)

        resource.update_property("a_property", mocked_profile, mocked_parameters, mocked_cookie).should == mocked_response
    end

    it "should perform update_property, utilizing rest get, with defaults" do
        resource = ProfilesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered

        mocked_new_resource_uri = double("new resource_uri")
        resource.should_receive(:add_parameters_to_uri).with("#{resource.instance_variable_get(:@resource_uri)}/a_property", nil).ordered.and_return(mocked_new_resource_uri)

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(mocked_new_resource_uri, nil).ordered.and_return(mocked_response)

        resource.update_property("a_property").should == mocked_response
    end
end

