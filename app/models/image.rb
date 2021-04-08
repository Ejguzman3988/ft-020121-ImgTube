class Image < ApplicationRecord

    def self.search(query)
        self.where("title like %?%", query)
    end

    def self.most_recent
        self.order(created_at: :desc)
    end

    def uploaded_at
        self.created_at.to_date
    end
end
