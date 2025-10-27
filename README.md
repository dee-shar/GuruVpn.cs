# GuruVpn.cs
Mobile-API for [GuruVPN](https://guruvpn.com/ru) an application for connecting to a global server of your choice to enjoy unrestricted

## Example
```cs
using System;
using GuruVpnApi;

namespace Application
{
    internal class Program
    {
        static async Task Main()
        {
            var api = new GuruVpn();
            string servers = await api.GetServers();
            Console.WriteLine(servers);
        }
    }
}
```
