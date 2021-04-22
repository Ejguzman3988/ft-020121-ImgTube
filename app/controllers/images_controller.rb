class ImagesController < ApplicationController
    before_action :redirect_if_not_logged_in, only: [:new, :create, :edit, :update]
    before_action :find_collage, only: [:index, :new, :create]

    def search
        @images = Image.search(params[:title])
        render :index
    end

    def most_recent
      
        @images = Image.most_recent
    end

    def index
        if @collage
            @images = @collage.images
        else
            @images = Image.all
        end
    end
    
    def show
        @image = Image.find_by(id: params[:id])
        @comments = @image.comments
        @comment = @image.comments.build(user_id: current_user.id)
        @image.update(views: @image.views+1) 

    end
    
    def new
        if @collage
            @image = @collage.images.build
        else
            @image = Image.new
            @image.build_collage
        end

        render layout: 'studio'
    end

    def create
        # if @collage
        #     @image = @collage.images.build(image_params)
        # else
        #     @image = Image.new(image_params)
            
        # end
        @image = Image.new(image_params)
        # What is happening on line 26?
        # creating new image based on params I set.
        # self.send("#{k}=", value)
        if @image.save
            if @collage
                redirect_to collage_images_path(@collage)
            else
                redirect_to image_path(@image)
            end
        else
            # implement some error handling
            # If it doesnt save
            # @image.errors
            # TODO: add some flash messaging
            
            render :new, layout: "studio"
        end
    end

    def edit
        @image = Image.find_by(id: params[:id] )
        render layout: 'studio'
    end

    def update
        @image = Image.find_by(id: params[:id])
        @image.update(image_params)

        if @image.valid?
            redirect_to image_path(@image)
        else
            #TODO: ERROR MESSAGES
            render :edit, layout: 'studio'
        end
    end

    def destroy
        #TODO: DRY THIS UP BRO
        @image = Image.find_by(id: params[:id])
        @image.destroy
        redirect_to images_path
    end

    private
    #Strong Params
    def image_params
        params.require(:image).permit(:title, :description, :image_url, :collage_id, collage_attributes: [:name, :description])
    end

    def find_collage
        @collage = Collage.find_by_id(params[:collage_id])
        #@collage = Collage.find(params[:collage_id]) # will error if id does not exist
    end
end
