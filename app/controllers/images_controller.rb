class ImagesController < ApplicationController
    
    def most_recent
        @images = Image.most_recent
    end

    def index
        @images = Image.all
    end

    def show
        @image = Image.find_by(id: params[:id])
    end
    
    def new
        @image = Image.new
    end

    def create
        @image = Image.new(image_params)
        if @image.save
            redirect_to image_path(@image)
        else
            # implement some error handling
            # If it doesnt save
            # @image.errors
            # TODO: add some flash messaging
            render :new
        end
    end

    def edit
        @image = Image.find_by(id: params[:id] )
    end

    def update
        @image = Image.find_by(id: params[:id])
        @image.update(image_params)

        if @image.valid?
            redirect_to image_path(@image)
        else
            #TODO: ERROR MESSAGES
            render :edit
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
        params.require(:image).permit(:title, :description, :image_url)
    end
end
