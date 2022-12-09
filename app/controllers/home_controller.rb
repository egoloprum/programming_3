# frozen_string_literal: true

# class home
class HomeController < ApplicationController
  before_action :require_params, only: [:show]

  def index
  end

  def page
    too1 = params[:num1].to_i
    too2 = params[:num2].to_i
    @fun = calc_nod(too1, too2)
    @res = foo(too1, too2)
    @summ = foo2(too1, too2)
  end

  def calc_nod(num1, num2)
    it_res = []
    nex = 1
    until num1.zero? || num2.zero?
      nex = num1 - num2 * (num1 / num2)
      it_res << nex
      num1 = herwee(nex, num1, num2)
      num2 = herwee2(nex, num1, num2)
      num1 = herwee3(nex, num1, num2)
    end
    it_res
  end

  def foo(num1, num2)
    num1.to_i.gcd(num2)
  end

  def foo2(num1, num2)
    num1.to_i.lcm(num2)
  end

  def herwee(nex, num1, num2)
    num1 = num2 if nex < num2
    num1
  end

  def herwee2(nex, _num1, num2)
    num2 = nex if nex < num2
    num2
  end

  def herwee3(nex, num1, num2)
    num1 = nex if nex > num2
    num1
  end
  
  def check
    if (params[:num1].empty? ) && (params[:num2].empty? )
      flash[:error] = 'Error: Empty params'
      redirect_to :root_path
    elsif params[:num1].match(/^-\d+$/) && !params[:num2].match(/^-\d+$/)
      flash[:error] = 'Error: Input negative'
      redirect_to :root_path
    end
  end
end
