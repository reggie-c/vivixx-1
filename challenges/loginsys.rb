class



$database = [{  name: 'William',
  company: 'Vivixx Academy',
  reason: 'Coding Bootcamp',
  job_position: 'Student/Trainee',
  contact_no: 9205107795 ,
  time_info: 0 #Timestamp
  }, {

  name: 'Dea',
  company: 'Vivixx Academy',
  reason:  'Coding Bootcamp',
  job_position: 'Student/Trainee',
  contact_no: 9176632401,
  time_info: 0 #Timestamp

  }, {
  name: 'Marc',
  company: 'Vivixx Academy',
  reason:  'Coding Bootcamp',
  job_position: 'Student/Trainee',
  contact_no: 9102345219,
  time_info: 0 #Timestamp

  }, {
  name: 'Reggie',
  company: 'Vivixx Academy',
  reason:  'Coding Bootcamp',
  job_position: 'Student/Trainee',
  contact_no: 9295320921,
  time_info: 0 #Timestamp
  }]



def banner
  puts %q[

  ]
end


def introScreen
  system"cls";
  banner
  puts " "*30;
  p "Welcome to 'VIVIXX CORPORATION'.";
end


def redirectToVerification

  p "Please Log-In:  "

  redirectToLogVerification = gets.chomp.strip.downcase;

  if redirectToLogVerification == "yes" || redirectToLogVerification == "y"

    logVerification();

  elsif redirectToLogVerification == "exit" || redirectToLogVerification == "e"

    system"cls";

    exit;

  elsif redirectToLogVerification == "ad.min"
    adminRights();
  else

    introScreen();

  end

end


def adminRights
  puts "Welcome Admin"
  puts "Info Selection:";
  puts "1 - Employee Information";
  puts "2 - Access Individual Profile";
  puts "3 - Exit Admin System";
  @adminp = gets.chomp.strip.to_i;


  case @dminp
  when 1
    adminInfo(); # ACCOUNT INFO FROM DATABASE
  when 2
    adminPass(); # BACKDOOR ACCESS
  when 3
    introScreen();
  else
    adminPrivileges();
  end
end

def adminInfo
  i = 0;
  while i < $database.length
    p "Employee Name #{i+1}: #{$database[i][:name]}"
    p "Position: $#{$database[i][:job_position]}"
    p " "*71;
    i += 1;
  end
  adminPrivileges();
end


def adminPass
  p "Enter password for Admin to access Employee Profile:"
  @backdoor = gets.chomp.strip.to_i;
  case @backdoor

    when 9205107795
      @index = 0;
      accountOverview();

    when 9176632401
      @index = 1;
      accountOverview();

    when 9102345219
      @index = 2;
      accountOverview();

    when 9295320921,
      @index = 3;
      accountOverview();

    when
      adminRights();

    else
      adminBackdoor();
    end

end



def executeProgram
  introScreen();
  redirectToVerification
  adminRights
  adminInfo
  adminPass
end


executeProgram();
