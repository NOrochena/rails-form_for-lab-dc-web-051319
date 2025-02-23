# frozen_string_literal: true

class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new; end

  def create
    @schoolclass = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end
end
