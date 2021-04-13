class ImageUrlFormatValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        #value = https://c.files.bbci.co.uk/12A9B/production/_111434467_gettyimages-1143489763.jpg

        if !is_correct?(value)
            record.errors.add attribute, message: "Format is not of png, jpg, jpeg, gif."
        end
    end

    def is_correct?(image_url)
        end_of_image = image_url.split('.').last
        image_formats = ['jpg', 'jpeg', 'png', 'gif']

        image_formats.include?(end_of_image)
        
        # case end_of_image
        # when 'jpg'
        #     true
        # when 'jpeg'
        #     true
        # when 'png'
        #     true
        # when 'gif'
        #     true
        # else
        #     false            
        # end
    end
end