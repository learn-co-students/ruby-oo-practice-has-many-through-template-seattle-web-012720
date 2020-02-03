class Student
  attr_reader :grade, :name
  attr_accessor :class_rank, :subject
  @@all = []

  def initialize(name, grade, class_rank)
    @name = name
    @grade = grade
    @class_rank = class_rank
    @@all << self
  end

  def self.all
    @@all
  end

  def add_class(class_title)
    x = Cohort.all.find { |entry| entry.class_title == class_title }
    x.students << self
  end

  def classes
    Cohort.all.select { |entry| entry.students.include? self }
  end

  def class_titles
    titles = classes.map { |entry| entry.class_title }
    titles.uniq
  end

  def teachers
    classes.each { |entry| entry.teacher }
  end

  def subjects_studied
    subjects = classes.map { |entry| entry.subject }
    subjects.uniq
  end
end
