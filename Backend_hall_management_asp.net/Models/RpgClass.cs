using System.Text.Json.Serialization;

namespace Backend_hall_management.Models
{
    [JsonConverter(typeof(JsonStringEnumConverter))]
    public enum RpgClass
    {
        Knight = 1,
        Mage = 2,
        Cleric = 3


    }
}