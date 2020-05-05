class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # render json: @birds
    # create a view with json from RoR and extract that json from javascript in another html/javascript file
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end
end
