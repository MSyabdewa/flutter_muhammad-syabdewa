class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course course) {
    daftarCourse.add(course);
    print('Course ditambahkan: ${course.judul}');
  }

  void hapusCourse(Course course) {
    daftarCourse.remove(course);
    print('Course dihapus: ${course.judul}');
  }

  void lihatDaftarCourse() {
    if (daftarCourse.isEmpty) {
      print('Belum ada course yang ditambahkan.');
    } else {
      print('Daftar Course:');
      for (var course in daftarCourse) {
        print('${course.judul}: ${course.deskripsi}');
      }
    }
  }
}

void main() {
  Course mathCourse =
      Course('Matematika', 'Pelajaran mengenai konsep dasar matematika');
  Course historyCourse = Course('Sejarah', 'Pelajaran mengenai sejarah dunia');

  Student student1 = Student('Udin', 'XII IPA 1');
  Student student2 = Student('Sarti', 'XII IPS 2');

  // Menambahkan course pada student
  student1.tambahCourse(mathCourse);
  student1.tambahCourse(historyCourse);

  student2.tambahCourse(historyCourse);

  // Melihat daftar course yang dimiliki oleh student
  student1.lihatDaftarCourse();
  student2.lihatDaftarCourse();

  // Menghapus course pada student
  student1.hapusCourse(historyCourse);

  // Melihat daftar course setelah penghapusan
  student1.lihatDaftarCourse();
}
