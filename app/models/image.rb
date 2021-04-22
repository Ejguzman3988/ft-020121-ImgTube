class Image < ApplicationRecord
    belongs_to :collage, optional: true # collage= COLLAGE OBJECT
    belongs_to :user
    
    
    has_many :comments
    has_many :users, through: :comments
    
    
    
    
    
    
    validates :title, presence: true, uniqueness: {scope: :image_url, message: 'and Image Url are not UNIQUE'}
    validates :description, presence: true
    validates :image_url, presence: true, image_url_format: { on: :create }
    
    scope :search, -> (query) { self.where("title LIKE ?", "%#{query}%") }
    scope :most_recent, -> { order created_at: :desc }
    
    def collage_attributes=(attributes)
        
        if !(attributes[:name].blank? || attributes[:description].blank?)
            self.collage = Collage.find_or_create_by(attributes)
        end
    end
    
    # accepts_nested_attributes_for :collage
    # collage_attributes=(attributes) 
    
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

    #scope :costs_more_than, ->(amount) { where("price > ?", amount) }

    # def self.search(query)
    #     self.where("title LIKE ?", "%#{query}%")
    # end
    # scope :most_recent, { self.order(created_at: :desc)}

    # def self.most_recent
    #     self.order(created_at: :desc)
    # end
end

