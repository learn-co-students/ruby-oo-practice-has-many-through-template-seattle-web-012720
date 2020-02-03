class Teacher
  attr_reader :name, :subject
  attr_accessor :class_title
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def classes_taught
    Cohort.all.select { |cohort| cohort.teacher == self }
  end

  def class_titles_taught
    classes_taught.map { |entry| entry.class_title }
  end

  def subjects_taught
    classes_taught.map { |entry| entry.subject }
  end

  def students
    classes_taught.map { |entry| entry.students }
  end
end
