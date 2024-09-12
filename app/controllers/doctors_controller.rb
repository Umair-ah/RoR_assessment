class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[edit update]

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doc_exist = Doctor.find_by(email: @doctor.email)

    unless @doc_exist
      if @doctor.save
        redirect_to doctors_path, notice: 'Doctor created successfully.'
      else
        render :new
      end
    else
      redirect_to new_doctor_path, alert: "Doctor Email already exists!"
    end

  end

  def edit; end
  
  def update
    if @doctor.update!(doctor_params)
      redirect_to doctors_path, notice: "Doctor #{@doctor.email} Password changed!"
    end
  end
  

  private

  def doctor_params
    params.require(:doctor).permit(:email, :password)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

end