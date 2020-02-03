class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end
  
<<<<<<< HEAD
  def activate
=======
  def activate_student
    binding.pry
>>>>>>> da222fba184d4b6c9e5f4cc53ca318ccb5e57991
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
<<<<<<< HEAD
    @student.save
    redirect_to student_path(@student)
=======
    binding.pry
    @student.save
>>>>>>> da222fba184d4b6c9e5f4cc53ca318ccb5e57991
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end