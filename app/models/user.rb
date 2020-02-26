class User < ApplicationRecord
  enum status: { regular: 0, manager: 1, admin: 2 }
  has_many :meals, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
