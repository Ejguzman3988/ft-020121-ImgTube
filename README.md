# ImgTube

Img Tube is a YouTube clone used to practice creating a rails project.
# Current Lecture
## Rails Authentication 
---
### Questions

- How are passwords stored?
    - bcrypt
        - https://github.com/bcrypt-ruby/bcrypt-ruby
    - has_secure_password
    - password_digest
        - https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html
        - https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html

- How does an application keep you logged in between requests?
    - sessions/cookies
    - What are http requests? Do they carry over information?
    - https://guides.rubyonrails.org/action_controller_overview.html#session

### Deliverables

- Scope Methods 
    - convert our class methods to scope methods
    - Difference between Query methods and Native Ruby Methods
    - Requirement 4
    - https://learning.flatironschool.com/courses/2612/pages/build-a-rails-app?module_item_id=148292
- Authentication
    - Create our User
    - Acknowledge some changes
        - Added a users controller
        - Added Views - Stubbed out Sign Up Form
    - Create signup/login forms
- Implement Omniauth w/ Google
    - https://github.com/zquestz/omniauth-google-oauth2
    - https://github.com/cookpad/omniauth-rails_csrf_protection
    - https://github.com/bkeepers/dotenv


- Implement many to many w/ comments*
    - Avi Video - Understanding join tables
    - https://www.youtube.com/watch?v=qfB1MRnzk4g
    * This video was available during Sinatra ^

* If we dont finish I will continue tomorrow.

# PAST LECTURES
## Rails Nested Resources - 4.20.21
---
### Deliverables

* Talk about requirements
    - Nested Resources vs Nested Forms
    - slide 
        - https://docs.google.com/presentation/d/1UdtQOFx4DAlUN0o1v0RDyydIJfSQdIN1WZJbrb9_kJQ/edit
    - requirements 
        - https://learning.flatironschool.com/courses/2612/pages/build-a-rails-app?module_item_id=148292
    - Get rid of dark mode LOL
        - d-flex for navbar 
* How do we add Nested Resource
    - config/routes.rb
* Implement usage
    - index
    - new
* Bonus resource
    - content tag
    - https://apidock.com/rails/ActionView/Helpers/TagHelper/content_tag

## Rails Refactoring w/ Layouts, Partials, and Helpers - 4.15.21
---
### **Deliverables**

- Quickly add a logo using draw.io
- Talk about some google sheets
    - Sheets for Nested Forms (In Progress)
    - Jenn's Sheet
- Our process
    - Start w/ partials. 
        - Use Partial to style our website (Nav Bar) - (Side Bar)
        - Use Partial to Get rid of duplicate forms 
        - Which forms?
            - New form - Image new
            - Edit Form - no edit for collage. Image edit
            
        - Take a look at collections rendering for partials.
    - Layouts
        - Use Partials to render different layouts
        - ImgTube vs ImgStudio
    - Helper for DateTime Object
        - Create a helper that will format our DateTime objects for created at
        - Difference in the index, and the show
- Scope
    - What its used for?
    - Refactor our class methods inside of our imaage controller

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
