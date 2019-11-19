using Microsoft.EntityFrameworkCore.Migrations;

namespace TPS.Domain.Migrations
{
    public partial class modifytravelpackage : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "DurationDay",
                table: "TravelPackages",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DurationNight",
                table: "TravelPackages",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DurationDay",
                table: "TravelPackages");

            migrationBuilder.DropColumn(
                name: "DurationNight",
                table: "TravelPackages");
        }
    }
}
