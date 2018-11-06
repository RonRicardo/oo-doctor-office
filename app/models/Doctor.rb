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

  end

  def patients

  end

  def self.all
    @@all
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.full_names
    # ['kaeland lastname', 'ronnie lastname']
    Doctor.all.map do |doctor|
      doctor.full_name
    end
  end

  def create_appointment(patient)

  end

end
