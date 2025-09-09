void main(){
    int postalCode = 6721;
    String city = "Szeged";
    String street = "Gutenberg";
    int address = 11;
    String schoolName = "Vasvári Pál Informatikai És Gazdasági Technikum";

    int ninthGradeClassNumber = 4;
    int otherClassNumber = 3;

    double numberOfStudentsInClasses = 28;

    double numberOfStudents = ninthGradeClassNumber * numberOfStudentsInClasses + (4*otherClassNumber)*numberOfStudentsInClasses;

    print("$schoolName is at $street street $address, $city - $postalCode");
    print("${numberOfStudents.toInt()} goes into this school");
}