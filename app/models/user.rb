class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
  has_many :books
  has_many :link_externos
  has_many :colega_tradutors
  has_many :conversa_passadas
  has_many :na_imprensas
  has_many :parceiros
end
