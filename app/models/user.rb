class User < ActiveRecord::Base
  @phone_regex = /^\d{3}-\d{3}-\d{4}$/

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :phone, :googlecalid, :outlookid

  validates :first_name, :length => { :maximum => 40 }
  validates :last_name, :length => { :maximum => 40 }
  validates :phone, :format => { :with => @phone_regex }
end
