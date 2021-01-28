require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        team = params[:team]
        @team = Team.new(team[:name],team[:motto])
        params[:team][:member].each do |details|
            Member.new(details[:name], details[:power], details[:bio])
        end
        @members = Member.all
        erb :team
    end


end
