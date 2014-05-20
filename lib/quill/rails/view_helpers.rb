require 'erb'

module Quill
  module Rails
    module ViewHelpers
      def source_root
        File.dirname(__FILE__) + '/templates'
      end
      # A link helper to create a 'default' Quill text edit
      #  
      def quill_editor(options={})
        ERB.new(File.read(File.join(source_root, 'template.html.erb'))).result(binding).html_safe
      end
    end
  end
end