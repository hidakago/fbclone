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

  def show
    @picture = Picture.find(params[:id])
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def editconfirm
    @picture = Picture.find(params[:id])
    @picture.comment = params[:picture][:comment]
    @picture.image = params[:picture][:image]
    render :edit if @picture.invalid?
  end

  def update
    @picture = Picture.find(params[:id])
    if params[:back]
      render :edit
    else
      if @picture.update(picture_params)
        redirect_to user_path(current_user.id), notice: "投稿の編集が完了しました！"
      else
        render :edit
      end
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to user_path(current_user.id), notice:"投稿を削除しました！"
  end

  private

  def picture_params
    params.require(:picture).permit(:comment, :image, :user_id, :image_cache)
  end
end
