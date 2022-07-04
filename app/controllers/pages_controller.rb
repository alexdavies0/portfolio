class PagesController < ApplicationController
  def about
  end

  def projects
  end

  def home
    @projects = Project.all
  end
end
