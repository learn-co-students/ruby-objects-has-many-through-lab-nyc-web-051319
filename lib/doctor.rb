require 'pry'

class Doctor
attr_accessor :name


@@all = []

  def initialize(name)
    @name = name


    @@all << self
  end


  #instance

  #confused on That Appointment should know that it belongs to the doctor
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    #binding.pry
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end

#confused on The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
  def patients
    Appointment.all.map do |appointment|
      #binding.pry
      appointment.patient
    end
  end


  #class

  def self.all
    @@all
  end





end
