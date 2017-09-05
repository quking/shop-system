package com.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Collections;
import com.pojo.Goods;
import com.pojo.Shopcar;
import com.service.AddTocar;
import com.service.CollectionService;
import com.service.Goodservice;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import static javax.swing.text.html.CSS.getAttribute;

/**
 * Created by root on 17-5-19.
 */
@Controller
@RequestMapping("/mainpage")
public class GoodsControl {

    @Resource
    private Goodservice goodservice;

    @Resource
    private AddTocar addTocar;

    @Resource
    private CollectionService collectionService;

    @RequestMapping("/searchgoods")
    public void findgoods(HttpServletResponse response, HttpServletRequest request, HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject json=new JSONObject();
        String searchresult=request.getParameter("searchresult");
        Goods goods=new Goods();
        goods.setGname(searchresult);
        List<Goods> goods1=goodservice.selectgidbyname(goods);
        session.setAttribute("searchresult",goods1);

        json.put("good1",goods1);
        out.print(json);
    }
    @RequestMapping("/showresult")
    public void showresult(HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        List<Goods>goodsList= (List<Goods>) session.getAttribute("searchresult");
        List list=new ArrayList();
        for(int i=0;i<goodsList.size();i++)
            list.add(goodsList.get(i).getGid());

        JSONObject json=new JSONObject();
        json.put("arrays",list.toArray());
        out.print(json);

    }
    @RequestMapping("/addtocar")
    public void addtocar(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String gid=request.getParameter("gid");
        String userids= (String) session.getAttribute("loginid");
        String numbers=request.getParameter("numbers");
        int userid=Integer.parseInt(userids);
        int sid=Integer.parseInt(gid);
        int number=Integer.parseInt(numbers);
        //判断购物车是否有重复的   商品和人名
        Shopcar shopcar2=new Shopcar();
        shopcar2.setBelong(userid);
        shopcar2.setSid(sid);
        Shopcar shopcar3=addTocar.checksame(shopcar2);
        if(shopcar3==null){
        Shopcar shopcar=new Shopcar();
        shopcar.setBelong(userid);
        shopcar.setGsnum(number);
        shopcar.setSid(sid);
        addTocar.inserttocar(shopcar);
        }else{
            int carid=shopcar3.getCarid();
            int gsnum=shopcar3.getGsnum();
            Shopcar shopcar4=new Shopcar();
            shopcar4.setCarid(carid);
            shopcar4.setGsnum(number+gsnum);
            addTocar.updatecar(shopcar4);

        }

        out.print(jsonObject);

    }
    @RequestMapping("/showcar")
    public void showcar(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Shopcar shopcar1=new Shopcar();
        shopcar1.setBelong(userid);
        List<Shopcar> shopcars=addTocar.showcar(shopcar1);
        JSONObject jsonObject=new JSONObject();
        List list=new ArrayList();
        List list1=new ArrayList();
        for(int i=0;i<shopcars.size();i++) {
            list.add(shopcars.get(i).getGsnum());
            list1.add(shopcars.get(i).getSid());
        }
        jsonObject.put("listnum",list.toArray());
        jsonObject.put("listgid",list1.toArray());
        PrintWriter out=response.getWriter();
        out.print(jsonObject);

    }
    @RequestMapping("/selectnumfromcar")
    public void selectnumfromcar(HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        String userids= (String) session.getAttribute("loginid");
        JSONObject jsonObject=new JSONObject();
        if(userids==null||userids==""){
            jsonObject.put("shopcarcount",0);
        }else {
            int userid = Integer.parseInt(userids);
            Shopcar shopcar=new Shopcar();
            shopcar.setBelong(userid);
            int shopcarcount=addTocar.selectnumfromcar(shopcar);
            jsonObject.put("shopcarcount",shopcarcount);
        }
        out.print(jsonObject);


    }

    @RequestMapping("/deletefromcar")
    public void deletefromcar(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Shopcar shopcar=new Shopcar();
        shopcar.setBelong(userid);
        String gid=request.getParameter("gid");
        int gids=Integer.parseInt(gid);
        shopcar.setSid(gids);
        addTocar.deletegoods(shopcar);
        out.print(jsonObject);

    }
    @RequestMapping("/addtocollect")
    public void addtocollect(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String gid=request.getParameter("goodsnum");
        int gids=Integer.parseInt(gid);
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Collections collections2=new Collections();
        collections2.setBelong(userid);
        collections2.setCgid(gids);
        Collections collections3=collectionService.selectsame(collections2);
        if(collections3==null){
            Collections collections=new Collections();
            collections.setBelong(userid);
            collections.setCgid(gids);
            collectionService.addcollect(collections);
            jsonObject.put("result","success");
        }else{
            Collections collections4=new Collections();
            collections4.setBelong(userid);
            collections4.setCgid(gids);
            collectionService.deletecollect(collections4);
            jsonObject.put("result","concel");
        }

        out.print(jsonObject);

    }
    @RequestMapping("/checkcollect")
    public void checkcollect(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String gid=request.getParameter("gid");
        int gids=Integer.parseInt(gid);
        String userids= (String) session.getAttribute("loginid");
        if(userids==""||userids==null){
         jsonObject.put("result","success");
        }else {
            int userid=Integer.parseInt(userids);
            Collections collections2 = new Collections();
            collections2.setBelong(userid);
            collections2.setCgid(gids);
            Collections collections3 = collectionService.selectsame(collections2);
            if (collections3 == null) {
                jsonObject.put("result", "success");
            } else {
                jsonObject.put("result", "fail");
            }
        }
        out.print(jsonObject);
    }
    @RequestMapping("/deleteselect")
    public void deleteselect(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
            String userids= (String) session.getAttribute("loginid");
            int userid=Integer.parseInt(userids);
            String arrayss[]=request.getParameterValues("arrays[]");
            ArrayList<Integer> list=new ArrayList<Integer>();
            for(int i=0;i<arrayss.length;i++){
            list.add(Integer.parseInt(arrayss[i]));
            Shopcar shopcar=new Shopcar();
            shopcar.setBelong(userid);
            shopcar.setSid(list.get(i));
            addTocar.deletegoods(shopcar);

            }
             PrintWriter out=response.getWriter();
            JSONObject jsonObject=new JSONObject();
             out.print(jsonObject);

    }
    @RequestMapping("/ergodic")
    public void ergodiccollection(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Collections collections1=new Collections();
        collections1.setBelong(userid);
        List<Collections>list=collectionService.ergodiccollect(collections1);
        List list1=new ArrayList();
        for(int i=0;i<list.size();i++){
            list1.add(list.get(i).getCgid());
        }
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("gidlist",list1.toArray());
        PrintWriter out=response.getWriter();
        out.print(jsonObject);



    }
    @RequestMapping("/showreadyorder")
    public void showreadyorder(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        String sumprice= (String) session.getAttribute("sumprice");
        String goodid[]= (String[]) session.getAttribute("goodsid");
        ArrayList<Integer> goodnum=new ArrayList<Integer>();
        for(int i=0;i<goodid.length;i++){

            Shopcar shopcar=new Shopcar();
            shopcar.setBelong(userid);
            shopcar.setSid(Integer.parseInt(goodid[i]));
            Shopcar shopcar1=addTocar.checksame(shopcar);
            goodnum.add(shopcar1.getGsnum());

        }
        jsonObject.put("gidarray",goodid);
        jsonObject.put("sumprice",sumprice);
        jsonObject.put("goodnum",goodnum);
        out.print(jsonObject);

    }
    @RequestMapping("/deletecollect")
    public void deletecollect(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        String goodid=request.getParameter("goodid");
        Collections collections=new Collections();
        collections.setBelong(userid);
        collections.setCgid(Integer.parseInt(goodid));
        collectionService.deletecollect(collections);
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        out.print(jsonObject);

    }
}
