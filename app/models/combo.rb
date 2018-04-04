class Combo < ActiveRecord::Base
    dragonfly_accessor :cover
    dragonfly_accessor :tile

    validates_property :mime_type, of: :cover, in: %w(image/jpeg image/jpg image/png image/gif)
    validates_property :mime_type, of: :tile, in: %w(image/jpeg image/jpg image/png image/gif)
end
