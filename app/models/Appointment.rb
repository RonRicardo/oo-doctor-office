class Appointment
  attr_reader :doctor, :patient
  
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
    Appointment.all.select do |app|
      app.location == location
    end
  end

end
