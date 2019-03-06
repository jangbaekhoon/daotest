package com.daotest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.daotest.dao.Dao;
import com.daotest.service.Daoservice;

@Controller
public class Daocontroller {

   // Service
   @Autowired
   Daoservice ds;

   //select
   @RequestMapping("/list.do")
   public String select_list(Model m) {
      ArrayList<HashMap<String, String>> list = (new Dao()).select();
      m.addAttribute("list", list);
      
      return "daotest";
   }

   // 요청 GET : daotest.do, 폼 : daotest.jsp
   @RequestMapping("/daotest.do")
   public String daotestGet() {
      // view return
      return "insert_form";
   }

   // 요청 POST / daotest.do, 인서트 : daolist.jsp
   @RequestMapping(value = "/daotest.do", method = RequestMethod.POST)
   public String daotestPost(@RequestParam Map<String, String> pm) {
      ds.insert(pm);
      return "redirect:list.do";
   }
   // Spring에서 sendRedirect
   
   
   
   
   @RequestMapping(value = "/basket.do", method = RequestMethod.POST)
   public String bastestPost(@RequestParam Map<String, String> mb) {
      ds.insert(mb);
      return "redirect:basket.do";
   }

}