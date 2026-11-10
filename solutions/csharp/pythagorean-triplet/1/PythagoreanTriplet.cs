using System;
using System.Collections.Generic;
using System.Linq;

public static class PythagoreanTriplet
{
    public static IEnumerable<(int a, int b, int c)> TripletsWithSum(int sum)
    {
        return EuclidParametersForSum(sum)
            .Select((t) => EuclidsFormular(t.m, t.n, t.k))
            .Distinct()
            .OrderBy((t) => t.a);
    }

    private static (int a, int b, int c) EuclidsFormular(int m, int n, int k) 
    {
        int diff = k * (m.Square() - n.Square());
        int prod = k * 2 * m * n;

        bool diffLarger = diff > prod;
            
        return (
            a: (diffLarger ? prod : diff),
            b: (diffLarger ? diff : prod),
            c: k * (m.Square() + n.Square())
        );
    }
    

    private static IEnumerable<(int m, int n, int k)> EuclidParametersForSum(int sum)
    {
        int nUpper = (int) Math.Floor(Math.Sqrt(sum / 4.0));
        int mUpper = (int) Math.Floor(Math.Sqrt(0.5 + sum/2) - 0.5);
        
        return Enumerable
            .Range(1, nUpper)
            .SelectMany(
                n => Enumerable
                        .Range(n + 1, mUpper)
                        .Select(m => (m, n))
            )
            .Distinct()
            .Select((t) => (t.m, t.n, k:(
                sum / (2.0 * (t.m.Square() + t.m * t.n))
            )))
            .Where((t) => Math.Floor(t.k) == t.k)
            .Select((t) => (t.m, t.n, (int) t.k));
    }

    private static int Square(this int x) => x * x;
}