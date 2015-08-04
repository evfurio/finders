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

describe CommunicationPreferencesResource, "initialize" do
   before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class RestService
            alias :initialize :test_initialize
        end
    end

    it "should initialize with config" do
        resource = CommunicationPreferencesResource.allocate
        mocked_uri = double("resource_uri")
        mocked_config = double("config")

        resource.should_receive(:puts).with("dummy").ordered
        resource.should_receive(:puts).with("dummy config").ordered

        resource.send(:initialize, mocked_uri, mocked_config)
        resource.resource_uri.should == mocked_uri
        CommunicationPreferencesResource.superclass.should == RestService
    end
end

describe CommunicationPreferencesResource, "index" do
    it "should perform index, utilizing rest get with cookie" do
        resource = CommunicationPreferencesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(resource.instance_variable_get(:@resource_uri)).ordered.and_return(mocked_response)

        resource.index(mocked_cookie).should == mocked_response
    end

    it "should perform index, utilizing rest get, with defaults" do
        resource = CommunicationPreferencesResource.allocate
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(resource.instance_variable_get(:@resource_uri)).ordered.and_return(mocked_response)

        resource.index.should == mocked_response
    end
end

describe CommunicationPreferencesResource, "show" do
    it "should perform show, utilizing rest get with cookie" do
        resource = CommunicationPreferencesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("#{resource.instance_variable_get(:@resource_uri)}/12345").ordered.and_return(mocked_response)

        resource.show(12345, mocked_cookie).should == mocked_response
    end

    it "should perform show, utilizing rest get, with defaults" do
        resource = CommunicationPreferencesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("#{resource.instance_variable_get(:@resource_uri)}/12345").ordered.and_return(mocked_response)

        resource.show(12345).should == mocked_response
    end
end

describe CommunicationPreferencesResource, "update_many" do
    it "should perform update_many, utilizing rest put with cookie" do
        resource = CommunicationPreferencesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_communication_preference = double("communicaation_preference")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(resource.instance_variable_get(:@resource_uri), mocked_communication_preference).ordered.and_return(mocked_response)

        resource.update_many(mocked_communication_preference, mocked_cookie).should == mocked_response
    end

    it "should perform update_many, utilizing rest put, with defaults" do
        resource = CommunicationPreferencesResource.allocate
        mocked_client = double("client")
        mocked_communication_preference = double("communicaation_preference")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(resource.instance_variable_get(:@resource_uri), mocked_communication_preference).ordered.and_return(mocked_response)

        resource.update_many(mocked_communication_preference).should == mocked_response
    end
end

describe CommunicationPreferencesResource, "update_property" do
    it "should perform update_property, utilizing rest get with cookie" do
        resource = CommunicationPreferencesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with("#{resource.instance_variable_get(:@resource_uri)}/12345/a_property").ordered.and_return(mocked_response)

        resource.update_property(12345, "a_property", mocked_cookie).should == mocked_response
    end

    it "should perform update_property, utilizing rest get, with defaults" do
        resource = CommunicationPreferencesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with("#{resource.instance_variable_get(:@resource_uri)}/12345/a_property").ordered.and_return(mocked_response)

        resource.update_property(12345, "a_property").should == mocked_response
    end
end

describe CommunicationPreferencesResource, "get_by_channel" do
    it "should perform get_by_channel, utilizing rest get with cookie" do
        resource = CommunicationPreferencesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("#{resource.instance_variable_get(:@resource_uri)}/channel/a_channel").ordered.and_return(mocked_response)

        resource.get_by_channel("a_channel", mocked_cookie).should == mocked_response
    end

    it "should perform get_by_channel, utilizing rest get, with defaults" do
        resource = CommunicationPreferencesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("#{resource.instance_variable_get(:@resource_uri)}/channel/a_channel").ordered.and_return(mocked_response)

        resource.get_by_channel("a_channel").should == mocked_response
    end
end

describe CommunicationPreferencesResource, "get_by_type" do
    it "should perform get_by_type, utilizing rest get with cookie" do
        resource = CommunicationPreferencesResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("#{resource.instance_variable_get(:@resource_uri)}/type/a_type").ordered.and_return(mocked_response)

        resource.get_by_type("a_type", mocked_cookie).should == mocked_response
    end

    it "should perform get_by_type, utilizing rest get, with defaults" do
        resource = CommunicationPreferencesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("#{resource.instance_variable_get(:@resource_uri)}/type/a_type").ordered.and_return(mocked_response)

        resource.get_by_type("a_type").should == mocked_response
    end
end

