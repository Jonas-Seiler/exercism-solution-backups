class Lasagna
{
    // TODO: define the 'ExpectedMinutesInOven()' method
    public int ExpectedMinutesInOven() {
        return 40;
    }

    // TODO: define the 'RemainingMinutesInOven()' method
    public int RemainingMinutesInOven(int elapsed) {
        return ExpectedMinutesInOven() - elapsed;
    }

    const int MINUTES_PER_LAYER = 2;
    // TODO: define the 'PreparationTimeInMinutes()' method
    public int PreparationTimeInMinutes(int layers) {
        return MINUTES_PER_LAYER * layers;
    }

    // TODO: define the 'ElapsedTimeInMinutes()' method
    public int ElapsedTimeInMinutes(int layers, int elapsed) {
        return PreparationTimeInMinutes(layers) + elapsed;
    }
}
