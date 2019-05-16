class Appointment
  attr_reader :doctor, :patient, :date

  @@all = []
  def initialize(doctor, patient, date)
    @doctor = doctor
    @patient = patient
    @date = date
#ORDER IS IMPORTANT, need to always call these methods in this order
    @@all << self

  end

  def self.all
    @@all
  end

end
