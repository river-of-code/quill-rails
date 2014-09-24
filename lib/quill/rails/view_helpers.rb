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
        @input_id   = quill_sanitize_id(name || mod_options[:id])
        @value      = mod_options[:value].present? ? mod_options[:value] : ""
        ERB.new(File.read(File.join(source_root, 'template.html.erb'))).result(binding).html_safe
      end

      private
      def quill_sanitize_id(id)
        id.gsub(/\[(.+?)\]/,'_\1')
      end
    end
  end
end
