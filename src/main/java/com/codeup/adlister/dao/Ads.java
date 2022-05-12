package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    List<Ad> all(long id);
    List<Ad> allByAdId(long id);
    List<Ad> adsByCategoriesId(long id);
    List<Ad> findAdByName(String adName);
    void delete(long id);
    void update(Ad ad);
    Ad findAdById(long id);
    public List<Ad> allByAdPriceBelow(int price);
    public List<Ad> allByAdPriceAbove(int price);
}
