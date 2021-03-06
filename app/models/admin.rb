class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  attr_accessor :role
  
  devise :database_authenticatable, :trackable, :validatable,
  		 :registerable,:recoverable, :rememberables
  
  validates :email, :presence => true, :uniqueness => true
  # attr_accessible :email, :password, :passsword_confirmation   
end
