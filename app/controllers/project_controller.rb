class ProjectController < ApplicationController
  def show
  	@project = Project.find(params[:id])
  	if(@project.nil?) then redirect_to '/projects/' end
  	@events = @project.events
  	@team = @project.team
  	@speaker = @team.speaker
  	@tags = @project.tags
  	respond_to do |format|
  		format.json {
  		    render json: @project.to_json()
  		}
  		format.html{ render :show, layout: 'layouts/account' }
  	end
  end

  def all
  	respond_to do |format|
  		format.json {
  			render json: Project.find(1).to_json()
  		}
  		format.html{ redirect_to '/404.html' }
  	end
  end

  def create
  	@user = User.find(session[:user_id])
  	if (@user.nil?) then redirect_to '/login/' end 

  	respond_to do |format|
  		format.html{ render :edit, layout: 'layouts/account'}
  	end
  end

  def edit
  	@project = Project.find(params[:id])
  	@events = @project.events

  	@user = User.find(session[:user_id])
  	if (@user.nil?)	then redirect_to '/login/' end
  	if (!@user.teams.include?(@project.team)) then redirect_to '/404.html' end
  		
  	respond_to do |format|
  		format.html{ render :edit, layout: 'layouts/account'}
  	end
  end
end

  # def create
  # 	user = User.new(
	 #  					name: params['name'],
	 #  					surname: params['surname'],
	 #  					email: params['email'],
	 #  					password: params['password'],
	 #  					password_confirmation: params['repeat']
  # 					)
  # 	respond_to do |format|
  # 		if user.save
  # 			flash[:notice] = 'Successfully registered'
  # 			session[:user_id] = user.id
  # 			format.html{ redirect_to user}
  # 		else
  # 			flash[:notice] = 'Error while registration'
  # 			format.html{ redirect_to action: "register"}
  # 		end
  # 	end
  # end
