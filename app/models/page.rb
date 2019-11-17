class Page < ApplicationRecord
  belongs_to :comic

  has_attached_file :image, styles: {
    square: '650x450#'
  }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
