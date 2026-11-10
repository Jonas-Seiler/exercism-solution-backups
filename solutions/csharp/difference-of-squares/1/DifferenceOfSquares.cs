using System;
using System.Linq;
using static System.Linq.Enumerable;

public static class DifferenceOfSquares
{
    public static int CalculateSquareOfSum(int max)
    {
        return Range(1, max).Sum().Square();
    }

    public static int CalculateSumOfSquares(int max)
    {
        return Range(1, max).Select(Square).Sum();
    }

    public static int CalculateDifferenceOfSquares(int max)
    {
        return CalculateSquareOfSum(max) - CalculateSumOfSquares(max);
    }

    private static int Square(this int x) 
    {
        return x * x;
    }
}