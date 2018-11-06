require_relative '../config/environment.rb'

blair = Patient.new('blair')
garry = Patient.new('garry')
billy = Patient.new('billy')

kaeland = Doctor.new('kaeland', 'lastname')
ronnie = Doctor.new('ronnie', 'lastname')

appointment1 = Appointment.new(ronnie, blair)
appointmentx = Appointment.new(ronnie, blair)
appointmenty = Appointment.new(ronnie, blair)

appointment2 = Appointment.new(ronnie, garry)
appointment3 = Appointment.new(ronnie, billy)
appointment4 = Appointment.new(ronnie, billy, "The Lovelace Room")

binding.pry
