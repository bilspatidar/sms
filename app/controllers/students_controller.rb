class StudentsController < ApplicationController

def index
    #current for get all of user we dnt use model we user table
@students = current_user.students.all    
end

def new 
    @student = Student.new
end

def create
    @student = Student.new(student_params)
    @student.user_id = current_user.id
    if @student.save
        redirect_to students_path
    else
       
        render :new, status: :unprocessable_entity 
        
    end
end
def destroy
      @student = Student.find_by(params[:id])
      @student.destroy
    redirect_to students_path
end


def enroll
    @student_id = params[:id]
    @enroll = Enroll.new 
    @cources  = current_user.cources.all
end

def addenroll
end
private
def student_params
    params.permit(:fullname,:email,:dob,:mobile)
end

def enroll_param
params.permit(:student_id,:cource_id)
end
end
