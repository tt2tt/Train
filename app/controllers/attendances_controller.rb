class AttendancesController < ApplicationController
  def index
    if params[:j]
      partial = render_to_string(partial: 'attendances/attendance', locals: { } )
      render json: { html: partial }
    end
  end
end
