using Microsoft.EntityFrameworkCore.Migrations;

namespace TPS.Domain.Migrations
{
    public partial class AddratingandcommentfromUser : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Comment",
                table: "TravelPackages",
                maxLength: 500,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Rating",
                table: "TravelPackages",
                nullable: true,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Comment",
                table: "TravelPackages");

            migrationBuilder.DropColumn(
                name: "Rating",
                table: "TravelPackages");
        }
    }
}
