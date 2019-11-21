class DoseController < ApplicationController
  def new
    @dose = Dose.new
  end
  def create
    @dose = dose.new
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit.()
  end
end
