#include <iostream>
using namespace std;

// Print an array
void printArray(int arr[], int n)
{
    int i;
    for (i = 0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}

// Function to get the largest element from an array
int getMax(int arr[], int n)
{
    int max = arr[0];
    for (int i = 1; i < n; i++)
        if (arr[i] > max)
            max = arr[i];
    return max;
}

// Using counting sort to sort the elements in the basis of significant places
void countingSort(int arr[], int n, int place)
{
    const int max = 10;
    int output[n];
    int count[max];

    for (int i = 0; i < max; ++i)
        count[i] = 0;

    // Calculate count of elements
    for (int i = 0; i < n; i++)
        count[(arr[i] / place) % 10]++;

    // Calculate cumulative count
    for (int i = 1; i < max; i++)
        count[i] += count[i - 1];


    // Place the elements in sorted order
    for (int i = n - 1; i >= 0; i--)
    {
        output[count[(arr[i] / place) % 10] - 1] = arr[i];
        count[(arr[i] / place) % 10]--;
    }

    for (int i = 0; i < n; i++)
    {
        arr[i] = output[i];
        cout<<"Pass: ";
        printArray(arr, n);
    }
}

// Main function to implement radix sort
void radixsort(int arr[], int n)
{
    // Get maximum element
    int max = getMax(arr, n);
    cout<<"The max element is "<<max<<"\n";

    // Apply counting sort to sort elements based on place value.
    for (int place = 1; max / place > 0; place *= 10)
    {
        countingSort(arr, n, place);
    }
}

int main()
{
    int n;
    cout << "Enter number of elements to be sorted \n";
    cin >> n;
    int arr[n];
    for (int i = 0; i < n; i++)
    {
        cout << "Enter element "<<i+1<<"\n";
        cin >> arr[i];
    }

    radixsort(arr, n);
    cout << "Using Radix Sort, the sorted array is: \n";
    printArray(arr, n);
    return 0;
}
