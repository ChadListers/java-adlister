package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void delete(long id);
    void update(User user);
    void updatePassword(User user);
    List<User> all();
}
