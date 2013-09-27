class PoemsController < ApplicationController
  before_action :set_poem, only: :show

  def index
    @poems = paginated(Poem.all)

    if !!params[:random]
      @poems = @poems.random_order
    end

    respond_with(@poems)
  end

  def show
    unless current_user.can_read?(poem)
      not_authorized
      return
    end

    respond_with @poem
  end

  private

  def set_poem
    @poem = Poem.find(params[:id])
  end
end
