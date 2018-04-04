class Association < ApplicationRecord
	dragonfly_accessor :banner

	validates_property :mime_type, of: :banner, in: %w(image/jpeg image/jpg image/png image/gif)
end
