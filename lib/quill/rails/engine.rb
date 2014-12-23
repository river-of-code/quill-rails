require 'quill/rails/view_helpers'
require 'quill/rails/form_helpers'
module Quill
  module Rails
    class Engine < ::Rails::Engine
      initializer 'quill-rails.view_helpers' do
        ActionView::Base.send :include, ViewHelpers
      end

      initializer 'quill-rails.form_helpers' do
        ActionView::Helpers::FormBuilder.send :include, FormHelpers
      end
    end
  end
end