var teacher1 = Teacher(name: "Илим", surename: "Расулов", practice: 10)
var jamal = Student(name: "Жамал", surename1: "Асанова", year: 3, score: 7)
var amal = Student(name: "Амаль", surename1: "Артуров", year: 3, score: 5)
var kamil = Student(name: "Камиль", surename1: "Бикилов", year: 3, score: 8)
var lina = Student(name: "Лина", surename1: "Лео", year: 3, score: 4)
var jasmin = Student(name: "Жасмин", surename1: "Карбозова", year: 3, score: 9)
var rinat = Student(name: "Ринат", surename1: "Нусипаев", year: 3, score: 10)

var database = DataBase(name: "MBPK-1-2022", teachers: [teacher1],
                        students: [jamal,amal,kamil,lina,jasmin,rinat])

database.removeStudent(studentremove: Student(name: "Лина", surename1: "Лео", year: 3, score: 4))
database.removeStudent(studentremove: lina)
database.printInfo()

database.addStudent(student: Student(name: "Ринат", surename1: "Нусипаев", year: 3, score: 10))
database.addStudent(student: rinat)
database.printInfo()


