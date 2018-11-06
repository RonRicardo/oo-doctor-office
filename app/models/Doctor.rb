class Doctor
  attr_reader :name

  @@all = []

  def initialize(first_name, last_name, speciality="doctoring")
    @first_name = first_name
    @last_name = last_name
    @speciality = speciality
  end

  def appointment_count

  end

  def patients

  end

  def self.all

  end

  def self.full_names

  end
  
  def create_appointment(patient)
    
  end

end
