using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Prova.Model;

namespace Prova.Repository
{
    public class UsuarioRepository : BaseRepository
    {
        public List<Usuario> GetAll()
        {
            return Model.Usuario.ToList();
        }
        public List<Usuario> GetAllUsuario(string usuario)
        {
            try
            {
                return Model.Usuario.Where(e => e.Usuario1.Contains(usuario)).ToList();
            }
            catch (Exception)
            {
                return null;
                throw;
            }
        }
        public List<Usuario> GetAllNome(string nome)
        {
            try
            {
                return Model.Usuario.Where(e => e.Nome.Contains(nome)).ToList();
            }
            catch (Exception)
            {
                return null;
                throw;
            }
        }
        public Usuario GetOneU(string usuario, string senha)
        {
            try
            {
                return Model.Usuario.First(e => e.Usuario1 == usuario || e.Senha == senha || e.Email == usuario);
            }
            catch (Exception)
            {
                return null;
                throw;
            }
        }

        public Usuario GetOneE(string email)
        {
            try
            {
                return Model.Usuario.First(e => e.Email == email );
            }
            catch (Exception)
            {
                return null;
                throw;
            }
        }

        public Usuario GetOneID(int id)
        {
            try
            {
                return Model.Usuario.First(e => e.Id == id);
            }
            catch (Exception)
            {
                return null;
                throw;
            }

        }
    }
}