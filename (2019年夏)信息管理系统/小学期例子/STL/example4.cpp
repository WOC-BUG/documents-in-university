// Demonstrating Standard Library vector class template.
#include <iostream>
#include <vector> // vector class-template definition
using namespace std;

// prototype for function template printVector
template < typename T > 
void printVector( const vector< T > &integers2 );

int main()
{
   const int SIZE = 6; // define array size
   int array[ SIZE ] = { 1, 2, 3, 4, 5, 6 }; // initialize array
   vector< int > integers; // create vector of ints

   cout << "The initial size of integers is: " << integers.size()
      << "\nThe initial capacity of integers is: " << integers.capacity();

   // function push_back is in every sequence collection
   integers.push_back( 2 );  
   integers.push_back( 3 );  
   integers.push_back( 4 );

   cout << "\nThe size of integers is: " << integers.size()
      << "\nThe capacity of integers is: " << integers.capacity();
   cout << "\n\nOutput array using pointer notation: ";

   // display array using pointer notation
   for ( int *ptr = array; ptr != array + SIZE; ptr++ )
      cout << *ptr << ' ';

   cout << "\nOutput vector using iterator notation: ";
   printVector( integers );
   cout << "\nReversed contents of vector integers: ";

   // two const reverse iterators
   vector< int >::const_reverse_iterator reverseIterator; 
   vector< int >::const_reverse_iterator tempIterator = integers.rend();

   // display vector in reverse order using reverse_iterator
   for ( reverseIterator = integers.rbegin();  reverseIterator!= tempIterator; ++reverseIterator )
      cout << *reverseIterator << ' ';       

   cout << endl;
   return 0;
} // end main

// function template for outputting vector elements
template < typename T >
void printVector( const vector< T > &integers2 )
{
   typename vector< T >::const_iterator constIterator; // const_iterator

   // display vector elements using const_iterator
   for ( constIterator = integers2.begin();  constIterator != integers2.end(); ++constIterator )
      cout << *constIterator << ' ';
} // end function printVector
