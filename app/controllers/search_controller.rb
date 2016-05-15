class SearchController < ApplicationController
  def index
    @str = params[:str]
    @tags = params[:tag]
    type = params[:type]
    @request = ""
    @data = []
    if(!@str.nil?) then
      @request = @str + " "
      if type=="person" || type.nil? then
        @data = (User.where("name LIKE '" + @str+ "'").as_json.map { |e| e.merge!(type: "person") })
      end
      if type=="project" || type.nil? then
        @data = @data | (Project.where("name LIKE '" + @str+ "'").as_json.map { |e| e.merge!(type: "project") })
      end
      if type=="team" || type.nil? then
        @data = @data | (Team.where("name LIKE  '" + @str+ "'").as_json.map { |e| e.merge!(type: "team") })
      end
    end
    if(!@tags.nil?) then
      @tags = @tags.split(',')
      @tags.map { |e|
        @request += "#" + e + " "
        if type=="person" || type.nil? then
          @data |= Tag.where(tag: e).first.users.as_json.map { |e| e.merge!(type: "person") }
        end
        if type=="project" || type.nil? then
          @data |= Tag.where(tag: e).first.teams.as_json.map { |e| e.merge!(type: "project") }
        end
        if type=="team" || type.nil? then
          @data |= Tag.where(tag: e).first.projects.as_json.map { |e| e.merge!(type: "team") }
        end
      }
    end
    respond_to do |format|
  		format.json {
  			render json: @data
  		}
  		format.html{ render :index, layout: "layouts/account" }
  	end
  end
end
