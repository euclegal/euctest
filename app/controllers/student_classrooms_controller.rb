class StudentClassroomsController < ApplicationController
  before_action :set_student_classroom, only: [:show, :edit, :update, :destroy]

  # GET /student_classrooms
  # GET /student_classrooms.json
  def index
    @student_classrooms = StudentClassroom.all
  end

  # GET /student_classrooms/1
  # GET /student_classrooms/1.json
  def show
  end

  # GET /student_classrooms/new
  def new
    @student_classroom = StudentClassroom.new
  end

  # GET /student_classrooms/1/edit
  def edit
  end

  # POST /student_classrooms
  # POST /student_classrooms.json
  def create
    @student_classroom = StudentClassroom.new(student_classroom_params)

    respond_to do |format|
      if @student_classroom.save
        format.html { redirect_to @student_classroom, notice: 'Student classroom was successfully created.' }
        format.json { render :show, status: :created, location: @student_classroom }
      else
        format.html { render :new }
        format.json { render json: @student_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_classrooms/1
  # PATCH/PUT /student_classrooms/1.json
  def update
    respond_to do |format|
      if @student_classroom.update(student_classroom_params)
        format.html { redirect_to @student_classroom, notice: 'Student classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_classroom }
      else
        format.html { render :edit }
        format.json { render json: @student_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_classrooms/1
  # DELETE /student_classrooms/1.json
  def destroy
    @student_classroom.destroy
    respond_to do |format|
      format.html { redirect_to student_classrooms_url, notice: 'Student classroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_classroom
      @student_classroom = StudentClassroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_classroom_params
      params.require(:student_classroom).permit(:student_id, :classroom_id)
    end
end
