class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_it
    @to_square=params[:square]
    render("square_it")
  end

  def square_root
    @number=params[:id]
    render("square_root")
  end

  def random_min_max
        @minimo=params[:minimo]
        @maximo=params[:maximo]
        render("random_min_max")
  end

  def payment
        @irr=params[:interest_rate].to_f
        @years=params[:years].to_i
        @principal=params[:principal].to_f

        new_interest_rate = @irr/1200
        months=@years*12
        numerator=new_interest_rate*@principal
        denominator=1-(1+new_interest_rate)**(-months)

        @monthly_payment = numerator/denominator

        render("payment")
  end

end
