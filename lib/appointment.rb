class Appointment

  @@all = []

  attr_accessor :date, :patient, :doctor

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    #doctor.patients << patient
    #doctor.appointments << self
    @@all << self
  end

  def self.all
    @@all
  end


end
