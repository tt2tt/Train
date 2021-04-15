class HomesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @matter = current_user.matter
    @organization = current_user.organization
    @fix_request = FixRequest.new

    if params[:j]
      partial = render_to_string(partial: 'homes/home', locals: { matter: @matter, organization: @organization, fix_request: @fix_request })
      render json: { html: partial }
    end
  end

  def create
    @fix_request = current_user.fix_requests.build(target: params[:target], content: params[:content])
    @fix_request.save

    @matter = current_user.matter
    @organization = current_user.organization
    @fix_request = FixRequest.new
    
    partial = render_to_string(partial: 'homes/home', locals: { matter: @matter, organization: @organization, fix_request: @fix_request })
    render json: { html: partial }
  end

  private

  def fix_request_params
    params.require(:fix_request).permit(:target, :content)
  end
end
