  class Note
 
  
  attr_reader :child_name, :writer_name, :pot_num, :pot_length, :reason
  attr_writer :child_name, :writer_name, :pot_num, :pot_length, :reason
  def initialize(child_name, writer_name, reciever)
    @child_name = child_name.capitalize
    @writer_name = writer_name.capitalize
    @reciever = reciever.capitalize
    @symp = ["Monkey Hugepox", "Pink Eye", "Whooping Cough", "Ebolaids", "Swine Flu", "Strep Throat", "Food Poisining", "Flu... Just the flu....", "a Broken leg", "a Concussion", "Rat Flu", "a Head Ache", "Chicken Pox", "Dermatological Necrosis", "Jackson Syndrome", "Foreign Accent Syndrome", "a Paper Cut"]
    @pot_num = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    @pot_time = ["hours", "days", "months", "years", "decades"] 
    @symp1 = @symp.sample
    @pot_num1 = @pot_num.sample
    @pot_time1 = @pot_time.sample
  
  end
 
  def show
    return "Dear #{@reciever}, \n I am sorry to inform you that #{@child_name} will be missing #{@pot_num1} #{@pot_time1} of school due to #{@symp1}. #{@child_name}'s condition is worse than expected and needs to stay home and rest. #{@child_name} will heal faster with rest and medication. #{@child_name} should stay home to prevent this disease from spreading to other children. #{@child_name} should be back in approximately a couple of #{@pot_time1}. \n Best Regards, \n Dr. #{@writer_name}."
end
end
