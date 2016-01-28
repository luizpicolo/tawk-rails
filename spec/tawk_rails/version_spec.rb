require 'spec_helper'
require_relative '../../lib/tawk_rails/version'

describe TawkRails do

  it "should return version correctly" do
    expect(TawkRails::VERSION).to be_a_kind_of(String)
    expect(TawkRails::VERSION).to eq '0.0.2'
  end
end
