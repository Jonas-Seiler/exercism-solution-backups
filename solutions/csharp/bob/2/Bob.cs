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
            statement.IsQuestion(),
            statement.IsYelled()
        ) switch {
                ( true , false ) => "Sure.",
                ( false, true  ) => "Whoa, chill out!",
                ( true , true  ) => "Calm down, I know what I'm doing!",
                _                => "Whatever.",
        };        
    }
    
    private static bool IsQuestion(this string statement) 
    {
        return statement.Trim().EndsWith("?");
    }

    private static bool IsYelled(this string statement) 
    {
        var hasLetters = statement.Any(c => Char.IsLetter(c));
        var notAnyLower = !statement.Any(c => Char.IsLower(c));
        return hasLetters && notAnyLower;
    }

    private static bool IsSilence(this string statement)
    {
        return statement.Trim().Length == 0;
    }
}