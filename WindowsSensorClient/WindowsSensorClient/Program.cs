namespace WindowsSensorClient
{
    public class Program
    {
        public static void Main(string[] args)
        {
            using (var client = new WebServiceClient("http://localhost:1337", "admin", "adminadminadmin", 2))
            {
                client.Authenticate();
                client.SendTemperature(20);
            }
        }
    }
}
