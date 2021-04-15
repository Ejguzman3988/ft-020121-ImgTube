class ImagesController < ApplicationController
    

    def search
        @images = Image.search(params[:title])
        render :index
    end

    def most_recent
        @images = Image.most_recent
    end

    def index
        @images = Image.all
    end
    
    def show
        @image = Image.find_by(id: params[:id])
        @image.update(views: @image.views+1) 
    end
    
    def new
        @image = Image.new
        @image.build_collage
        render layout: 'studio'
    end

    def create
        @image = Image.new(image_params)
        # What is happening on line 26?
        # creating new image based on params I set.
        # self.send("#{k}=", value)
        if @image.save
            redirect_to image_path(@image)
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
end
