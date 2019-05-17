class Appointment

  attr_reader :doctor, :date, :patient

  @@all = []

  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
