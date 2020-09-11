// Standard Library adapter priority_queue test program.
#include <iostream>
using std::cout;
using std::endl;

#include <queue> // priority_queue adapter definition

int main()
{
   std::priority_queue< double > priorities; // create priority_queue
   
   // push elements onto priorities
   priorities.push( 3.2 );
   priorities.push( 9.8 );
   priorities.push( 5.4 );

   cout << "Popping from priorities: ";
   
   // pop element from priority_queue
   while ( !priorities.empty() ) 
   {
      cout << priorities.top() << ' '; // view top element
      priorities.pop(); // remove top element
   } // end while

   cout << endl;
   return 0;
} // end main