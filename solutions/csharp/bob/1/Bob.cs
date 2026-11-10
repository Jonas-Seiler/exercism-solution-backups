using System;
using System.Linq;
using System.Text.RegularExpressions;

public static class Bob
{
    public static string Response(string statement)
    {
        if(statement.IsSilence())
        {
            return "Fine. Be that way!";
        }
        
        return (
            statement.IsNoLetters(),
            statement.IsQuestion(),
            statement.IsCaps()
        ) switch {
                ( false, true , false ) or
                ( true , true , _     ) => "Sure.",
                ( false, true , true  ) => "Calm down, I know what I'm doing!",
                ( false, false, true  ) => "Whoa, chill out!",
                _                       => "Whatever.",
        };        
    }

    private static bool IsNoLetters(this string statement) 
    {
        return statement.All(c => !Char.IsLetter(c));
    }
    
    private static bool IsQuestion(this string statement) 
    {
        return statement.Trim().EndsWith("?");
    }

    private static bool IsCaps(this string statement) 
    {
        return statement.All(c => !Char.IsLower(c));
    }

    private static bool IsSilence(this string statement)
    {
        return statement.All(c => Char.IsWhiteSpace(c));
    }
}