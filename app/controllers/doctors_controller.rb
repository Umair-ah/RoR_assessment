class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[edit update]
  before_action :authenticate_receptionist, except: %i[patients_index]

  def patients_index
    if current_user&.doctor?
      @docs_appointments = current_user.appointments.order(created_at: :desc)
  
      @patients_per_day = current_user.appointments
        .joins(:patient)
        .group("DATE(appointments.apptmt_date_time)")  
        .count  
  
      @chart_data = {
        labels: @patients_per_day.keys.map { |date| date.strftime("%B %d, %Y") },  
        datasets: [{
          label: 'Patients Registered per Day',
          backgroundColor: 'rgba(75, 192, 192, 0.2)',  
          borderColor: 'rgba(75, 192, 192, 1)',       
          borderWidth: 1,
          data: @patients_per_day.values  
        }]
      }
  
      @chart_options = {
        scales: {
          y: {
            beginAtZero: true,
            title: {
              display: true,
              text: 'Number of Patients'
            }
          },
          x: {
            title: {
              display: true,
              text: 'Days'
            }
          }
        }
      }
    else
      redirect_to root_path, alert: "You are not authorized as a doctor!"
    end
  end

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