require "webpay"

class PaymentController < ApplicationController
  protect_from_forgery except: "pay"

  def pay
    webpay = WebPay.new(ENV["webpay_secret_key"])

    if params[:customer_id] == ""
      customer = webpay.customer.create(card: params["webpay-token"])
      user = User.find(params[:current_user_id])
      user.save(customer_id: "customer.id")
      binding.pry
    else
      customer = webpay.customer.retrieve(params[:customer_id])
    end

    amount = 100

    webpay.charge.create(
      amount: amount,
      currency: "jpy",
      customer: customer.id
    )

    @teacher = Teacher.find(params[:teacher_id])
    if @teacher.price == nil
      @teacher.price = 0
      @teacher.price += amount
      @teacher.save
    else
      @teacher.price += amount
      @teacher.save
    end

    redirect_to :root
  end

end
