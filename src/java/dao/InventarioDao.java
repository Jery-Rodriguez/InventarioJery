/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.util.List;
import model.Inventario;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utilitarios.HibernateUtil;

/**
 *
 * @author USUARIO
 */
public class InventarioDao {
    public void registrarInventario(Inventario inventario) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(inventario);
        transaction.commit();
        session.close();
    }
    public  List<Inventario> listarInventario() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Inventario";
        Query query = session.createQuery(hql);
        List<Inventario> miLista = query.list();
        return miLista;
    }
}
