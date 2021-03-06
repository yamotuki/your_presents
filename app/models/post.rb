class Post < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'

  validates_attachment_content_type :image, content_type: /\Aimage/
  validates_attachment_file_name :image, matches: [/png\z/, /PNG\z/, /jpe?g\z/, /JPE?G\z/]
end
