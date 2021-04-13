class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  # def new
  #   @document = Document.new
  #   @test = Document.find(1)
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
