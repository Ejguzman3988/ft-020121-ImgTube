# ImgTube

Img Tube is a YouTube clone used to practice creating a rails project. 

## Rails Associations and Nested Forms - 4.14.21
---
### **Deliverables**
- Set up
    - Add another model
    - Collage Model
        - Name
        - Description
    - Quickly stub out associations
        - Collage has many Images
        - Image Belongs to a collage
        - Add collage_id to image
    - Create a Collage index, show, and create
- Understand nested forms
    - What happens during .new method?
    - Create a nested form for Image.
    - Allow a user to choose from a Playlist that already exists
    - Create a custom attribute writer
    - Create a nested form for playlist, add 3 images.
* Resources
- https://api.rubyonrails.org/v6.1.3.1/classes/ActiveRecord/NestedAttributes/ClassMethods.html
- https://apidock.com/rails/ActionView/Helpers/FormOptionsHelper/collection_select  





## Rails Validations - 4.13.21
---

### **Deliverables**
- Review:
    - routes
    - Quickly update search function
        - https://guides.rubyonrails.org/active_record_querying.html
        - https://www.sqlite.org/fts3.html



- **Main Focus for today**
- Where should we validate? Why?
    - model **
    - views
    - controller
- Use AR validations guide to add standard Validations
    - https://guides.rubyonrails.org/active_record_validations.html
- Display Error Messages using '.errors'
- Create custom validations

## Rails CRUD - 4.8.21

---
### **Deliverables**
* Add Nav Bar
* Add Titles to pages
* Make use of Forms
    - Look at the differences between form helpers
    - form_tag
    - form_for
    - form_with
* Add Full Crud for Image
* Search Bar
    - Talk about scope
* Manipulate DateTime Object

---
## Rails Models And Restful Routing - 4.7.21
---
### **Deliverables**
* Make a migration for image
    - rake db:create_migration
    - rails g migration
    - What columns do we need?
        - Title:string
        - created_at 
        - image_url
        - description
        - views, default: 0
        - likes, default: 0
        - dislikes, default: 0
        - user_id: Add this later <--
* Make a model file for image
* Add few Model Methods
    - #uploaded_at
    - .search method, looking at title
    - .most_recent
* Index route
    - Seed some images
* Make a show route
* Add link to go from index to show
* Add nav to test routes
* Add custom route 
