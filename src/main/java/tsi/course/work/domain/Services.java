package tsi.course.work.domain;


import javax.persistence.*;

@Entity
@Table(name = "services")
public class Services {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "service")
    private tsi.course.work.contrants.data.Services service;

    public Services() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public tsi.course.work.contrants.data.Services getService() {
        return service;
    }

    public void setService(tsi.course.work.contrants.data.Services service) {
        this.service = service;
    }
}
