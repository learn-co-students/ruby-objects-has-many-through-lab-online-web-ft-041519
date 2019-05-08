class Doctor
  attr_accessor :name, :doctor, :patient, :appointment

  @@all = []

  def initialize (name)
      @name = name
      @@all << self
  end

  def new_appointment(name, date)
    appointment = Appointment.new(name, self, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
      self.appointments.collect {|appointment| appointment.patient}
  end

  def self.all
    @@all
  end
end
