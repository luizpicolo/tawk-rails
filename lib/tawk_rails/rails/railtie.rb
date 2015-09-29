# coding: utf-8

require 'tawk_rails/rails/view_helpers'

module TawkRails::Rails
  # @private
  class Railtie < ::Rails::Railtie
    initializer "tawk_rails" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
