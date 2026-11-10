using System;

class RemoteControlCar
{
    private int _metersDriven = 0;
    private int _batteryPercentage = 100;

    private bool isBatteryEmpty() 
    {
        return _batteryPercentage <= 0;
    }
    
    public static RemoteControlCar Buy()
    {
        return new RemoteControlCar();
    }

    public string DistanceDisplay()
    {
        return $"Driven {_metersDriven} meters";
    }

    public string BatteryDisplay()
    {
        if(isBatteryEmpty())
        {
            return "Battery empty";
        }
        return $"Battery at {_batteryPercentage}%";
    }

    public void Drive()
    {
        if(!isBatteryEmpty())
        {
            _metersDriven += 20;
            _batteryPercentage -= 1;
        }
    }
}
