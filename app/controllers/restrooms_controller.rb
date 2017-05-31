class RestroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @restrooms = Restroom.all

    render("restrooms/index.html.erb")
  end

  def show
    @restroom = Restroom.find(params[:id])

    render("restrooms/show.html.erb")
  end

  def new
    @restroom = Restroom.new

    render("restrooms/new.html.erb")
  end

  def create
    @restroom = Restroom.new

    @restroom.location = params[:location]
    @restroom.standalone = params[:standalone]
    @restroom.name = params[:name]

    save_status = @restroom.save

    if save_status == true
      redirect_to("/restrooms/#{@restroom.id}", :notice => "Restroom created successfully.")
    else
      render("restrooms/new.html.erb")
    end
  end

  def edit
    @restroom = Restroom.find(params[:id])

    render("restrooms/edit.html.erb")
  end

  def update
    @restroom = Restroom.find(params[:id])

    @restroom.location = params[:location]
    @restroom.standalone = params[:standalone]
    @restroom.name = params[:name]

    save_status = @restroom.save

    if save_status == true
      redirect_to("/restrooms/#{@restroom.id}", :notice => "Restroom updated successfully.")
    else
      render("restrooms/edit.html.erb")
    end
  end

  def destroy
    @restroom = Restroom.find(params[:id])

    @restroom.destroy

    if URI(request.referer).path == "/restrooms/#{@restroom.id}"
      redirect_to("/", :notice => "Restroom deleted.")
    else
      redirect_to(:back, :notice => "Restroom deleted.")
    end
  end
end
