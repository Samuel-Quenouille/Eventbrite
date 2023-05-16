class EventsController < ApplicationController
  def create
    @event = Event.new(# 'user_id' => User.all.sample.id,
                      'title' => params[:title],
                      'description' => params[:description],
                      'start_date' => params[:start_date],
                      'duration' => params[:duration],
                      'price' => params[:price],                   
                      'location' => params[:location]) # avec xxx qui sont les données obtenues à partir du formulaire
    if @event.save # essaie de sauvegarder en base @event
        redirect_to root_path(success: true)# si ça marche, il redirige vers la page d'index du site
    else
        render :new # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end

  def index
    @events = Event.all
  end
end
