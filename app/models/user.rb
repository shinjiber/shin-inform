class User < ApplicationRecord
    validates :content, length: {maximum: 255}
    
    def self.find_or_create_from_auth(auth)
            provider = auth[:provider]
            uid = auth[:uid]
            user_name = auth[:info][:name]
            image_url = auth[:info][:image]
            followers_count = auth[:extra][:raw_info][:followers_count]
        
        self.find_or_create_by(provider: provider, uid: uid) do |user|
            user.user_name = user_name
            user.image_url = auth[:extra][:raw_info][:profile_image_url]
            user.followers_count = auth[:extra][:raw_info][:followers_count]
        end
    end
    
    has_many :infos
    
end
