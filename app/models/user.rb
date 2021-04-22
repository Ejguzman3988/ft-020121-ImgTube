class User < ApplicationRecord
  has_secure_password
  
  has_many :created_images, foreign_key: "user_id", class_name: "Image"
  
  has_many :comments
  has_many :images, through: :comments

  

end
