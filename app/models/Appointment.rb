class Appointment
  attr_reader :doctor, :patient, :location

  @@all = []

  def initialize(doctor, patient, location="Flatiron")
    @doctor = doctor
    @patient = patient
    @location = location
    @@all << self
  end

  # def doctor
  #
  # end
  #
  # def patient
  #
  # end

  def self.all
    @@all
  end

  def self.find_by_location(location)
    # [appointment, appointment, appointment]
    Appointment.all.select do |appointment|
      appointment.location == location
    end
  end

end
