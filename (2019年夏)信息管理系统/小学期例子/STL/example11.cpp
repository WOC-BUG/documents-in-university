// Standard Library class map test program.
#include <iostream>
#include<utility>
using namespace std;

#include <map> // map class-template definition

// define short name for map type used in this program
typedef map< int, double > Mid;

int main()
{
   Mid pairs;

   // insert eight value_type objects in pairs
   pairs.insert( Mid::value_type( 15, 2.7 ) );

   pairs.insert( make_pair( 30, 111.11 ) );

   pair<int,double> temp( 5, 1010.1 ); 
   pairs.insert( temp );

   pairs.insert( pair<int,double>( 10, 22.22 ) );

   pairs.insert( Mid::value_type( 25, 33.333 ) );
   pairs.insert( Mid::value_type( 5, 77.54 ) ); // dup ignored
   pairs.insert( Mid::value_type( 20, 9.345 ) );
   pairs.insert( Mid::value_type( 15, 99.3 ) ); // dup ignored

   cout << "pairs contains:\nKey\tValue\n";
   
   // use const_iterator to walk through elements of pairs
   for ( Mid::const_iterator iter = pairs.begin();   iter != pairs.end(); ++iter )                       
      cout << iter->first << '\t' << iter->second << '\n';

   pairs[ 25 ] = 9999.99; // use subscripting to change value for key 25
   pairs[ 40 ] = 8765.43; // use subscripting to insert value for key 40
   
   cout << "\nAfter subscript operations, pairs contains:\nKey\tValue\n";
   
   // use const_iterator to walk through elements of pairs
   for ( Mid::const_iterator iter2 = pairs.begin();
      iter2 != pairs.end(); ++iter2 )           
      cout << iter2->first << '\t' << iter2->second << '\n';
                          
   cout << endl;
   return 0;
} // end main
