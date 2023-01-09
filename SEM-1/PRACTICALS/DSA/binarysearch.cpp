#include <iostream>
using namespace std;

void printArray(int arr[], int size)
{
    int i;
    for (i=0; i < size; i++)
        cout << arr[i] << " ";
    cout << endl;
}

int binary_search( int arr[], int l, int r, int s )
{

    if (r>=1)
    {
        int mid = (l + r)/2;

        if(arr[mid] == s)
        {
            return mid;
        }
        else if(arr[mid] < s)
        {
            return binary_search(arr, mid + 1, r, s);
        }
        else
        {
        return binary_search(arr, l, mid - 1, s);
        }
    }
    else
        {
            return -1;
        }
}

int * bubble_sort( int A[ ], int n )
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
    }
            return A;
}

int main()
{
    int n;
    cout << "Enter number of elements for an array \n";
    cin >> n;
    int arr[n];
    for (int i = 0; i < n; i++)
    {
        cout << "Enter element "<<i+1<<"\n";
        cin >> arr[i];
    }
    int s;
    cout<< "Enter element to search \n";
    cin>>s;
    int *ar = bubble_sort(arr,n);
    cout<< "Sorted array is \n";
    printArray(ar,n);
    int rs = binary_search(ar, 0, n-1, s);
    if(rs==-1)
    {
        cout<<"Element is not found!!";
    }
    else
    {
        cout<<"Element is found at position "<<rs+1;
    }
    return 0;

}
