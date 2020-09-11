// Standard Library class deque test program.
#include <iostream>
using std::cout;
using std::endl;

#include <deque> // deque class-template definition
#include <algorithm> // copy algorithm
#include <iterator> // ostream_iterator

int main()
{ 
   std::deque< double > values; // create deque of doubles
   std::ostream_iterator< double > output( cout, " " );

   // insert elements in values
   values.push_front( 2.2 );
   values.push_front( 3.5 );
   values.push_back( 1.1 );

   cout << "values contains: ";

   // use subscript operator to obtain elements of values
   for ( unsigned int i = 0; i < values.size(); i++ )
      cout << values[ i ] << ' ';

   values.pop_front(); // remove first element
   cout << "\nAfter pop_front, values contains: ";
   std::copy( values.begin(), values.end(), output );

   // use subscript operator to modify element at location 1
   values[ 1 ] = 5.4;
   cout << "\nAfter values[ 1 ] = 5.4, values contains: ";
   std::copy( values.begin(), values.end(), output );
   cout << endl;
   return 0;
} // end main
