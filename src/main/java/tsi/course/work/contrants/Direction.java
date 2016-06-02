package tsi.course.work.contrants;

public enum Direction {

    NORTH("N"),
    SOUTH("S"),
    WEST("W"),
    EAST("E");

    private final String direction;

    Direction(final String direction) {
        this.direction = direction;
    }

    public String getDirection() {
        return direction;
    }
}
