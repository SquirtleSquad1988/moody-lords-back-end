# frozen_string_literal: true

class BlogsController < OpenReadController
  before_action :set_blog, only: [:show, :update, :destroy]

  # GET /blogs
  def index
    @blogs = Blog.all.order(created_at: :desc)

    render json: @blogs
  end

  # GET /blogs/1
  def show
    @blog = Blog.find(params[:id])
    render json: @blog
  end

  # POST /blogs
  def create
    @blog = current_user.blogs.build(blog_params)

    if @blog.save
      render json: @blog, status: :created, location: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      render json: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy
    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = current_user.blogs.find(params[:id])
  end
  private :set_blog

  # Only allow a trusted parameter "white list" through.
  def blog_params
    params.require(:blog).permit(:title, :body)
  end
  private :blog_params
end
