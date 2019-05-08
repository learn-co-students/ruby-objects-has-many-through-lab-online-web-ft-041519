require 'pry'
class Appointment
  attr_accessor :name, :doctor, :patient, :appointment

  @@all = []
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
