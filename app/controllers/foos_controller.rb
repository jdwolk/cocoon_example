class FoosController < ApplicationController
  def new
    @foo = Foo.new.tap { |f| f.bars.build }
  end

  def create
    foo_with_bars = Foo.new(foo_params)
    if foo_with_bars.save
      flash[:info] = 'Created a Foo with Bars!'
    else
      flash[:alert] = 'Something went wrong'
    end
    redirect_to action: :new
  end

  private

  def foo_params
    params.require(:foo).permit(
      :name, :age, bars_attributes: [:id, :color, :_destroy]
    )
  end
end
