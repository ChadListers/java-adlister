package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Categories {
    List<Category> all();
    Long insert(Category category);
    void delete(long id);
}
