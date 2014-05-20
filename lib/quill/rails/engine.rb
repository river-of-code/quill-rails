require 'quill/rails/view_helpers'
module Quill
  module Rails
    class Engine < ::Rails::Engine
      initializer 'quill-rails.view_helpers' do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end