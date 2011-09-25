class User < ActiveRecord::Base
attr_accessible :name, :email
email_regex= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :email ,  :present =>true,
					:format => {:with=> email_regex},
					:uniqueness =>{:case_sensitive=>false}

validates :name ,   :length => {:maximum=> 20}
end
