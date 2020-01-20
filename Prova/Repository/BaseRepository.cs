using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Prova.Model;

namespace Prova.Repository
{
    public class BaseRepository
    {
        private DatabaseEntities _Model;
        public DatabaseEntities Model
        {
            get
            {
                if (_Model == null)
                {
                    _Model = new DatabaseEntities();
                }
                return _Model;
            }
        }
    }
}