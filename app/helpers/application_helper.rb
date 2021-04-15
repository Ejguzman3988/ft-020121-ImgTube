module ApplicationHelper
    def format_created_at(obj)
        date = obj.created_at.to_date

        date.strftime("%b %d, %Y")
    end
end
