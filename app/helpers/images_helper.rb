module ImagesHelper
    def fields_for_helper(f)
        if @collage
            f.hidden_field :collage_id, value: @collage.id 
        else 
            render partial: "fields_for", locals: {f: f}  
        end 

    end
    
    def index_header
        if @collage 
            content_tag(:h1, "#{@collage.name} images")
        else 
            content_tag(:h1, "All Images")
        end 
    end



    def index_date_format(image)
        created = image.created_at.to_datetime
        now = DateTime.now
        seconds = ((now - created) * 24 * 60 * 60).to_i
        minutes = seconds/60
        hours = minutes/60
        days = hours/24
        months = days/30
        years = months/12


        if seconds < 60
            return "#{seconds} seconds ago."
        elsif minutes < 60
            return "#{minutes} minutes ago."    
        elsif hours < 24
            return "#{hours} hours ago."
        elsif days < 30
            return "#{days} days ago."
        elsif months < 12
            return "#{months} months ago."
        else
            return "#{years} years ago."
        end

        
    end
end
