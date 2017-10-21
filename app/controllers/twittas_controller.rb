class TwittasController < ApplicationController
before_action :set_twitta, only: [:edit, :update, :destroy]  
  
  
  def index
     @twittas = Twittum.all
  end

  def new
    @twitta = Twittum.new
  end
  
  def create
  #  Twittum.create(twittas_params)
    @twitta = Twittum.new(twittas_params)
    if @twitta.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to twittas_path, notice: "つぶやきました！"
    else
      # 入力フォームを再描画します。
      render 'new'
　  end
  end
  
   def edit
    @twitta = Twittum.find(params[:id])
   end
  
  def update
    @twitta = Twittum.find(params[:id])
    if @twitta.update(twittas_params)
    redirect_to twittas_path, notice: "つぶやきを更新しました！"
    else
      render 'edit'
 　  end
  end
  
  def destroy
    @twitta = Twittum.find(params[:id])
    @twitta.destroy
     redirect_to twittas_path, notice: "つぶやきを削除しました！"

  end

  def confirm
    @twitta = Twittum.new(twittas_params)
    render :new if @twitta.invalid?
  end
  

 private
  def twittas_params
    params.require(:twittum).permit(:tweeter, :tweet)
  end
  
  def set_twitta
    @twitta = Twittum.find(params[:id])
  end



  
end
