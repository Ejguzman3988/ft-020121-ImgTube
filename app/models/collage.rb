class Collage < ApplicationRecord
    has_many :images
    validates :name, presence: true
    accepts_nested_attributes_for :images, reject_if: proc { |attributes| attributes['title'].blank? || attributes['description'].blank? || attributes['image_url'].blank? }
end
