package tsi.course.work.contrants.data;

public enum Services {

    POOL("POOL"),
    GOLF("GOLF"),
    SPA("SPA"),
    CLUB("CLUB"),
    KIDS_SECTION("KIDS_SECTION"),
    CAR_RENT("CAR_RENT");

    private final String services;

    Services(final String services) {
        this.services = services;
    }

    public String getServices() {
        return services;
    }
}
