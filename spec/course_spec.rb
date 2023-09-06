require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  
  it 'exists' do
    course = Course.new("Calculus", 2)
    expect(course = Course.new("Calculus", 2)).to be_a(Course)
  end

  it 'has a name and capacity' do
    course = Course.new("Calculus", 2)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
  end

  it 'accesses students' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})  
    expect(student1).to be_a(Student)
    expect(student2).to be_a(Student)
  end

  it 'has students' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})  
    course.enroll(student1)  
    course.enroll(student2)  
    expect(course.students).to be_a(Array)
  end

  it 'is not full' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})  
    course.enroll(student1)  
    course.enroll(student2)  
    expect(course.full?).to eq(true)
  end



end
