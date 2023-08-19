class StudentsController < ApplicationController
  # skip_before_actrion :require_me, only: [:new, :create]

  def index 
    @q = Student.ransack(params[:q])
    @students = @q.result(distinct: true).page(params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @students }
      format.json { render json: @students }
    end
  end

  def new 
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to students_path,notice: "Student Created successfully"
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id]) 
    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'Student Updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.delete
    redirect_to students_path,notice: 'Student Deleted successfully'
  end

  def update_student
 
    @student = Student.find(params[:id])
  end

  def updating_student_details

    @student = Student.find(params[:id]) 
    @student.update(first_name: params[:student][:first_name])
    redirect_to student_path(@student)
  end


  def greet
    @message = "Hello, World!"
  end

  def add 
    @add = 1000+2000
  end

  private

  def student_params
    params.require(:student).permit(:first_name,:last_name,:email)
  end

  def require_me
    puts "required"
  end
end



