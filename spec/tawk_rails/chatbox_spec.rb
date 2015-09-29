require 'spec_helper'
require_relative '../../lib/tawk_rails/chatbox'

describe TawkRails::Chatbox do

  before do
    TawkRails.configure do |config|
      config.id_site = 'replace-me-with-your-id_site'
    end
  end

  let(:chatbox) { TawkRails::Chatbox.new() }

  it "should return javascript correctly" do
    expect(chatbox.render_script).to be_a_kind_of(String)
    expect(chatbox.render_script).to include('replace-me-with-your-id_site')
  end
end
