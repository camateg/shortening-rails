class LinksController < ApplicationController
	def new
		@link = Link.new
	end

	def follow
		@link = Link.find(params[:code])
	
		redirect_to @link.url
	end

	def qr
		@link = Link.find(params[:code])
	end

	def create
		@link = Link.new(params.require(:links).permit(:code, :url))
 
		@link.save
		redirect_to '/'
	end
	
	def index
		@links = Link.all	
		respond_to do |format|
		    format.html
		    format.any(:xml, :json) { render request.format.to_sym => @links }
		  end
	end

	def show
		@link = Link.find(params[:id])

		respond_to do |format|
                    format.html
                    format.any(:xml, :json) { render request.format.to_sym => @link }
                  end
	end

	def destroy
	  @link = Link.find(params[:id])
	  @link.destroy
	 
	  redirect_to links_path
	end
	private

end
