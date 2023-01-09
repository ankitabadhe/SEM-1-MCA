#include <bits/stdc++.h>
using namespace std;

struct Node
{
    int data;
    struct Node* link;
};

struct Node* top;

void push(int data)
{

    struct Node* temp;
    temp = new Node();

    if (!temp)
    {
        cout << "\nHeap Overflow";
        exit(1);
    }

    temp->data = data;
    temp->link = top;
    top = temp;
}

void IsEmpty()
{
    if(top == NULL)
    {
        cout<<"STACK IS EMPTY"<<endl;
    }
    else
    {
        cout<<"STACK IS NOT EMPTY"<<endl;
    }
}

int topElement()
{

    if (top != NULL)
    {
        cout<<"Top Element is "<<top->data<<" \n"<<endl;
    }
    else
    {
        cout<<"Not found / nulled"<<endl;
    }
}

void countElements()
{
    int count = 0;
    Node *temp = top;
    while(temp!=NULL)
    {
        count++;
        temp = temp->link;
    }
    cout<<"TOTAL COUNT IS "<<count<<"\n"<<endl;
}

void pop()
{
    struct Node* temp;

    if (top == NULL)
    {
        cout << "\nStack Underflow" << endl;
    }
    else
    {
        temp = top;
        top = top->link;
        temp->link = NULL;
        free(temp);
        cout << "\nElement is popped out" << endl;
    }
}

void display()
{
    struct Node* temp;

    if (top == NULL)
    {
        cout << "\nStack Underflow";
        exit(1);
    }
    else
    {
        temp = top;
        cout << "Elements are \n"<<endl;
        while (temp != NULL)
        {
            cout << temp->data<<"\n";
            temp = temp->link;
        }
    }
}

int main()
{
    int choice,val;
    cout<<"STACK OPERATIONS USING LINKED LIST"<<endl;
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
            topElement();
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
