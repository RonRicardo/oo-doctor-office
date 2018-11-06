class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    my_doctors = self.appointments.collect do |appointment|
      appointment.doctor.full_name
    end
    my_doctors.uniq
  end

  # def name
  #   @name
  # end

  def self.all
    @@all
  end

  def self.find_by_name(patient_name)
    Patient.all.find do |patient|
      patient.name == patient_name
    end
  end
end
