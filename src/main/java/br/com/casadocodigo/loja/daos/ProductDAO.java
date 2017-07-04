package br.com.casadocodigo.loja.daos;

import br.com.casadocodigo.loja.models.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
    
    @PersistenceContext
    private EntityManager manager;
    
    public void save(Product product) {
        manager.persist(product);
    }

    public List<Product> list() {
        return manager.createQuery("select distinct(p) from Product p join fetch p.prices", Product.class).getResultList();
    }
    
}
