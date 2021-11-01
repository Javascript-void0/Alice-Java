class Circle {
    float x;
    float y;
    float r;

    Circle(float xVal, float yVal, float rad) {
        x = xVal;
        y = yVal;
        r = rad;
    }

    boolean isIntersecting(Circle other) {
        float d = dist(this.x, this.y, other.x, other.y);
        if (this.r + other.r >= d) {
            return true;
        } return false;
    }
}