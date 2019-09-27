class Admin::ManagersController < ApplicationController
	before_action :authenticate_admin_manager!	
	def edit
		@manager = Manager.find(params[:id])
	end
	def update
		@manager = Manager.find(params[:id])
		@manager.update(manager_params)
		redirect_to admin_root_top_path
	end
	private
		def manager_params
			params.require(:manager).permit(:first_name,:last_name,:mail_address,:password)
		end
end
