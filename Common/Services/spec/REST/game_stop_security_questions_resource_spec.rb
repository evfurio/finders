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

describe SecurityQuestionsResource, "initialize" do
   before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class RestService
            alias :initialize :test_initialize
        end
    end

    it "should initialize with config" do
        resource = SecurityQuestionsResource.allocate
        mocked_uri = double("resource_uri")
        mocked_config = double("config")

        resource.should_receive(:puts).with("dummy").ordered
        resource.should_receive(:puts).with("dummy config").ordered

        resource.send(:initialize, mocked_uri, mocked_config)
        resource.resource_uri.should == mocked_uri
        SecurityQuestionsResource.superclass.should == RestService
    end
end

describe SecurityQuestionsResource, "index" do
    it "should perform index, utilizing rest get with cookie" do
        resource = SecurityQuestionsResource.allocate
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
        resource = SecurityQuestionsResource.allocate
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

describe SecurityQuestionsResource, "update" do
    it "should perform update, utilizing rest get with cookie" do
        resource = SecurityQuestionsResource.allocate
        mocked_cookie = double("cookie")
        mocked_client = double("client")
        mocked_security_question = double("security_question")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(mocked_cookie).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with("#{resource.instance_variable_get(:@resource_uri)}/12345", mocked_security_question).ordered.and_return(mocked_response)

        resource.update(12345, mocked_security_question, mocked_cookie).should == mocked_response
    end

    it "should perform update, utilizing rest get, with defaults" do
        resource = SecurityQuestionsResource.allocate
        mocked_client = double("client")
        mocked_security_question = double("security_question")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://a_uri/service")

        resource.should_receive(:add_cookie_to_http_header).with(nil).ordered
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with("#{resource.instance_variable_get(:@resource_uri)}/12345", mocked_security_question).ordered.and_return(mocked_response)

        resource.update(12345, mocked_security_question).should == mocked_response
    end
end

