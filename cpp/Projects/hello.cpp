// Pratik Bharambe ..............

#include <iostream>
#include <vector>
using namespace std;

int main()
{
    vector<int> data{1, 2, 3, 4, 5, 6};
    // cout << sizeof(data);
    // cout << data.size()<<endl;

    cout<<data.capacity()<<endl;

    // for (int i = 0; i < data.size(); i++)
    // {
    //     cout<<data[i]<<endl;
    // }
    
    return 0;
}
