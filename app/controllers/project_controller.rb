class ProjectController < ApplicationController
  def show
  	@project = Project.find(params[:id])
  	if(@project.nil?) then
      redirect_to '/projects/'
      return
    end
  	@events = @project.events
  	@team = @project.team
  	@speaker = @team.speaker
  	@tags = @project.tags
  	if(!@project.plan.nil?) then
        @plan = @project.plan.split('\n')
    end
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
  	if (@user.nil?) then
      redirect_to '/login/'
      return
    end

  	respond_to do |format|
  		format.html{ render :create, layout: 'layouts/account'}
  	end
  end

  def edit
  	@project = Project.find(params[:id])
    if(@project.nil?) then
      redirect_to '/project/create'
      return
    end
  	@events = @project.events
  	@user = User.find(session[:user_id])
  	if (@user.nil?)	then
      redirect_to '/login/'
      return
    end
  	if (!@user.teams.include?(@project.team)) then
      redirect_to '/404.html'
      return
    end
    @events = @project.events
    @team = @project.team
    @speaker = @team.speaker
    @tags = @project.tags
  	respond_to do |format|
  		format.html{ render :edit, layout: 'layouts/account'}
  	end
  end
  def create

  end
  def event
    e = Event.new
    e.heading = params[:heading]
    e.description = params[:description]
    e.link = params[:link]
    e.created_at = params[:date]
    e.project_id = params[:project_id]
    render json:e.save
  end
  def update
    p = Project.find(params[:id])
    team = p.team
    team.speaker = User.find(params[:speaker])
    team.save
    p.description = params[:description]
    render json: p.save
  end
end
  # def add
  # 	respond_to do |format|
  # 		if project.save
  # 			flash[:notice] = 'Successfully created new project'
  # 			format.html{ redirect_to project}
  # 		else
  # 			flash[:notice] = 'Error!'
  # 			format.html{ redirect_to action: "create"}
  # 		end
  # 	end
  # end
