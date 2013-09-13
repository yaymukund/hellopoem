class PoemsController < ApplicationController
  def index
    @poems = paginated(Poem.all)

    if !!params[:random]
      @poems = @poems.random_order
    end

    render json: @poems
  end
end
