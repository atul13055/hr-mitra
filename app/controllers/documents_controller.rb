class DocumentsController < ApplicationController
  before_action :set_document, only: [:edit, :update, :show, :destroy]
	def index
      @documents = Document.all
	end

	def new
	   @document = Document.new
	end
    
    def create
    	  @document = Document.new(document_params)
    	if @document.save
    	   redirect_to documents_path, notice: "Document has been created Successfully "
    	else
    	  render :new 
    	end	
    end 

    def edit
       # @document = Document.find(set_document)
    end
    def update
        #@document =Document.find(set_document)
        if @document.update(document_params)
            redirect_to documents_path, notice: "document has been update Successfully"
        else
          render 'edit'  
        end  
    end

    def show
       # @document = Document.find(set_document)
    end 

     def destroy
        #@document = Document.find(set_document)
        if @document.destroy
            redirect_to documents_path, notice: "document has been Delete Successfully"
        end
    end 

    private
    
    def document_params
    	params.require(:document).permit(:name, :doc_type, :employee_id, :image)
    end

    def set_document
    	@document = Document.find(params[:id])
    end
end
