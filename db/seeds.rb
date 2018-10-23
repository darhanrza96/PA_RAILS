# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

courses = []
columns = [:code, :name, :description]


JSON.parse(File.open('db/course.json').read).each do |row|
  courses << Course.new(code: row['code'], name: row['name'], description: row['description'])
end

Course.import columns, courses, validate: false


subjects = []
columns1 = [:name, :abbreviation, :subject_id]


JSON.parse(File.open('db/subject.json').read).each do |row|
  subjects << Subject.new(name: row['name'], abbreviation: row['abbreviation'], subject_id: row['id'])
end

Subject.import columns1, subjects, validate: false


instructors = []
columns2 = [:first, :middle, :last ,:email]


JSON.parse(File.open('db/instructor.json').read).each do |row|
  instructors << Instructor.new(first: row['first'], middle: row['middle'], last: row['last'], email: row['email'])
end

Instructor.import columns2, instructors, validate: false
