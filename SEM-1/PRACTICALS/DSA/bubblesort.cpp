#include <iostream>
using namespace std;

void printArray(int arr[], int size)
{
    int i;
    for (i=0; i < size; i++)
        cout << arr[i] << " ";
    cout << endl;
}

void bubble_sort( int A[ ], int n )
{
    int temp;
    for(int k = 0; k< n-1; k++)
    {
        // (n-k-1) is for ignoring comparisons of elements which have already been compared in earlier iterations

        for(int i = 0; i < n-k-1; i++)
        {
            if(A[ i ] > A[ i+1] )
            {
                // here swapping of positions is being done.
                temp = A[ i ];
                A[ i ] = A[ i+1 ];
                A[ i + 1] = temp;
            }

        }
        cout << "Pass" <<k <<" : ";
        printArray(A, n);
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

    bubble_sort(arr, n);
    cout << "Using Bubble Sort, the sorted array is: \n";
    printArray(arr, n);
    return 0;

}
