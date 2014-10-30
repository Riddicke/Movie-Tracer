class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy

	validates :title, :variety, :rating, :total_gross, presence: true
	validates :image_file_name, allow_blank: true,
	        format: {
	        	with:  /\w+\.(gif|jpg|png)\z/i,
	        	message:"must reference a GIF, JPG, or PNG image"
	        }

	def self.upcoming
		where('released_on >= ?', Time.now).order(:released_on)
    end
    def free?
    price.blank? || price.zero?
    end
end  
  