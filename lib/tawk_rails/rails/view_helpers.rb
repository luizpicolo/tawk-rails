# coding: utf-8

require 'active_support/core_ext/string/output_safety'
require 'active_support/core_ext/object/blank'

module TawkRails::Rails

  module ViewHelpers

    def tawk_init(params = nil)
      queue = TawkRails::Chatbox.new(params)
      queue.render_script.html_safe

    end
  end
end
