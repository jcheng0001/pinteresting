class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :pins

	validates :name, presence: true

	validates :password, :presence => true,
                     :on => :create,
                     :format => {:with => /\A.*(?=.{8,})(?=.*\d)(?=.*[a-z]).*\Z/ }
	


end
