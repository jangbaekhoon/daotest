package com.daotest.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import commons.Db;

@Component
public class Dao {
   // insert
   public void insert(Map<String, String> d) {
      String sql = String.format("INSERT INTO spr_test3 VALUES (SQ_spr_test3.NEXTVAL, '%s', %s)", d.get("s_name"),
            d.get("s_age"));
      Db.executeUpdate(sql);

   }

   // select
   public ArrayList<HashMap<String, String>> select() {
      return Db.selectListMap("SELECT * FROM SPR_TEST3 ORDER BY S_NUM");
      
      
      
   }

}