class UserController < ApplicationController
	before_action :getUser, only:[:show]
  def getUser
  	@user = (params[:id]) ? User.find(params[:id]) : User.find(session[:user_id])
  end
  def show
  	if(@user.nil?) then redirect_to '/login' end
  	@teams = @user.teams
  	@projects = @user.projects
  	@tags = @user.tags
  	respond_to do |format|
  		format.json {
  		    render json: @user.to_json(:except => [:password_digest, :salt])
  		}
  		format.html{ render :show, layout: 'layouts/account' }
  	end
  end

  def all
  	respond_to do |format|
  		format.json {
  			render json: User.find(1).to_json(:except => [:password_digest, :salt],
  		    	:include => [:projects])
  		}
  		format.html{ redirect_to '/404.html' }
  	end
  end


  def register

  end

  def create
  	user = User.new(
	  					name: params['name'],
	  					surname: params['surname'],
	  					email: params['email'],
	  					password: params['password'],
	  					password_confirmation: params['repeat']
  					)
  	respond_to do |format|
  		if user.save
  			flash[:notice] = 'Successfully registered'
  			session[:user_id] = user.id
  			format.html{ redirect_to user}
  		else
  			flash[:notice] = 'Error while registration'
  			format.html{ redirect_to action: "register"}
  		end
  	end
  end


  def login
  end

  def auth
  	user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  	respond_to do |format|
  		if user
  			session[:user_id] = user.id
        if (!request.env['HTTP_REFERER'].nil?) then 
          redirect_to :back 
          return 
        end
  			format.html{ redirect_to user}
  		else
  			flash[:notice] = 'Invalid email/password'
  			format.html{ redirect_to action: "login"}
  		end
  	end
  end
end
