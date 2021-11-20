import java.util.Arrays;

void setup() {

    // 1) declare an array vairable that can hold a reference to an array of float valyes
    // 2) create an array of float that has 10 cells; placee a refernce to this array in the variable that you declared
    float[] array = new float[10];

    // 1) fill that array with 10 random  values
    for (int i = 0; i < array.length; i++) {
        array[i] = random(69);
    }
    println(Arrays.toString(array));
}