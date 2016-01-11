using System;
using OpenHardwareMonitor.Hardware;

namespace WindowsSensorClient
{
    public class Program
    {
        public static void Main(string[] args)
        {
            using (var temperatureReader = new TemperatureReader())
            using (var client = new WebServiceClient("http://localhost:1337", "admin", "adminadminadmin", 2))
            {
                var temperature = temperatureReader.ReadCpuTemperature();
                if (temperature.HasValue)
                {
                    client.Authenticate();
                    client.SendTemperature(temperature.Value);
                }
            }
        }
    }
}
