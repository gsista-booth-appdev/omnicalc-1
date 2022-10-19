class ApplicationController < ActionController::Base
  #Square Form
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  #Calculating Square of a Number
  def calculate_square
    #params = {"value"=>"25"}

    @num = params.fetch("value").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  #Square Root Form
  def square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb" })
  end

  #Calculate Square Root of a Number
  def calculate_square_root
    @root_num = params.fetch("user_number").to_i

    @square_root = @root_num ** (0.5)

    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end

  #Payment Calculator Form
  def payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  #Payment Calculation given APR, Number of years, and Principal
  def calculate_monthly_payment
  
    render({:template => "calculation_templates/payment_results.html.erb"})
  end

  # Random Number Form
  def random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  # Min, Max, and Random Number Between Range
  def calculate_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    @rand = rand(@min..@max)

    render({ :template => "calculation_templates/rand_results.html.erb" })
  end
end
