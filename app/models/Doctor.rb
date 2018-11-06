class Doctor
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name, speciality="doctoring")
    @first_name = first_name
    @last_name = last_name
    @speciality = speciality
    @@all << self
  end

  def appointment_count
    doctor_appointments =
      Appointment.all.select do |appointment|
          appointment.doctor == self
      end
    doctor_appointments.count
  end

  def patients
    # doctor_appointments =
    #   Appointment.all.select do |appointment|
    #      appointment.doctor == self
    #   end
    # doctor_appointments.map do |appointment|
    #   appointment.patient
    # end
    patients = []

    Appointment.all.each do |appointment|
      if appointment.doctor == self
        patients << appointment.patient
      end
    end
    patients
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.all
    @@all
  end

  def self.full_names
    Doctor.all.map do |doc|
      doc.full_name
    end
  end

  def create_appointment(patient)
    Appointment.new(self, patient)
  end

end
