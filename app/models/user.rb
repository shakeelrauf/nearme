class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :products, dependent: :destroy
         has_one :shop, dependent: :destroy
	has_many :registeration_numbers
  
  def is_agent?
  	self.role == "agent"
  end
	rails_admin do
		create do 
			field :email
			field :password
		  field :role , :enum do
		    enum do
		      [['Agent','agent'],['User','user']]
		    end
		  end 
		end
		update do 
			field :email
			field :password
		  field :role , :enum do
		    enum do
		      [['Agent','agent'],['User','user']]
		    end
		  end 
		end
  end
end
