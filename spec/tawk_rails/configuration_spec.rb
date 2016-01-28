require 'spec_helper'
require_relative '../../lib/tawk_rails/configuration'

describe TawkRails::Configuration do

  before do
    TawkRails.configure do |config|
      config.id_site = 'replace-me-with-your-id_site'
    end
  end

  it "should return id_site correctly" do
    expect(TawkRails.configuration.id_site).to be_a_kind_of(String)
    expect(TawkRails.configuration.id_site).to eq 'replace-me-with-your-id_site'
  end

  it "should return version correctly" do
    expect(TawkRails.configuration.version).to be_a_kind_of(String)
    expect(TawkRails.configuration.version).to eq '0.0.2'
  end

end
