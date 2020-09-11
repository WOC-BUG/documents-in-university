#include <cstdlib>
#include <iostream>
using namespace std;

int compare(const void *arg1, const void *arg2);

int main()
{
    const int max_size = 10;  //  ˝◊È‘ –Ì‘™Àÿµƒ◊Ó¥Û∏ˆ ˝
    int num[max_size];   // ’˚–Õ ˝◊È
    
    // ¥”±Í◊º ‰»Î…Ë±∏∂¡»Î’˚ ˝£¨Õ¨ ±¿€º∆ ‰»Î∏ˆ ˝£¨
    // ÷±µΩ ‰»Îµƒ «∑«’˚–Õ ˝æ›Œ™÷π
    int n;
    for (n = 0; cin >> num[n]; n ++);
    
    // C±Í◊ºø‚÷–µƒøÏÀŸ≈≈–Ú£®quick-sort£©∫Ø ˝
    qsort(num, n, sizeof(int), compare);
    
    // Ω´≈≈–ÚΩ·π˚ ‰≥ˆµΩ±Í◊º ‰≥ˆ…Ë±∏
    for (int i = 0; i < n; i ++)
        cout << num[i] << "\n";
}

// ±»Ωœ¡Ω∏ˆ ˝µƒ¥Û–°£¨
// »Áπ˚*(int *)arg1±»*(int *)arg2–°£¨‘Ú∑µªÿ-1
// »Áπ˚*(int *)arg1±»*(int *)arg2¥Û£¨‘Ú∑µªÿ1
// »Áπ˚*(int *)arg1µ»”⁄*(int *)arg2£¨‘Ú∑µªÿ0
int compare(const void *arg1, const void *arg2) 
{ 
 return (*(int *)arg1 < *(int *)arg2) ? -1 :    (*(int *)arg1 > *(int *)arg2) ? 1 : 0; 
} 
