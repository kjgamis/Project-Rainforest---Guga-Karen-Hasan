class ReviewsController < ApplicationController


def create

  @review = Review.new

  @review.description = params[:review][:description]

  @review.save

  redirect_to product_url
  
end

def edit

end

def update

end

def delete

end

end
