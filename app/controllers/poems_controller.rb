class PoemsController < ApplicationController
  def index
    @poems = paginated(Poem.all)

    if !!params[:random]
      @poems = @poems.random_order
    end

    respond_with(@poems)
  end
end
