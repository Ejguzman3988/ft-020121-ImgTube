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

    end

    def create
        
    end

end
