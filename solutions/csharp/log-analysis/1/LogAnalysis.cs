using System;

public static class LogAnalysis 
{
    public static string SubstringAfter(this string str, string delimiter) 
    {
        return str.Split(delimiter)[1];
    }

    public static string SubstringBetween(this string str, string first, string second) 
    {
        return str.Split(second)[0].Split(first)[1];
    }

    public static string Message(this string str) 
    {
        return str.SubstringAfter(": ");
    }

    public static string LogLevel(this string str) 
    {
        return str.SubstringBetween("[", "]");
    }
}