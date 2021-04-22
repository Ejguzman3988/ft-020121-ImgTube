class CommentsController < ApplicationController
    
    def create
        @image = Image.find_by_id(params[:image_id])
        @comment = @image.comments.build(comment_params)
        if @comment.save
            flash[:message] = "YOU JUST COMMENTED"
            redirect_to image_path(@image)
        else
            flash[:message] = "BRO DIDNT WORK"
            redirect_to image_path(@image)
        end

    end

    private
    def comment_params
        params.require(:comment).permit(:content, :image_id, :user_id)
    end
end
