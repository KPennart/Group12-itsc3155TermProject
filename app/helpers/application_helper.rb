module ApplicationHelper
    def owner?(id)
        if current_user.id == id
            return true
        else
            return false
        end
    end
end
