require 'erb'

module Quill
  module Rails
    module ViewHelpers
      def source_root
        File.dirname(__FILE__) + '/templates'
      end
      # A link helper to create a 'default' Quill text edit
      #  
      def quill_editor(name=nil, options={})
        mod_options = { name: 'quill-value', id: 'quill-value' }.merge options
        @input_name = (name || mod_options[:name])
        @input_id   = (name || mod_options[:id])   
        ERB.new(File.read(File.join(source_root, 'template.html.erb'))).result(binding).html_safe
      end
    end
  end
end