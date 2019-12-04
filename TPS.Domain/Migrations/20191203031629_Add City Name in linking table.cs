using Microsoft.EntityFrameworkCore.Migrations;

namespace TPS.Domain.Migrations
{
    public partial class AddCityNameinlinkingtable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "CityName",
                table: "CityAttractions",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CityName",
                table: "CityAttractions");
        }
    }
}
