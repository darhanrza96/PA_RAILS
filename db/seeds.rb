# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

course = []
course = [:ID, :name, :prerequisites, :about]

subject = []
subject = [:ID, :name, :abbreviation, :segments]

instructor = []
instructor = [:ID, :first_name, :last_name, :email] c

ourse_file = File.read('course.json')
course_hash = JSON.parse(course_file)

subject_file = File.read('subject.json')
subject_hash = JSON.parse(subject_file)

instructor_file = File.read('instructor.json')
instructor_hash = JSON.parse(instructor_file)
