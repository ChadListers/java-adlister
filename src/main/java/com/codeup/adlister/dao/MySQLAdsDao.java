package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM chadlister_db.ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> all(long id) {
        String query = "SELECT * FROM chadlister_db.ads WHERE user_id =" + id;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet rs = preparedStatement.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving specific ad.", e);
        }
    }

    public List<Ad> adsByCategoriesId(long id) {
        String query = "SELECT * FROM chadlister_db.ads WHERE category_id =" + id;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet rs = preparedStatement.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving specific ads by id.", e);
        }
    }

    ////// Not tested yet  ///////////
    @Override
    public List<Ad> findAdByName(String adName) {
        String query = "SELECT * FROM chadlister_db.ads WHERE title LIKE ? OR description LIKE ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, "%" + adName + "%");
            stmt.setString(2, "%" + adName + "%");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searchiing for ads", e);
        }
    }

    @Override
    public Ad findAdById(long id) {
        String query = "SELECT * FROM chadlister_db.ads WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                return extractAd(rs);
            } else {
                return null;
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error searchiing for ads by id", e);
        }
    }


    @Override
    public void delete(long id) {
        String insertQuery = "DELETE FROM chadlister_db.ads WHERE id = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting ad.", e);
        }
    }




    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO chadlister_db.ads(user_id, category_id, title, description, price, image_url) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setLong(2, ad.getCategoryId());
            stmt.setString(3, ad.getTitle());
            stmt.setString(4, ad.getDescription());
            stmt.setInt(5, ad.getPrice());
            stmt.setString(6, ad.getImageUrl());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getLong("category_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getInt("price"),
            rs.getString("image_url")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }


    @Override
    public void update(Ad ad) {
        String insetQuery = "UPDATE chadlister_db.ads SET title = ?, description = ?, price = ?, category_id = ?, image_url = ? WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(insetQuery);
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setInt(3, ad.getPrice());
            stmt.setLong(4, ad.getCategoryId());
            stmt.setString(5, ad.getImageUrl());
            stmt.setLong(6, ad.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error editing ad", e);
        }
    }

    ////////// testing //////////////
    public static void main(String[] args) {
        Config config = new Config();
        MySQLUsersDao usersDao = new MySQLUsersDao(config);
        MySQLAdsDao adsDao = new MySQLAdsDao(config);
//        String hash = Password.hash("password123");
//        User user = new User("oscar-ct", "test@email.com", hash, "2108496794");
//        usersDao.insert(user);
//        usersDao.delete(2);

        Ad ad = new Ad("matt for sale", "matt", 1,5, "www.google.com", 1 );
        adsDao.update(ad);




    }



}
