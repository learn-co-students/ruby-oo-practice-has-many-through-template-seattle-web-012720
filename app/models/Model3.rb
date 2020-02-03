class Cohort
  attr_accessor :teacher, :students, :class_title, :subject
  @@all = []

  def initialize(class_title, subject, teacher)
    @class_title = class_title
    @subject = subject
    @teacher = teacher
    @students = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_student(student, class_title)
    x = self.all.find { |entry| entry.class_title == class_title }
    x.students.push(student)
  end
end
