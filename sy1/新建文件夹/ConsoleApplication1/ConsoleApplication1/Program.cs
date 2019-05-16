using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            float sum = 2;
            float t,n,m;
            float a=2f,b=1f;
            for (int i = 2; i < 11;i++ )
            {
                if ((i % 2 )== 0)
                    t = -1;
                else t = 1;
                m=a+b;
                n=a;
                a = m;
                b = n;
                sum += t * m / n;
                System.Console.WriteLine("a={0},b={1},t={2},sum={3}",a,b,t,sum);
                
 
            }
            Console.WriteLine("前十项和是：{0}",sum);
        }
    }
}
