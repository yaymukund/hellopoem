class LinesController < ApplicationController
  def create
    @line = Line.new(line_params)

    unless current_user.can_create?(@line)
      not_authorized
      return
    end

    @line.save
    respond_with(@line, location: poem_url(@line.poem))
  end

  private

  def line_params
    params.require(:line).permit(:text, :rank, :stanza_id)
  end
end
