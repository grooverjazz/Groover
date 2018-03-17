class Article < ActiveRecord::Base
    dragonfly_accessor :cover

    validates_property :mime_type, of: :cover, in: %w(image/jpeg image/jpg image/png image/gif)
end
