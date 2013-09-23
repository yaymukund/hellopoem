class LinesController < ApplicationController
  def create
    @line = Line.new(line_params)

    unless can_create?(line)
      not_authorized
      return
    end

    if @line.save
      respond_with(@line)
    else
      respond_with(@line.errors)
    end
  end

  private

  def line_params
    params.require(:line).permit(:text, :rank, :stanza)
  end
end
