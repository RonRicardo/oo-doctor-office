class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def my_appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.my_appointments.map do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end

  def self.find_by_name(patient_search)
    found_patient = self.all.find do |patient|
      patient.name == patient_search
  end
    if found_patient
      return found_patient
    else
      "Cannot find patient by that name"
    end
  end
end
