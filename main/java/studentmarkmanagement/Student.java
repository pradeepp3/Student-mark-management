package studentmarkmanagement;

public class Student {
    private String name;
    private String rollNo;
    private String dob;
    private String branch;
    private int subject1Mark;
    private int subject2Mark;
    private int subject3Mark;
    private int subject4Mark;
    private int total;

    // Constructor
    public Student(String name, String rollNo, String dob, String branch, int subject1Mark, int subject2Mark, int subject3Mark, int subject4Mark) {
        this.name = name;
        this.rollNo = rollNo;
        this.dob = dob;
        this.branch = branch;
        this.subject1Mark = subject1Mark;
        this.subject2Mark = subject2Mark;
        this.subject3Mark = subject3Mark;
        this.subject4Mark = subject4Mark;
        this.total = subject1Mark + subject2Mark + subject3Mark + subject4Mark;
    }

    // Getters
    public String getName() {
        return name;
    }

    public String getRollNo() {
        return rollNo;
    }

    public String getDob() {
        return dob;
    }

    public String getBranch() {
        return branch;
    }

    public int getSubject1Mark() {
        return subject1Mark;
    }

    public int getSubject2Mark() {
        return subject2Mark;
    }

    public int getSubject3Mark() {
        return subject3Mark;
    }

    public int getSubject4Mark() {
        return subject4Mark;
    }

    public int getTotal() {
        return total;
    }

    // Setters
    public void setName(String name) {
        this.name = name;
    }

    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public void setSubject1Mark(int subject1Mark) {
        this.subject1Mark = subject1Mark;
        updateTotal();
    }

    public void setSubject2Mark(int subject2Mark) {
        this.subject2Mark = subject2Mark;
        updateTotal();
    }

    public void setSubject3Mark(int subject3Mark) {
        this.subject3Mark = subject3Mark;
        updateTotal();
    }

    public void setSubject4Mark(int subject4Mark) {
        this.subject4Mark = subject4Mark;
        updateTotal();
    }

    // Method to update the total marks
    private void updateTotal() {
        this.total = subject1Mark + subject2Mark + subject3Mark + subject4Mark;
    }

    // Override toString() method
    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", rollNo='" + rollNo + '\'' +
                ", dob='" + dob + '\'' +
                ", branch='" + branch + '\'' +
                ", subject1Mark=" + subject1Mark +
                ", subject2Mark=" + subject2Mark +
                ", subject3Mark=" + subject3Mark +
                ", subject4Mark=" + subject4Mark +
                ", total=" + total +
                '}';
    }
}
