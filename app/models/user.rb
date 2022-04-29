class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :budgets, dependent: :destroy
  has_many :quotation_requests, dependent: :destroy

  def user_fullname
    "#{firstname} #{lastname}"
  end
end
