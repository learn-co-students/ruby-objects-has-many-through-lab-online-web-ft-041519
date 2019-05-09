class Patient

  @@all = []

  attr_accessor :appointments, :doctors
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    @appointments << Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |song| song.artist = self }
  end


end
