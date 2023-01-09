#include <iostream>
using namespace std;

int linear_search( int arr[], int n, int s )
{
    for(int i=0; i < n; i++)
    {
        if(arr[i] == s)
        {
            return i;
        }
    }
    return -1;
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
    int rs = linear_search(arr, n, s);
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
