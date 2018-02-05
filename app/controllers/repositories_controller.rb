class RepositoriesController < ApplicationController
  def index
    github = GithubService.new({'access_token' => session[:token]})
     @repos_array = github.get_repos
  end

  def create
    repo_service = GithubRepo.new({"name" => params[:name], "access_token" => session[:token]})
     repo_service.create_repo
    redirect_to '/'
  end
end
