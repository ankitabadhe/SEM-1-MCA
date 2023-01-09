#include <iostream>
using namespace std;

int stack[100],choice,n,top,x,i,val;

void push(int val)
{
    if(top>=n-1)
    {
        cout<<"Stack is Overflow"<<endl;
    }
    else
    {
        cout<<"Enter a value to be pushed:"<<endl;
        top++;
        stack[top] = val;
    }
}

void pop()
{
    if(top<=-1)
    {
        cout<<"Stack is Underflow"<<endl;
    }
    else
    {
        cout<<"The popped elements is"<<endl;
        cout<<stack[top]<<endl;
        top--;
    }
}
void display()
{
    if(top>=0)
    {
        cout<<"The elements in STACK are"<<endl;
        for(i=top; i>=0; i--)
            cout<<stack[i]<<endl;
        cout<<"\n"<<endl;
        cout<<"Press Next Choice \n"<<endl;
    }
    else
    {
        cout<<"The STACK is empty \n"<<endl;
    }
}

void Top()
{
    cout<<"The top element is "<<stack[top]<<"\n";
}

void IsEmpty()
{
    if(top == -1)
    {
        cout<<"The top element is Empty\n";
    }
    else
    {
        cout<<"The top element is NOT Empty\n";
    }
}

void countElements()
{
    cout<<"The total count of elements is "<<top+1<<"\n";
}

int main()
{
    top=-1;
    cout<<"Enter the size of STACK[MAX=100]:"<<endl;
    cin>>n;
    cout<<"STACK OPERATIONS USING ARRAY"<<endl;
    cout<<"\n----------------------------------------------"<<endl;
    cout<<"\n 1.PUSH\n 2.POP\n 3.DISPLAY\n 4.TOP\n 5.IsEmpty\n 6.COUNT\n 7.EXIT"<<endl;
    do
    {
        cout<<"Enter the Choice:"<<endl;
        cin>>choice;
        switch(choice)
        {
        case 1:
        {
            cout<<"Enter value to be pushed:"<<endl;
            cin>>val;
            push(val);
            break;
        }
        case 2:
        {
            pop();
            break;
        }
        case 3:
        {
            display();
            break;
        }
        case 4:
        {
            Top();
            break;
        }
        case 5:
        {
            IsEmpty();
            break;
        }
        case 6:
        {
            countElements();
            break;
        }
        case 7:
        {
            cout<<"Exit \n"<<endl;
            break;
        }
        default:
        {
            cout<<"Invalid Input!, Please Enter a Valid Choice(1/2/3/4/5/6/7)"<<endl;
        }
        }
    }
    while(choice!=7);

    return 0;
}
