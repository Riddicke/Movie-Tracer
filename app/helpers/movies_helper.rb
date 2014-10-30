module MoviesHelper
	def format_total_gross(movie)
  end
  def image_for(movie)
  	if movie.image_file_name.blank?
  		image_tag 'placeholder.png'
  	else
  	   image_tag movie.image_file_name
  	end
  		
  	end
end
