class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(user_id: current_user.id).all
  end
  
  def show
    id = params[:id]
    @review = Review.find(id)
  end
  
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.book_id = Book.first.id
    if @review.save
      redirect_to @review, notice: 'レビューの作成に成功しました。'
    else
       render action: :new, notice: "sippai"
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end
  
  private
  
  def review_params
    params.require(:review).permit(:title, :context, :rating, :user_id)
  end
end
