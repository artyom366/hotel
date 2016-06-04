package tsi.course.work.domain.to;


import org.hibernate.validator.constraints.NotBlank;
import tsi.course.work.contrants.data.Gender;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

public class CustomerTO {

    @NotBlank
    @Size(min = 1, max = 50)
    private String name;

    @NotBlank
    @Size(min = 1, max = 50)
    private String surname;

    @Size(min = 1, max = 50)
    private String middleName;

    @NotNull
    private Date birthDate;

    @NotNull
    private Gender gender;

    @NotNull
    private Integer accompanied;

    @NotBlank
    private String identificationNumber;

    @Pattern(regexp=".+@.+\\..+")
    private String email;

    @NotBlank
    private String phone;

    @NotNull
    private Date checkIn;

    @NotNull
    private Date checkOut;

    private List<String> additionalServices;
    private List<String> specialTreatment;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Integer getAccompanied() {
        return accompanied;
    }

    public void setAccompanied(Integer accompanied) {
        this.accompanied = accompanied;
    }

    public String getIdentificationNumber() {
        return identificationNumber;
    }

    public void setIdentificationNumber(String identificationNumber) {
        this.identificationNumber = identificationNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    public List<String> getAdditionalServices() {
        return additionalServices;
    }

    public void setAdditionalServices(List<String> additionalServices) {
        this.additionalServices = additionalServices;
    }

    public List<String> getSpecialTreatment() {
        return specialTreatment;
    }

    public void setSpecialTreatment(List<String> specialTreatment) {
        this.specialTreatment = specialTreatment;
    }
}
