require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
      #binding.pry
    end.uniq
  end

  def patients
    #  binding.pry
    appointments.map do |appointment|
      appointment.patient
    end.uniq
  end

end
