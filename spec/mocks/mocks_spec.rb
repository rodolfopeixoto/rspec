require 'student'
require 'course'


describe 'Mocks' do
  it '#bar?' do
    student = Student.new
    course  = Course.new

    # allow(student) = Permite fazer o stub. Criar um fake
    # receive(:has_finished?) método
    # an_instance_of(Course) class (parâmetros)
    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)    
    
    #setup
    course_finished = student.has_finished?(course)
    
    # verify
    expect(student).to receive(:bar)

    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(1234)
    student.foo(1234)
  end

  it 'Repetição de métodos' do
    student = Student.new
    expect(student).to receive(:foo).with(1234).twice
    student.foo(1234)
    student.foo(1234)
  end

  it 'Retorno fake' do
    student = Student.new
    expect(student).to receive(:foo).with('1234').and_return(true) # with(1234).and_return(true) ele retorn o valor que você colocar no and_return
    student.foo('1234')
  end
end