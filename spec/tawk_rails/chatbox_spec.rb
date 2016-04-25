require 'spec_helper'
require_relative '../../lib/tawk_rails/chatbox'

describe TawkRails::Chatbox do

  before do
    TawkRails.configure do |config|
      config.id_site = 'replace-me-with-your-id_site'
    end
  end

  it "should return javascript correctly within params" do
    chatbox = TawkRails::Chatbox.new()
    expect(chatbox.render_script).to be_a_kind_of(String)
  end

  it "should return javascript correctly with params" do
    params = "Tawk_API.onStatusChange = function(status){console.log(status);}; Tawk_API.visitor = {name  : 'Name', email : 'email@email.com'};"
    chatbox = TawkRails::Chatbox.new(params)
    expect(chatbox.render_script).to be_a_kind_of(String)
    expect(chatbox.render_script).to include(params)
  end

  it "should return JS within version" do
    chatbox = TawkRails::Chatbox.new()
    expect(chatbox.render_script).to include('replace-me-with-your-id_site')
  end
end
