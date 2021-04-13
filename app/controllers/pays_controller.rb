class PaysController < ApplicationController
  def index
    @current_attendance =  current_user.contractor_attendances.last
    @current_pay = current_user.pays.last
    @current_deduction = current_user.deductions.last
  end

  def information
    year = params[:year]
    month = params[:month]

    @current_attendance = current_user.contractor_attendances.where(year: year).where(month: month)[0]
    @current_pay = current_user.pays.where(year: year).where(month: month)[0]
    @current_deduction = current_user.deductions.where(year: year).where(month: month)[0]
    # binding.pry

    partial = render_to_string(partial: 'pays/information', locals: { current_attendance: @current_attendance, current_pay: @current_pay, current_deduction: @current_deduction })
    render json: { html: partial }
  end
end
