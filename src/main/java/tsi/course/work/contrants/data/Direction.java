package tsi.course.work.contrants.data;

public enum Direction {

    NORTH("NORTH"),
    SOUTH("SOUTH"),
    WEST("WEST"),
    EAST("EAST");

    private final String direction;

    Direction(final String direction) {
        this.direction = direction;
    }

    public String getDirection() {
        return direction;
    }
}
