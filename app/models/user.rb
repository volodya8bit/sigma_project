class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorites
  extend Enumerize
  enumerize :role, in: {user: 1, admin: 2}, default: :user

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }
end
