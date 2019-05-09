class Patient

  @@all = []

  attr_accessor :appointments, :doctors
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments << appointment
    appointment
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient = self }
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }
  end


end
