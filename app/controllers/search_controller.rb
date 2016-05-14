class SearchController < ApplicationController
  def index
    @str = params[:str]
    tags = params[:tag]
    @data = []
    if(!@str.nil?) then
      @data = (User.where("name LIKE '" + @str+ "'").as_json.map { |e| e.merge!(type: "person") })
      @data = @data | (Project.where("name LIKE '" + @str+ "'").as_json.map { |e| e.merge!(type: "project") })
      @data = @data | (Team.where("name LIKE  '" + @str+ "'").as_json.map { |e| e.merge!(type: "team") })
    end
    if(!tags.nil?) then
      tags = tags.split(',')
      tags.map { |e|
        @data |= Tag.where(tag: e).first.users
        @data |= Tag.where(tag: e).first.teams
        @data |= Tag.where(tag: e).first.projects

      }
    end
  	# User.where(tags.include?(tag))
  	# Project.where(tags.include?(tag))
  	# Team.where(tags.include?(tag))
    render :index, layout: "layouts/account"
  end
end
