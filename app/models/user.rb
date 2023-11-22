class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :reservations
         has_many :reviews
         has_many :books
        #  validates :first_name, presence: true
        #  validates :last_name, presence: true
        #  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
        #  validates :password, presence: true, length: { minimum: 6 }
        #  validates :adress, presence: true
        #  validates :birthdate, presence: true
        #  validates :payment_info, presence: true

end
