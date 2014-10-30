it "has many reviews" do
  movie = Movie.new(movie_attributes)

  review1 = movie.reviews.new(review_attributes)
  review2 = movie.reviews.new(review_attributes)

  expect(movie.reviews).to include(review1)
  expect(movie.reviews).to include(review2)
end

it "deletes associated reviews" do
  movie = Movie.create(movie_attributes)

  movie.reviews.create(review_attributes)

  expect { 
    movie.destroy
  }.to change(Review, :count).by(-1)
end