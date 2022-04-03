class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end
  
  def create
    # 1&2データを受け取り新規登録するためのインスタンス生成
    list = List.new(list_params)
    # 3データをデータベースに保存するためのsaveメソッドを実行
    list.save
    # 4トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end