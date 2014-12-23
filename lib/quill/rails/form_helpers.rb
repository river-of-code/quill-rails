module Quill
  module Rails
    module FormHelpers
      def quill_editor(method, options={})
        name = @object_name + "[#{method}]"
        id = options[:id] || @object_name + "_#{method}"
        @template.quill_editor(name, {id: id, value: @object.send(method)})
      end
    end
  end
end
