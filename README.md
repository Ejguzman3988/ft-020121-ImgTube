# ImgTube

Img Tube is a YouTube clone used to practice creating a rails project. 

## Rails CRUD
4.8.21
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
## Rails Models And Restful Routing
4.7.21
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
