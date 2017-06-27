
$Pres_List = [
  { cand: 'kenneth', nvotes: 0},
  { cand: 'mika', nvotes: 0},
  { cand: 'reggie', nvotes: 0},
  { cand: 'trevor', nvotes: 0}
]

$tovote == "yes";
$result = [];
$y = 'exit'

def header
  system 'cls'
  puts '='*80
  puts " "
  puts "BOTO MO...BUKAS MO ELECTION 2017".center(80, " ")
  puts " "
  puts '='*80
end

def candlist
  puts "-"*30
  puts "PRESIDENTIAL CANDIDATES"
  puts '-'*30
    $Pres_List.each_with_index do |info, x|
    puts "#{x+1}. #{$Pres_List[x][:cand]}"
  end
  puts "-"*30
end

def cname
  puts "Candidate's Name:"
  $name=gets.chomp.strip
  votenow($name)
  puts "Enter to continue"
  $y = gets.chomp
end

def votenow(r)
  r = r.downcase
m = 0
$Pres_List.each do |x|
    if x[:cand] == r
      x[:nvotes] +=1
      m += 1
    end
  end
end

while $y != 'exit'
  header
  candlist
  cname
  system "cls"
end

def vwin
  $Pres_List.each do |x|
    $result.push(x[:nvotes].to_s + " " + x[:cand]);
  end
  $result = $result.to_a.sort.reverse;
  $result = $result[0].split(" ");
  $result = $result[1];
  return $result;

end

def vresult
  puts "=".center(71, '=');
  puts " "*71;
  puts "Results 2017:" + " "*37;
  puts " "*71;
  puts "Kenneth with #{$Pres_List[0][:nvotes]} votes.";
  puts "Mika with #{$Pres_List[1][:nvotes]} votes.";
  puts "Reggie with #{$Pres_List[2][:nvotes]} votes.";
  puts "Trevor with #{$Pres_List[3][:nvotes]} votes.";
  puts " "*71;
  puts "The winner of the 2017 Presidential Election: " +vwin;
  puts " "*71;
  puts "=".center(71, '=');
end

header
candlist
cname
vresult
