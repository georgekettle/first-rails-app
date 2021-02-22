class PagesController < ApplicationController
  def about
  end

  def team
    @team = ['aunt shirley', 'damian', 'jasper the mascot']
    if params["query"]
      @team = @team.select { |team_member| team_member.include?(params["query"].downcase) }
    end
  end

  def home
  end
end
