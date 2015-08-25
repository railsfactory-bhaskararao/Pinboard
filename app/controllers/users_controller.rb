class UsersController < ApplicationController
	before_filter :authenticate_user!, except: :show
	before_action :check_admin_role, only: [:index, :destroy]
	before_action :get_user_information, except: :index
	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	def update
		@user.update(user_params)
		# path here 
	end

	def destroy
		@user.destroy
		redirect_to users_path
	end

	private
		def get_user_information
			@user = User.find(params[:id])
		end

		def user_params
      params[:user]
    end

    def check_admin_role
    	unless current_user.role.name == 'Administrator'
    		redirect_to root_path, notice: "writer message here"
    	end
    end
end
