void setup() {
    size(700,700);
    String[] names = new String[4];
    names[0] = "Zuzu";
    names[1] = "Tazmond";
    names[2] = "Helga";
    names[3] = "Snaefellsnes";
    for (int i = 0; i < names.length; i++) {
        println(names[i]);
    }

    float[] nums = new float[2];
    nums[0] = PI;
    nums[1] = (float) Math.E;
    for (int i = 0; i < nums.length; i++) {
        println(nums[i]);
    }

    float[] xVals = new float[10];
    for (int i = 0; i < xVals.length; i++) {
        xVals[i] = random(width);
    }
    for (int j = 0; j < xVals.length; j++) {
        fill(0,0,200);
        eclipse(xVals[j], height/2, 20, 20);
    }
}

void draw() {

}