# frozen_string_literal: true

# main class
class HomeController < ApplicationController
  before_action :require_params, only: [:show]

  def input; end

  def view
    @arr = params[:arr_a].split(' ').map(&:to_s)
    @n_num = params[:num].to_i

    @arr.each_with_index do |element, index|
      if @n_num == index
        @result = element
      elsif @n_num > index
        @result = 'index is too big'
      end
    end
  end

  def check
    if params[:arr_a].empty? && params[:num].empty?
      flash[:error] = 'Error: Empty params'
      redirect_to :root_path
    elsif params[:arr_a].match(/^-\d+$/)
      flash[:error] = 'Error: Input negative'
      redirect_to :root_path
    end
  end
end
