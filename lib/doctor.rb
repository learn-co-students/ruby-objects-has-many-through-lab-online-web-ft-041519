class Doctor

  @@all =[]

  attr_accessor :appointments, :patients
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    @patients << appointment.patient
    appointment
  end

end
