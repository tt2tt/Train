class DocumentsController < ApplicationController
  def index
    @documents = Document.all

    if params[:j]
      partial = render_to_string(partial: 'documents/document', locals: { } )
      render json: { html: partial }
    end
  end

  # def new
  #   @document = Document.new
  # end
  #
  # def create
  #   @document = Document.new(document_params)
  #   @document.save
  #   redirect_to root_path
  # end

  private

  def document_params
    params.permit(:name, :image)
  end
end
