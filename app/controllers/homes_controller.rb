class HomesController < ApplicationController
  def home
    @matter = current_user.matter
    @organization = current_user.organization
    @fix_request = FixRequest.new
  end

  def create
    @fix_request = current_user.fix_requests.build(fix_request_params)
    @fix_request.save
    flash[:notice] = "依頼が完了しました。"
    redirect_to home_path
  end

  private

  def fix_request_params
    params.require(:fix_request).permit(:target, :content)
  end
end
