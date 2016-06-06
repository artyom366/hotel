package tsi.course.work.contrants.data;

public enum Gender {

    MALE("Male"),
    FEMALE("Female"),
    OTHER("Other");

    private final String gender;

    Gender(final String gender) {
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }
}
