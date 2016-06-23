class TeamController < ApplicationController
  def show
  	@team = Team.find(params[:id])
  	if(@team.nil?) then redirect_to '/teams/' end
  	@users = @team.users
  	@projects = @team.projects
  	@speaker = @team.speaker
  	@tags = @team.tags
  	respond_to do |format|
  		format.json {
  		    render json: @team.to_json()
  		}
  		format.html{ render :show, layout: 'layouts/account' }
  	end
  end

  def all
  	respond_to do |format|
  		format.json {
  			render json: Team.find(1).to_json()
  		}
  		format.html{ redirect_to '/team/1' }
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
