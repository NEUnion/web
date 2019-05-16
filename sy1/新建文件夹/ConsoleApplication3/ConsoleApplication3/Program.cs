using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication3
{

    class Program
    {
       
        static void maxmin(int[] s)
        {
            
            for (int i = 1; i <=s.Length; i++)
            {
                for (int j = 0; j <=s.Length-1-i; j++)
                {
                    if (s[j]>s[j+1])
                    { 
                        int tmp=s[j];
                        s[j]=s[j+1];
                        s[j+1] = tmp;
                    }
                }

            }
            

        }
        static void Main(string[] args)
        {
            System.Console.WriteLine("please  input  the numbers of the array:");
            int[] intArray = new int[5];        
            for (int i = 0; i < intArray.Length; i++)
            {
                string s = System.Console.ReadLine();
                intArray[i] = int.Parse(s);
            }
            System.Console.Write("The  numbers is:");
            for (int i = 0; i < intArray.Length; i++)
            {
                System.Console.Write("{0,5:d}", intArray[i]);
            }

            System.Console.WriteLine();
            maxmin(intArray);
            System.Console.Write("Sorted:");
            for (int i = 0; i < intArray.Length; i++)
            {
                System.Console.Write("{0,5:d}", intArray[i]);
            }
            System.Console.WriteLine();
            

        }
    }
}
