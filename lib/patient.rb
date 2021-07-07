
class Patient
  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name

    @@all << self

  end


  def self.all
    @@all
  end


  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
    ###given a date and a patient this creates appointment###
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient ||= self
    end
    ###Has many appointments specific to THIS patient###
  end

  def doctors
    appointments.map do |appt|
      appt.doctor
    end
    ###different doctors through appointments###
  end

end
