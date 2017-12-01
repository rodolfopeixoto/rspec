require 'student'
require 'course'

describe 'Stub' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new

    # allow(student) = Permite fazer o stub. Criar um fake
    # receive(:has_finished?) método
    # an_instance_of(Course) class (parâmetros)
    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)    
    
    course_finished = student.has_finished?(course)
    
    expect(course_finished).to be true
  end

  it 'Argumentos Dinâmicos' do
    student = Student.new
    
    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "hello"
      elsif arg == :hi
        "hi"
      end
    end

    expect(student.foo(:hello)).to eq("hello")
    expect(student.foo(:hi)).to eq("hi")

  end

  it 'Qualquer instância de classe' do
    student = Student.new
    other_student = Student.new
  
    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be true
    expect(other_student.bar).to be true

  end

  it 'Erros' do
    student = Student.new
    other_student = Student.new
  
    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect{student.bar}.to raise_error(RuntimeError)

  end
end
