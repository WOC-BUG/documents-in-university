// Standard Library adapter queue test program.
#include <iostream>
using std::cout;
using std::endl;

#include <queue> // queue adapter definition

int main()
{
   std::queue< double > values; // queue with doubles
   
   // push elements onto queue values
   values.push( 3.2 );
   values.push( 9.8 );
   values.push( 5.4 );

   cout << "Popping from values: ";
   
   // pop elements from queue
   while ( !values.empty() ) 
   {
      cout << values.front() << ' '; // view front element
      values.pop(); // remove element 
   } // end while

   cout << endl;
   return 0;
} // end main