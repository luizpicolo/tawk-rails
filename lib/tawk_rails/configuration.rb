require_relative 'version'

module TawkRails
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :id_site
    attr_reader :version

    def initialize
      @version = VERSION
      @id_site = 'replace-me-with-id_site'
    end
  end
end
