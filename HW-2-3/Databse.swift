import Foundation
class DataBase{
    var name:String
    var teachers:[Teacher] = [Teacher]()
    var students:[Student] = [Student]()
    init(name: String, teachers: [Teacher], students: [Student]){
        self.name = name
        self.teachers = teachers
        self.students = students
        
    }
    func printInfo() {
        for teacher in teachers {
            print("Препод - \(teacher.name) \(teacher.surename) - лет \(teacher.practice) ")
        }
        
        for student in students{
            print("Ученик(ца) - \(student.name) \(student.surename1) - курс \(student.year)\n бал \(student.score)")
        }
        print("полный состав преподов \(teachers.count)")
        print("полный состав учеников \(students.count)")
    }
    func addTeacher(teacher: Teacher) {
        teachers.append(teacher)
    }
    func returnStudent(name:String,surename:String, year:Int, score:Int) -> Student {
        var add = Student (name: name, surename1: surename, year: year, score: score)
        for i in students {
            if i.name == name && i.surename1 == surename && i.year == year && i.score == score {
                add = i
                break
            }
        }
        return add
    }
    func returnTeacher(name:String, surename:String, practice:Int) -> Teacher {
        var returningTeacher = Teacher(name: name, surename: surename, practice: practice)
        for i in teachers {
            if i.name == name && i.surename == surename && i.practice == practice {
                returningTeacher = i
            }
        }
        return returningTeacher
    }
        func addStudent(student: Student){
            students.append(student)
        }
    func removeTeacher(teacherremove: Teacher){
              for (index, item) in teachers.enumerated() {
                  if item.name == teacherremove.name && item.surename == teacherremove.surename {
                      teachers.remove(at: index)
                  }
              }
          }
          
          func removeStudent(studentremove: Student){
              for (index, item) in students.enumerated() {
                  if item.name == studentremove.name && item.surename1 == studentremove.surename1 && item.year == studentremove.year{
                      students.remove(at: index)
                      print("ликвидирован")
                  }
              }
          }
      }
