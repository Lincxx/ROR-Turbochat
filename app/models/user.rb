class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # allows us not to show us the current_user to be displayed
  scope :all_except, -> (user) { where.not(id: user) }
end
