package market.persistence;

import market.entities.Product;

import java.util.ArrayList;
import java.util.Collection;

public final class ProductDAO extends DAO {

    public void safeProduct (Product p1) throws Exception {

        try {
//            if (p1 == null) {
//                throw new Exception("the product is null");
//            }

            String sql = "INSERT INTO producto (codigo, nombre, precio, codigo_fabricante)" + "VALUES ('" + p1.getId() + "' , '" + p1.getName() + "' , '" + p1.getPrice() + "' , '" + p1.getIdManuf() + "' ); ";

            cudDB(sql);

        }catch (Exception e) {
            throw e;
            //System.out.println("error " + e.getMessage() );
        }

    }

    public void modifyProduct (Product p1) throws Exception {

        try {
            if (p1 == null) {
                throw new Exception("the product is null");
            }

            // todo: modify query
            String sql = "INSERT INTO productos (id, name, price, idManuf)" + "VALUES ('" + p1.getId() + "' , '" + p1.getName() + "' , '" + p1.getPrice() + "' , '" + p1.getIdManuf() + "' ); ";

            cudDB(sql);

        }catch (Exception e) {
            throw e;
        }

    }

    public void deleteProduct (Product p1) throws Exception {

        try {
            if (p1 == null) {
                throw new Exception("the product is null");
            }

            // todo: modify query
            String sql = "INSERT INTO productos (id, name, price, idManuf)" + "VALUES ('" + p1.getId() + "' , '" + p1.getName() + "' , '" + p1.getPrice() + "' , '" + p1.getIdManuf() + "' ); ";

            cudDB(sql);

        }catch (Exception e) {
            throw e;
        }
    }

    public Product searchProductById(int id) throws Exception{
        try {

            String sql = "SELECT * FROM PRODUCTO " + " WHERE CODIGO = '" + id + "'";
            rDB(sql);

            Product product = null;

            while (result.next()){

                product = new Product();

                product.setId(result.getInt("codigo"));
                product.setName(result.getString("nombre"));
                product.setPrice(result.getDouble("precio"));
                product.setIdManuf(result.getInt("codigo_fabricante"));
            }
            disconnectDB();
            return product;

        } catch (Exception e) {
            disconnectDB();
            throw e;
        }
    }

    public Collection<Product> searchAllProducts() throws Exception{
        try {

            String sql = "SELECT * FROM producto ";
            rDB(sql);

            Product product = null;
            Collection<Product> products = new ArrayList<>();
            while (result.next()){

                product = new Product();

                product.setId(result.getInt("codigo"));
                product.setName(result.getString("nombre"));
                product.setPrice(result.getDouble("precio"));
                product.setIdManuf(result.getInt("codigo_fabricante"));

                products.add(product);
            }
            disconnectDB();
            return products;

        } catch (Exception e) {
            disconnectDB();
            throw e;
        }
    }

}


