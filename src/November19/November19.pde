float calculteMaximum(float[] arr) {
    float max = arr[0];
    for (int i = 0; i < arr.length; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

void setup() {
    float[] numbers = new float[20];
    for (int i = 0; i < numbers.length; i++) {
        numbers[i] = random(69);
    }
    for (int j = 0; j < numbers.length; j++) {
        print(numbers[j] + " ");
    }
    println();
    float max = calculteMaximum(numbers);
    println(max);
}