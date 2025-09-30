using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
// u need packages to talk to sqldb make it do work for u
 /*
    1. Dapper (enables really fast data Access in ORMs)
    2. System.data.sqlClient
    3. misrosoft.Extensions.Configuration.Abstractions ( allows to talk with json ..etc )
 */