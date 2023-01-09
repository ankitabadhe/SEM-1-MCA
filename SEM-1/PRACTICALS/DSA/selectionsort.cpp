#include <bits/stdc++.h>
using namespace std;

void printArray(int arr[], int n)
{
    int i;
    for (i=0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}

void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

void selectionSort(int arr[], int n)
{
    int i, j, min_idx;
    // One by one move boundary of unsorted subarray
    for (i = 0; i < n-1; i++)
    {
        // Find the minimum element in unsorted array
        min_idx = i;
        for (j = i+1; j < n; j++)
        {
            if (arr[j] < arr[min_idx])
                min_idx = j;
        }
        // Swap the found minimum element with the first element
        swap(arr[min_idx], arr[i]);
        cout << "Pass" <<i <<" : ";
        printArray(arr, n);

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

    selectionSort(arr, n);
    cout << "Using Selection Sort, the sorted array is: \n";
    printArray(arr, n);
    return 0;

}
