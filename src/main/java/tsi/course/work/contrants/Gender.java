package tsi.course.work.contrants;

public enum Gender {

    MALE("M"),
    FEMALE("F"),
    OTHER("O");

    private final String gender;

    Gender(final String gender) {
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }
}
