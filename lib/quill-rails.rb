if defined? Rails && Rails.application.config.try(:assets).try(:compile)
  require 'quill/rails'
end