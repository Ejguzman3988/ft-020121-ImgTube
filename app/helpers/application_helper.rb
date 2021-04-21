module ApplicationHelper
    def format_created_at(obj)
        date = obj.created_at.to_date

        date.strftime("%b %d, %Y")
    end

    def current_user
        @user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
        !!current_user
    end
end
