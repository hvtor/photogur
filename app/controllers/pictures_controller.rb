class PicturesController < ApplicationController

	before_filter :load_pictures

	def index

	end

	def show
		@picture = Picture.find params[:id]
	end

	def edit
		@picture = Picture.find params[:id]
	end

	def new 
		@picture = Picture.new
	end



	def update
		@picture = Picture.find params[:id]
		@picture.url = params[:url]
		@picture.title = params[:title]
		@picture.artist = params[:artist]
		success = @picture.save

		if success
			redirect_to "/pictures/#{@picture.id}"
		end	


	#solution 1 
	# success = @picture.update_attributes(:title => params[:title], :artist => params [:artist], :url => params[:url])

	# #solution 2
	# @picture.update_attribute(:url, params[:url])
	# @picture.update_attribute(:title, params[:url])

	end

	def create 
		@picture = Picture.new
		@picture.url = params[:url]
		@picture.title = params[:title]
		@picture.artist = params[:artist]

		@picture = Picture.new(params[:picture])
		success = @picture.save

			if success
				redirect_to pictures_path
			else
				flash.now[:error] = "Could not save the picture."
				render :new
			end


		# render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	def load_pictures
		@pictures = Picture.all
		# @pictures = [
	 #   	  {
	 #        :title  => "The old church on the coast of White sea",
	 #        :artist => "Sergey Ershov",
	 #        :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	 #      },
	 #      {
	 #        :title  => "Sea Power",
	 #        :artist => "Stephen Scullion",
	 #        :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	 #      },
	 #      {
	 #        :title  => "Into the Poppies",
	 #        :artist => "John Wilhelm",
	 #        :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	 #      }
	 #    ]
   
	end	
end

