// Testing Standard Library vector class template 
// element-manipulation functions.
#include <iostream>
using namespace std;
#include <vector> // vector class-template definition
#include <algorithm> // copy algorithm                  
#include <iterator> // ostream_iterator iterator
#include <stdexcept> // out_of_range exception

int main()
{
   const int SIZE = 6;   
   int array[ SIZE ] = { 1, 2, 3, 4, 5, 6 };
   vector< int > integers( array, array + SIZE );
   ostream_iterator< int > output( cout, " " );

   cout << "Vector integers contains: ";
   copy( integers.begin(), integers.end(), output );

   cout << "\nFirst element of integers: " << integers.front()
      << "\nLast element of integers: " << integers.back();

   integers[ 0 ] = 7; // set first element to 7
   integers.at( 2 ) = 10; // set element at position 2 to 10

   // insert 22 as 2nd element
   integers.insert( integers.begin() + 1, 22 );  

   cout << "\n\nContents of vector integers after changes: ";
   copy( integers.begin(), integers.end(), output );

   // erase first element
   integers.erase( integers.begin() );
   cout << "\n\nVector integers after erasing first element: ";
   copy( integers.begin(), integers.end(), output );

   // erase remaining elements
   integers.erase( integers.begin(), integers.end() );
   cout << "\nAfter erasing all elements, vector integers " 
      << ( integers.empty() ? "is" : "is not" ) << " empty";

   // insert elements from array
   integers.insert( integers.begin(), array, array + SIZE );
   cout << "\n\nContents of vector integers before clear: ";
   copy( integers.begin(), integers.end(), output );

   // empty integers; clear calls erase to empty a collection
   integers.clear();  
   cout << "\nAfter clear, vector integers " 
      << ( integers.empty() ? "is" : "is not" ) << " empty" << endl;
   return 0;
} // end main
