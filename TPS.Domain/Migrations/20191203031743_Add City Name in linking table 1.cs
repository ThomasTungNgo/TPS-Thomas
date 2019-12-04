using Microsoft.EntityFrameworkCore.Migrations;

namespace TPS.Domain.Migrations
{
    public partial class AddCityNameinlinkingtable1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "CityName",
                table: "TravelPackageCities",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CityName",
                table: "TravelPackageCities");
        }
    }
}
