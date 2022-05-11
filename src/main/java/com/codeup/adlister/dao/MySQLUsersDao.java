package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
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
    public User findByUsername(String username) {
        String query = "SELECT * FROM chadlister_db.users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                return extractUser(rs);
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO chadlister_db.users(username, email, password, phone_number) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getPhoneNumber());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                return rs.getLong(1);
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

////// tested 5/7/22, works good ///////////
    @Override
    public void delete(long id) {
        String query = "DELETE FROM chadlister_db.users WHERE id = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting user.", e);
        }
    }


    private User extractUser(ResultSet rs) throws SQLException {
//        if (! rs.next()) {
//            return null;
//        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("phone_number"),
            rs.getString("first_name"),
            rs.getString("last_name"),
            rs.getBoolean("is_admin")
        );
    }


    @Override
    public void update(User user) {
        String insetQuery = "UPDATE chadlister_db.users SET username = ?, email = ?, phone_number= ?, first_name = ?, last_name= ? WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(insetQuery);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPhoneNumber());
            stmt.setString(4, user.getFirstName());
            stmt.setString(5, user.getLastName());
            stmt.setLong(6, user.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error editing user", e);
        }
    }

    @Override
    public void updatePassword(User user) {
        //// needs work
    }

    @Override
    public List<User> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM chadlister_db.users");
            ResultSet rs = stmt.executeQuery();
            return createUserFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all users.", e);
        }
    }

    private List<User> createUserFromResults(ResultSet rs) throws SQLException {
        List<User> users = new ArrayList<>();
        while (rs.next()) {
            users.add(extractUser(rs));
        }
        return users;
    }

}
