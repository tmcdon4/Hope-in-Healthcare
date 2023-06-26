#1
class HopeInHealthCare
  #declaring variables 
  attr_accessor :public_awareness, :medical_research, :medical_treatment
  
  #initializing variables
  def initialize
    @public_awareness = 0
    @medical_research = 0
    @medical_treatment = 0
  end
  
  #method to increase public awareness
  def increase_public_awareness
    @public_awareness +=1
  end
  
  #method to increase medical research 
  def increase_medical_research
    @medical_research +=1
  end
  
  #method to increase medical treatment
  def increase_medical_treatment
    @medical_treatment +=1
  end
  
  #method to check progress of hope in healthcare
  def check_progress
    puts "Public Awareness: #{@public_awareness}"
    puts "Medical Reasearch: #{@medical_research}"
    puts "Medical Treatment: #{@medical_treatment}"
  end
end

#2
#creating object
hope = HopeInHealthCare.new 

#3
#method to increase public awareness
hope.increase_public_awareness

#4
#method to increase medical research
hope.increase_medical_research

#5
#method to increase medical treatment
hope.increase_medical_treatment

#6
#method to check progress of hope in healthcare
hope.check_progress

#7
#loop to continually increase public awareness
50.times do 
  hope.increase_public_awareness
end

#8
#loop to continually increase medical research
50.times do 
  hope.increase_medical_research
end

#9
#loop to continually increase medical treatment
50.times do 
  hope.increase_medical_treatment
end

#10
#method to check progress of hope in healthcare
hope.check_progress

#11
#calling increase_public_awareness on hope
hope.increase_public_awareness

#12
#calling increase_medical_research on hope
hope.increase_medical_research

#13
#calling increase_medical_treatment on hope
hope.increase_medical_treatment

#14
#method to check progress of hope in healthcare
hope.check_progress

#15
#block to continually increase public awareness
20.times do 
  hope.increase_public_awareness
end

#16
#block to continually increase medical research
20.times do 
  hope.increase_medical_research
end

#17
#block to continually increase medical treatment
20.times do 
  hope.increase_medical_treatment
end

#18
#method to check progress of hope in healthcare
hope.check_progress

#19
#conditional statement to increase public awareness
if hope.public_awareness < 10 
  hope.increase_public_awareness
end

#20
#conditional statement to increase medical research
if hope.medical_research < 10 
  hope.increase_medical_research
end

#21
#conditional statement to increase medical treatment 
if hope.medical_treatment < 10 
  hope.increase_medical_treatment
end

#22
#method to check progress of hope in healthcare
hope.check_progress

#23
#for loop to continually increase public awareness
for i in 1..20 do
  hope.increase_public_awareness
end

#24
#for loop to continually increase medical research
for i in 1..20 do
  hope.increase_medical_research
end

#25
#for loop to continually increase medical treatment
for i in 1..20 do
  hope.increase_medical_treatment
end

#26
#method to check progress of hope in healthcare
hope.check_progress

#27
#while loop to continually increase public awareness
i = 0
while i < 20 do
  hope.increase_public_awareness
  i += 1
end

#28
#while loop to continually increase medical research
i = 0
while i < 20 do
  hope.increase_medical_research
  i += 1
end

#29
#while loop to continually increase medical treatment
i = 0
while i < 20 do
  hope.increase_medical_treatment
  i += 1
end

#30
#method to check progress of hope in healthcare
hope.check_progress

#31
#method to increase public awareness
def increase_public_awareness(hope)
  hope.increase_public_awareness
end

#32
#calling increase_public_awareness method
increase_public_awareness(hope)

#33
#method to increase medical research
def increase_medical_research(hope)
  hope.increase_medical_research
end

#34
#calling increase_medical_research method
increase_medical_research(hope)

#35
#method to increase medical treatment
def increase_medical_treatment(hope)
  hope.increase_medical_treatment
end

#36
#calling increase_medical_treatment method
increase_medical_treatment(hope)

#37
#method to check progress of hope in healthcare
hope.check_progress

#38
#creating array of public awareness
public_awareness_array = []

#39
#loop to add one public awareness to array
20.times do 
  public_awareness_array << 1
end

#40
#iterating over public_awareness_array and increasing public awareness
public_awareness_array.each do |paw|
  hope.increase_public_awareness
end

#41
#creating array of medical research 
medical_research_array = []

#42
#loop to add one medical research to array
20.times do 
  medical_research_array << 1
end

#43
#iterating over medical_research_array and increasing medical research
medical_research_array.each do |mr|
  hope.increase_medical_research
end

#44
#creating array of medical treatment
medical_treatment_array = []

#45
#loop to add one medical treatment to array
20.times do 
  medical_treatment_array << 1
end

#46
#iterating over medical_treatment_array and increasing medical treatment
medical_treatment_array.each do |mt|
  hope.increase_medical_treatment
end

#47
#method to check progress of hope in healthcare
hope.check_progress

#48
#block to increase public awareness
[1,2,3,4,5].each do |paw|
  hope.increase_public_awareness
end

#49
#block to increase medical research
[1,2,3,4,5].each do |mr|
  hope.increase_medical_research
end

#50
#block to increase medical treatment
[1,2,3,4,5].each do |mt|
  hope.increase_medical_treatment
end

#51
#method to check progress of hope in healthcare
hope.check_progress

#52
#method to generate random number
def generate_random_number
  rand(1..20)
end

#53
#loop to continually increase public awareness
20.times do 
  hope.increase_public_awareness
end

#54
#using generate_random_number method to increase medical research
generate_random_number.times do 
  hope.increase_medical_research
end

#55
#using generate_random_number method to increase medical treatment
generate_random_number.times do 
  hope.increase_medical_treatment
end

#56
#method to check progress of hope in healthcare
hope.check_progress

#57
#method to calculate times public awareness will increase
def calculate_public_awareness_increase(amount)
  amount * 20
end

#58
#calling calculate_public_awareness_increase method to increase public awareness
calculate_public_awareness_increase(10).times do
  hope.increase_public_awareness
end

#59
#method to calculate times medical research will increase
def calculate_medical_research_increase(amount)
  amount * 10
end

#60
#calling calculate_medical_research_increase method to increase medical research
calculate_medical_research_increase(5).times do
  hope.increase_medical_research
end

#61
#method to calculate times medical treatment will increase
def calculate_medical_treatment_increase(amount)
  amount * 15
end

#62
#calling calculate_medical_treatment_increase method to increase medical treatment
calculate_medical_treatment_increase(2).times do
  hope.increase_medical_treatment
end

#63
#method to check progress of hope in healthcare
hope.check_progress

#64
#method to calculate total hope in healthcare
def calculate_hope_in_healthcare(public_awareness, medical_research, medical_treatment)
  public_awareness + medical_research + medical_treatment
end

#65
#calling calculate_hope_in_healthcare method
puts calculate_hope_in_healthcare(hope.public_awareness, hope.medical_research, hope.medical_treatment)

#66
#using calculate_hope_in_healthcare method to check if hope_in_healthcare is greater than 100
if calculate_hope_in_healthcare(hope.public_awareness, hope.medical_research, hope.medical_treatment) > 100
  puts "Hope in healthcare is greater than 100!"
end

#67
#method to reset hope in healthcare
def reset_hope_in_healthcare(hope)
  hope.public_awareness = 0
  hope.medical_research = 0
  hope.medical_treatment = 0
end

#68
#calling reset_hope_in_healthcare method
reset_hope_in_healthcare(hope)

#69
#method to check progress of hope in healthcare
hope.check_progress

#70
#creating array of donations
donations_array = [10, 20, 30, 40, 50]

#71
#iterating over donations_array to increase public awareness
donations_array.each do |donation|
  donation.times do
    hope.increase_public_awareness
  end
end

#72
#creating array of grants
grants_array = [50, 100, 150, 200, 250]

#73
#iterating over grants_array to increase medical research
grants_array.each do |grant|
  grant.times do
    hope.increase_medical_research
  end
end

#74
#creating array of treatments
treatments_array = [20, 40, 60, 80, 100]

#75
#iterating over treatments_array to increase medical treatment
treatments_array.each do |treatment|
  treatment.times do
    hope.increase_medical_treatment
  end
end

#76
#method to check progress of hope in healthcare
hope.check_progress

#77
#method to get total money donated
def get_total_money_donated(donations_array)
  donations_array.sum
end

#78
#calling get_total_money_donated method
puts get_total_money_donated(donations_array)

#79
#method to get total grants
def get_total_grants(grants_array)
  grants_array.sum
end

#80
#calling get_total_grants method
puts get_total_grants(grants_array)

#81
#method to get total treatments
def get_total_treatments(treatments_array)
  treatments_array.sum
end

#82
#calling get_total_treatments method
puts get_total_treatments(treatments_array)

#83
#method to check progress of hope in healthcare
hope.check_progress

#84
#using get_total_donations method to increase public awareness
get_total_money_donated(donations_array).times do
  hope.increase_public_awareness
end

#85
#using get_total_grants method to increase medical research
get_total_grants(grants_array).times do
  hope.increase_medical_research
end

#86
#using get_total_treatments method to increase medical treatment
get_total_treatments(treatments_array).times do
  hope.increase_medical_treatment
end

#87
#method to check progress of hope in healthcare
hope.check_progress

#88
#method to check if hope in healthcare is greater than 1000
def check_hope_in_healthcare_level(hope)
  if calculate_hope_in_healthcare(hope.public_awareness, hope.medical_research, hope.medical_treatment) > 1000
    puts "Hope in healthcare is greater than 1000!"
  end
end

#89
#calling check_hope_in_healthcare_level method
check_hope_in_healthcare_level(hope)

#90
#iterating over donations_array to increase public awareness
donations_array.each do |donation|
  donation.times do
    hope.increase_public_awareness
  end
end

#91
#iterating over grants_array to increase medical research
grants_array.each do |grant|
  grant.times do
    hope.increase_medical_research
  end
end

#92
#iterating over treatments_array to increase medical treatment
treatments_array.each do |treatment|
  treatment.times do
    hope.increase_medical_treatment
  end
end

#93
#method to check progress of hope in healthcare
hope.check_progress

#94
#calling check_hope_in_healthcare_level method to check if hope_in_healthcare is greater than 1000
check_hope_in_healthcare_level(hope)

#95
#method to calculate total money donated, including donations, grants, and treatments
def calculate_total_money_donated(donations_array, grants_array, treatments_array)
  donations_array.sum + grants_array.sum + treatments_array.sum
end

#96
#calling calculate_total_money_donated method
puts calculate_total_money_donated(donations_array, grants_array, treatments_array)

#97
#using calculate_total_money_donated method to increase public awareness
calculate_total_money_donated