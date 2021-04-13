class Image < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :image_url, message: 'and Image Url are not'}
    validates :description, presence: true
    validates :image_url, presence: true, image_url_format: {on: :create}
    # validates :views, numericality: { less_than: 10 }
    # validate :too_many_images, on: :create
    
    # custom validation called image url format
    # add validator that checks if the image_url ends with
    # .jpg
    # .jpeg
    # .png

    # def too_many_images
    #     if Image.all.length >= 10
    #         self.errors.add(:base, :invalid, message: "MY DATABASE IS FULL STOP CREATING IMAGES")
    #     end
    # end
    
    
    # TODO: Refactor to scope method
    def self.search(query)
        self.where("title LIKE ?", "%#{query}%")
    end

    def self.most_recent
        self.order(created_at: :desc)
    end

    def uploaded_at
        self.created_at.to_date
    end
end

