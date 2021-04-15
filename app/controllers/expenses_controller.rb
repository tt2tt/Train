class ExpensesController < ApplicationController
  def index
    if params[:j]
      partial = render_to_string(partial: 'expenses/expenserequest', locals: { } )
      render json: { html: partial }
    end
  end
end
