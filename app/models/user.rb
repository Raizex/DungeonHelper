class User < ActiveRecord::Base
	authenticates_with_sorcery!

	validates :password, length: { minimum: 3 }
	validates :password, confirmation: true
	validates :password_confirmation, presence: true

	validates :email, uniqueness: true
	validates :email, presence: true
	validates :user_name, uniqueness: true
	validates :user_name, presence: true

	has_many :characters, dependent: :destroy

end
