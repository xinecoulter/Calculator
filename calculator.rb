puts "Choose one of the following functions: Add, Subtract, Multiply, Divide, Area of a Circle, Circumference of a Circle, Quadratic Equation, or BMI."
function = gets.downcase.chomp

PI = 3.14159265359


#----------------------------GET NUMBERS-------------------------
#Ask user for two numbers
def two_numbers
  puts "Enter the first number."
  first_number = gets.chomp.to_f
  puts "Enter the second number."
  second_number = gets.chomp.to_f
  return first_number, second_number
end

#Ask user for radius
def get_radius
  puts "Enter the radius."
  radius = gets.chomp.to_f
  return radius
end

#Ask user for a, b, and c for quadratic equation
def quadratic_input
  puts "Enter 'a'."
  x = gets.chomp.to_f
  puts "Enter 'b'."
  y = gets.chomp.to_f
  puts "Enter 'c'."
  z = gets.chomp.to_f
  return x, y, z
end

#Ask user for weight and height
def bmi_values
  puts "Enter your weight(lbs)."
  m = gets.chomp.to_f
  puts "Enter your height(inches)."
  h = gets.chomp.to_f
  return m, h
end

#----------------------FUNCTIONS FOR CALCULATOR------------------
#Add function
def add(a, b)
  puts a + b
end

#Subtract function
def subtract(a, b)
  puts a - b
end

#Multiply function
def multiply(a, b)
  puts a * b
end

#Divide function
def divide(a, b)
  puts a / b
end

#Area of a circle function
def area_of_circle(r)
  puts PI * (r**2)
end

#Circumference of a circle function
def circumference_of_circle(r)
  puts PI * 2 * r
end

#Quadratic equation function
#(-b +/- sqroot((b^2) - 4ac)) / 2a
def quadratic_equation(a, b, c)
  first_part = -b / (2 * a)
  second_part = (((b**2) - (4 * a * c))**(0.5)) / (2 * a)
  first_answer = first_part + second_part
  second_answer = first_part - second_part
  puts "#{first_answer} or #{second_answer}."
end

#BMI function
def bmi_equation(mass, height)
  bmi = (mass / (height**2)) * 703
  if bmi < 18.5
    nih = "underweight"
  elsif bmi > 25
    nih = "overweight"
  else
    nih = "normal"
  end
  puts "Your BMI is #{bmi}. According to the National Institutes of Health, you are considered #{nih}."
end


#------------------------CASE FUNCTION--------------------------
case function
  when "add"
    x, y = two_numbers
    add(x, y)
  when "subtract"
    x, y = two_numbers
    subtract(x, y)
  when "multiply"
    x, y = two_numbers
    multiply(x, y)
  when "divide"
    x, y = two_numbers
    divide(x, y)
  when "area of a circle"
    r = get_radius
    area_of_circle(r)
  when "circumference of a circle"
    r = get_radius
    circumference_of_circle(r)
  when "quadratic equation"
    a, b, c = quadratic_input
    quadratic_equation(a, b, c)
  when "bmi"
    mass, height = bmi_values
    bmi_equation(mass, height)
  else
    puts "I don't understand you. You had ONE job to do."
end