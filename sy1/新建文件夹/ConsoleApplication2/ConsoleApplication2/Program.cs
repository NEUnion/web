using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication2
{
    class Program
    {
        static int max;
        static int min;
        static void maxmin(int []s) {
             max = -99999;
             min = 100000;
            for (int i = 0; i < s.Length; i++)
            {

                if (s[i] > max)
                    max = s[i];

            }
            for (int j = 0; j < s.Length; j++)
            {
                if (s[j] < min)
                    min = s[j];
            }
            
        }
        static void Main(string[] args)
        {
            System.Console.WriteLine("please  input  the numbers of the array:");
            //int j = (char)System.Console.Read() - '0';
            //System.Console.WriteLine("total numbers:{0}", j);
          int []intArray=new int[3];
           //System.Console.WriteLine("please input the length of the array:");
           //char []cs= System.Console.ReadLine().ToCharArray();
           for (int i = 0; i < intArray.Length; i++)
           {
               string s = System.Console.ReadLine();

               intArray[i] = int.Parse(s);

           }
           System.Console.Write("The  numbers is:");
           for (int i = 0; i < intArray.Length;i++)
           {
               System.Console.Write("{0,5:d}", intArray[i]);
           }

           System.Console.WriteLine();
            maxmin(intArray);
            System.Console.WriteLine("The biggest number is:max={0}, and the smallest number is :{1}", max, min);

        }
    }
}
