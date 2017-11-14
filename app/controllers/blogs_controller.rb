class BlogsController < ApplicationController

def index #一覧画面
	@blogs = Blog.all
end

def new # 注文を受ける人
	@blog = Blog.new
end

	def create #たい焼きを作る人
		@blog = Blog.new(blog_params)
		@blog.save
		redirect_to '/blogs' #商品を渡すのをお願いする
	end

	private # ↓全てが影響される
		def blog_params #ストロングパラメータ
			params.require(:blog).permit(:title, :body, :author)
		end

end
