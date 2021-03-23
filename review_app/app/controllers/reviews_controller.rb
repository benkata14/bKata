class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @products = Product.all
  end

  def show
    @review=Review.find(params[:id])
  end

  def new
  end

  def create
    @review=Review.new(review_params)
    @review.save
    redirect_to @review
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review
    else
    render 'edit'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end
  def search
    @reviews = if params[:term]
      Review.where('product_id LIKE ?', "%#{params[:term]}")
     else
      Review.all
    end
  end 
  private
    def review_params
        params.require(:review).permit(:author, :product_id, :rating, :content, :date)
    end

end
