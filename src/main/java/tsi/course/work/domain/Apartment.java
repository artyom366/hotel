package tsi.course.work.domain;

import tsi.course.work.contrants.data.Direction;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "apartment")
public class Apartment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "number")
    private Integer number;

    @Column(name = "rooms")
    private Integer rooms;

    @Column(name = "is_balcony")
    private Boolean isBalcony;

    @Column(name = "is_bar")
    private Boolean isBar;

    @Column(name = "taken_from")
    private Date takenFrom;

    @Column(name = "taken_to")
    private Date takenTo;

    @Column(name = "direction")
    private Direction direction;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getRooms() {
        return rooms;
    }

    public void setRooms(Integer rooms) {
        this.rooms = rooms;
    }

    public Boolean getBalcony() {
        return isBalcony;
    }

    public void setBalcony(Boolean balcony) {
        isBalcony = balcony;
    }

    public Boolean getBar() {
        return isBar;
    }

    public void setBar(Boolean bar) {
        isBar = bar;
    }

    public Date getTakenFrom() {
        return takenFrom;
    }

    public void setTakenFrom(Date takenFrom) {
        this.takenFrom = takenFrom;
    }

    public Date getTakenTo() {
        return takenTo;
    }

    public void setTakenTo(Date takenTo) {
        this.takenTo = takenTo;
    }

    public Direction getDirection() {
        return direction;
    }

    public void setDirection(Direction direction) {
        this.direction = direction;
    }
}
