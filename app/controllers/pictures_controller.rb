class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def newconfirm
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    render :new if @picture.invalid?
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if params[:back]
      render :new
    else
      if @picture.save
        redirect_to user_path(current_user.id), notice: "投稿を作成しました！"
      else
        render :new
      end
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:comment, :image, :user_id, :image_cache)
  end
end
