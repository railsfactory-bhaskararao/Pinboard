class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :role

  #after_create :assign_default_role


  # def assingn_default_role
  # 	self.role = Role.find_by_name('User')
  # end
end
