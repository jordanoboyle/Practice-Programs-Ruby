# create a military clock conversion function


s = "12:01:00PM" # ==> 12:01:00
s2 = "11:00:01AM" #==> 11:00:01
s3 = "03:01:00PM" # ==> 15:01:00
s4 = "12:00:01AM" # ==> 00:00:01
s5 = "06:40:03AM" # ==> 06:40:03

def convertMilitary(time_string)
  time = time_string
  if time_string[-2..-1] == "AM"
    time = time_string.slice!(0..(time_string.length - 3))
    if time[0..1] == "12"
      time = "00" + time.slice(2..time.length)
    end
  elsif time_string[-2..-1] == "PM"
    time = time_string.slice!(0..(time_string.length - 3))
    if time[0..1] != "12"
      time = (time.slice(0..1).to_i + 12).to_s + time.slice(2..time.length)
    end
  end
  p time

end

convertMilitary(s)
convertMilitary(s2)
convertMilitary(s3)
convertMilitary(s4)
convertMilitary(s5)