matt_user = User.create(email: 'mb@gwu.edu', full_name: 'Matt Ben', password: 'password' )
teacher = Teacher.create(user: matt_user)

student1_user = User.create(email: 'amg@gwu.edu', full_name: 'Alex Guy', password: 'password' )
student = Student.create(user: student1_user)

parent1_user = User.create(email: 'pd@gwu.edu', full_name: 'Pamela Duke', password: 'password' )
parent = Parent.create(user: parent1_user)
