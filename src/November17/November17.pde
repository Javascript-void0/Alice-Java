int calculateMin(int[] a) {
    int min = a[0];
    for (int i = 1; i < a.length; i++) {
        if (a[i] < min) {
            min = a[i];
        }
    }
    return min;
}

int calculateMax(int[] a) {
    int max = a[0];
    for (int i = 1; i < a.length; i++) {
        if (a[i] > max) {
            max = a[i];
        }
    }
    return max;
}

int calculateSum(int[] a) {
    int sum = 0;
    for (int i = 0; i < a.length; i++) {
        sum += a[i];
    }
    return sum;
}

void setup() {
    int[] array = {10, 9, 8, 4, -2, -4, 100};
    int min = calculateMin(array);
    println(min);
    int max = calculateMax(array);
    println(max);
    int sum = calculateSum(array);
    println(sum);
}