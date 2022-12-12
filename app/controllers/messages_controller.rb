class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @current_user = current_user
    @message = @current_user.messages.create(content: "Мої витрати:<br /><br /> #{expenses}", room_id: params[:room_id])
  end

  private

  def expenses
    expenses = current_user.expenses.map {|x| "Назва: #{x.name},<br /> Вартість: #{x.sum},<br /> Категорія: #{x.category.title},<br /> Опис: #{x.description}<br /><br />"}
    expenses.join("\n")
  end

  def msg_params
    params.require(:message).permit(:content)
  end
end
