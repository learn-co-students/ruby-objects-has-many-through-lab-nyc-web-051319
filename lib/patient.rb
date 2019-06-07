require 'pry'

class Patient
  attr_accessor :name


  @@all = []

  def initialize(name)
    @name = name


    @@all << self
  end



  #instance
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

#HELP ON THIS METHOD
# The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
  def doctors
    Appointment.all.map do |appointment|
      appointment.patient = appointment.doctor
      #binding.pry
      # appointment.doctor = appointment.patient -- THIS DOESNT WORK
    end
  end

  #class

  def self.all
    @@all
  end

end
