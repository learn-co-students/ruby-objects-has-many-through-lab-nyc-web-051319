

class Doctor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self

  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
binding.pry
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
    ###Has many appointments, referenced in appointments###
  end
binding.pry
  def patients
    appointments.map do |appt|
      appt.patient
    end
    ###Has many patients, made through Appointments####
  end
end
