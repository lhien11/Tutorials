class DemoController < ApplicationController
	layout false

	def index 
		  @array = [1, 2, 3, 4, 5]
	end


  def hello
  	#render(:template =>'demo/index')
  	@array = [1, 2, 3, 4, 5]
  	@id = params['id']
  	@page = params[:page]
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end 

  def lynda
  	redirect_to("http://lynda.com")
  end

end
