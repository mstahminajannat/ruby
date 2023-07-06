# Уникальный скрипт на языке Ruby

# Определение класса "Персона"
class Person
  attr_accessor :name, :age

  # Конструктор класса
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Метод для проверки, является ли персона совершеннолетней
  def adult?
    @age >= 18
  end

  # Метод для вывода информации о персоне
  def display_info
    puts "Имя: #{@name}"
    puts "Возраст: #{@age}"
    puts "Совершеннолетний: #{adult?}"
  end
end

# Создание списка персон
people = []
people << Person.new("Алексей", 25)
people << Person.new("Екатерина", 17)
people << Person.new("Иван", 42)
people << Person.new("Мария", 30)

# Вывод информации о каждой персоне
people.each do |person|
  person.display_info
  puts "-" * 20
end

# Фильтрация списка персон по совершеннолетию
adults = people.select { |person| person.adult? }

# Вывод информации о совершеннолетних персонах
puts "Совершеннолетние персоны:"
adults.each do |person|
  person.display_info
  puts "-" * 20
end

# Подсчет среднего возраста всех персон
total_age = people.reduce(0) { |sum, person| sum + person.age }
average_age = total_age / people.length.to_f

puts "Средний возраст: #{average_age}"
