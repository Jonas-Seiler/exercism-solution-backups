using System;

static class LogLine
{
    public static string Message(string logLine)
    {
        return logLine.Split(": ", 2)[1].Trim();
    }

    public static string LogLevel(string logLine)
    {
        return logLine.Trim().Split("]:")[0].Substring(1).ToLower();
    }

    public static string Reformat(string logLine)
    {
        return String.Format("{0} ({1})", Message(logLine), LogLevel(logLine));
    }
}
