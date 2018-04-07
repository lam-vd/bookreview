class User < ApplicationRecord
    has_many :books
    has_many :reviews
    has_many :orders
    has_many :order_items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
