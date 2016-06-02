package tsi.course.work.domain;

import org.hibernate.annotations.CreationTimestamp;
import tsi.course.work.contrants.Gender;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "customer")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "birth_date")
    private Date birthDate;

    @Column(name = "gender")
    private Gender gender;

    @Column(name = "company")
    private Integer company;

    @Column(name = "identification_number")
    private String identificationNumber;

    @CreationTimestamp
    @Column(name = "created")
    private Date date;
}
