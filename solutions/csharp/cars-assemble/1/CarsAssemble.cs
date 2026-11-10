using System;

static class AssemblyLine
{
    public static double SuccessRate(int speed)
    {
        if(speed == 0) 
        {
            return 0.0;
        } 
        else if(0 < speed && speed <= 4) 
        {
            return 1.0;
        }
        else if(4 < speed && speed <= 8)
        {
            return 0.9;
        }
        else if(8 < speed && speed <= 9)
        {
            return 0.8;
        }
        else if(9 < speed && speed <= 10)
        {
            return 0.77;
        }
        else
        {
            throw new Exception();
        }
    }
    
    public static double ProductionRatePerHour(int speed)
    {
        return 221 * speed * SuccessRate(speed);
    }

    public static int WorkingItemsPerMinute(int speed)
    {
        return (int) ProductionRatePerHour(speed) / 60;
    }
}
