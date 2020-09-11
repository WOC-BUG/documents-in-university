// Standard library list class template test program.
#include <iostream>
using std::cout;
using std::endl;

#include <list> // list class-template definition
#include <algorithm> // copy algorithm
#include <iterator> // ostream_iterator

// prototype for function template printList
template < typename T > void printList( const std::list< T > &listRef );

int main()
{ 
   const int SIZE = 4;
   int array[ SIZE ] = { 2, 6, 4, 8 };
   std::list< int > values; // create list of ints
   std::list< int > otherValues; // create list of ints

   // insert items in values
   values.push_front( 1 );
   values.push_front( 2 );
   values.push_back( 4 );
   values.push_back( 3 );
   
   cout << "values contains: ";
   printList( values );

   values.sort(); // sort values
   cout << "\nvalues after sorting contains: ";
   printList( values );
  
   // insert elements of array into otherValues                   
   otherValues.insert( otherValues.begin(), array, array + SIZE );
   cout << "\nAfter insert, otherValues contains: ";
   printList( otherValues );

   // remove otherValues elements and insert at end of values
   values.splice( values.end(), otherValues );
   cout << "\nAfter splice, values contains: ";
   printList( values );

   values.sort(); // sort values
   cout << "\nAfter sort, values contains: ";
   printList( values );

   // insert elements of array into otherValues
   otherValues.insert( otherValues.begin(), array, array + SIZE );
   otherValues.sort();                         
   cout << "\nAfter insert, otherValues contains: ";
   printList( otherValues );
   
   // remove otherValues elements and insert into values in sorted order
   values.merge( otherValues );                         
   cout << "\nAfter merge:\n   values contains: ";
   printList( values );
   cout << "\n   otherValues contains: ";
   printList( otherValues );

   values.pop_front(); // remove element from front
   values.pop_back(); // remove element from back
   cout << "\nAfter pop_front and pop_back:\n   values contains: ";
   printList( values );

   values.unique(); // remove duplicate elements
   cout << "\nAfter unique, values contains: ";
   printList( values );

   // swap elements of values and otherValues
   values.swap( otherValues );
   cout << "\nAfter swap:\n   values contains: ";
   printList( values );
   cout << "\n   otherValues contains: ";
   printList( otherValues );

   // replace contents of values with elements of otherValues
   values.assign( otherValues.begin(), otherValues.end() );
   cout << "\nAfter assign, values contains: ";
   printList( values );

   // remove otherValues elements and insert into values in sorted order
   values.merge( otherValues ); 
   cout << "\nAfter merge, values contains: ";
   printList( values ); 
   
   values.remove( 4 ); // remove all 4s
   cout << "\nAfter remove( 4 ), values contains: ";
   printList( values );
   cout << endl;
   return 0;
} // end main

// printList function template definition; uses 
// ostream_iterator and copy algorithm to output list elements
template < typename T > void printList( const std::list< T > &listRef )
{
   if ( listRef.empty() ) // list is empty
      cout << "List is empty";
   else 
   {
      std::ostream_iterator< T > output( cout, " " );
      std::copy( listRef.begin(), listRef.end(), output );
   } // end else
} // end function printList
