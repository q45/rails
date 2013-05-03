class Contact < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :phone, presence: true, length: {maximum: 10}, {with: VALID_EMAIL_REGEX}
end
