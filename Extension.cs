using Catalog.Dto;
using Catalog.Entities;

namespace Catalog
{
    public static class Extension
    {
        public static ItemDto AsDto(this Item item)
        {
            return new ItemDto
            {
                id = item.id,
                name = item.name,
                price = item.price,
                CreateData = item.CreateData
            };
        }
    }
}