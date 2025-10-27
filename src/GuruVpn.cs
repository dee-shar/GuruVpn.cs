using System;
using System.Net.Http;
using System.Net.Http.Headers;

namespace GuruVpnApi
{
    public class GuruVpn
    {
        private readonly HttpClient httpClient;
        private readonly string apiUrl = "https://api.guruvpn.com";
        public GuruVpn()
        {
            httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.TryAddWithoutValidation("User-Agent", "okhttp/5.1.0");
            httpClient.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }
        public async Task<string> GetServers()
        {
            var response = await httpClient.GetAsync($"{apiUrl}/servers/locations");
            return await response.Content.ReadAsStringAsync();
        }
    }
}
