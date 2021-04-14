class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :matter
  has_one :organization
  has_many :contractor_attendances
  has_many :pays
  has_many :deductions
  has_many :fix_requests
end
