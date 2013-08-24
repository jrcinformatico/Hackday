class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :registerable,	sirve para crear nuevos usuarios
  devise :database_authenticatable,:registerable,
         :rememberable, :trackable, :validatable,:timeoutable
  validates_presence_of :name
end
