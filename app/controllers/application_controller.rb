require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      @team = Team.new("", "")
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new("", "")
      @team.name = params[:team][:name]
      @team.motto = params[:team][:motto]

      # @member1 = SuperHero.new(name: params[:member1_name], power: params[:member1_power], bio: params[:member1_bio])
      # @member2 = SuperHero.new(name: params[:member2_name], power: params[:member2_power], bio: params[:member2_bio])
      # @member3 = SuperHero.new(name: params[:member3_name], power: params[:member3_power], bio: params[:member3_bio])
      @member1 = SuperHero.new(params[:member1_name], params[:member1_power], params[:member1_bio])
      @member2 = SuperHero.new(params[:member2_name], params[:member2_power], params[:member2_bio])
      @member3 = SuperHero.new(params[:member3_name], params[:member3_power], params[:member3_bio])
      binding.pry
      erb :team
    end

end
