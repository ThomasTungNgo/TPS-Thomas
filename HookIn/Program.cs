using System;
using TPS.Domain;

namespace HookIn
{
    class Program
    {
        static void Main(string[] args)
        {
            var db = new TPSDbContext();
            var c = new Customer { Forename = "Fred", Surname = "Bob", UserId = "X" };
            db.People.Add(c);
            db.SaveChanges(); 
        }
    }
}
