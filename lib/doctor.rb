class Doctor

  @@all =[]

  attr_accessor :appointments, :patients
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    @appointments << Appointment.new()
  end

end
