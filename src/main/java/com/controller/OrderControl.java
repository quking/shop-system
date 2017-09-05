package com.controller;

import com.alibaba.fastjson.JSONObject;
import com.pojo.Orders;
import com.pojo.Shopcar;
import com.service.AddTocar;
import com.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by root on 17-5-25.
 */
@Controller
@RequestMapping("mainpage")
public class OrderControl {

    @Resource
    private AddTocar addTocar;
    @Resource
    private OrderService orderService;

    @RequestMapping("/dealsubmit")
    public void dealsubmit(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String goodid[]= (String[]) session.getAttribute("goodsid");
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        for(int i=0;i<goodid.length;i++){
            Shopcar shopcar=new Shopcar();
            shopcar.setBelong(userid);
            shopcar.setSid(Integer.parseInt(goodid[i]));
            addTocar.deletegoods(shopcar);
        }
        out.print(jsonObject);
    }
    @RequestMapping("/addtoOrder")
    public void addtoOrder(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
        String goodid[]= (String[]) session.getAttribute("goodsid");
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        String a[]=request.getParameterValues("gnumbers[]");
        String price[]=request.getParameterValues("prices[]");
        for(int i=0;i<goodid.length;i++){
            Date ordertime1=new Date();
            SimpleDateFormat format=new SimpleDateFormat("yyyyddmmss");
            String orderid=format.format(ordertime1);
            Orders orders=new Orders();
            orders.setOrderid(orderid);
            orders.setOgid(Integer.parseInt(goodid[i]));
            orders.setGnum(Integer.parseInt(a[i]));
            orders.setSumprice(Double.parseDouble(price[i]));
            orders.setOrbelong(userid);
            Date ordertime=new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String dateString=formatter.format(ordertime);
            orders.setTime(dateString);
            orderService.insertorder(orders);
        }
        String sunprice=request.getParameter("suprice");
        session.setAttribute("sunprice",sunprice);
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        out.print(jsonObject);

    }
    @RequestMapping("/sumprices")
    public void updatereadyorder(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
       String price= (String) session.getAttribute("sunprice");
       JSONObject jsonObject=new JSONObject();
       jsonObject.put("price",price);
       PrintWriter out=response.getWriter();
       out.print(jsonObject);

    }
    @RequestMapping("/ergodicorders")
    public void ergodicorder(HttpServletResponse response,HttpSession session) throws IOException {
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Orders orders1=new Orders();
        orders1.setOrbelong(userid);
        Set<String> set=new HashSet<String>();
        Set<String> set1=new HashSet<String>();
        List<Orders>orders=orderService.ergodicorders(orders1);
        for(int i=0;i<orders.size();i++){
            set.add(orders.get(i).getOrderid());
            set1.add(orders.get(i).getTime());
        }
        List list=new ArrayList();
        List list1=new ArrayList();
        List list2=new ArrayList();

        for(String s:set){
            Orders orders2=new Orders();
            orders2.setOrderid(s);
            List<Orders>orderss=orderService.ergodicorder2(orders2);
            float result=0;
            for(int j=0;j<orderss.size();j++){
                result+=orderss.get(j).getSumprice();
            }
            list2.add(result);
            list.add(s);

        }
        for(String s1:set1){
            list1.add(s1);
        }

        JSONObject jsonObject=new JSONObject();
        jsonObject.put("orderlist",list);
        jsonObject.put("ordertime",list1);
        jsonObject.put("pricess",list2);
        PrintWriter out=response.getWriter();
        out.print(jsonObject);

    }
    @RequestMapping("/ergodicorder2")
    public void ergodicorder2(HttpServletResponse response,HttpServletRequest request) throws IOException {
        PrintWriter out=response.getWriter();
        Orders orders=new Orders();
        String orderid=request.getParameter("orderid");
        orders.setOrderid(orderid);
        List<Orders>orderitem=orderService.ergodicorder2(orders);
        List list1=new ArrayList();
        List list2=new ArrayList();
        List list3=new ArrayList();
        List list4=new ArrayList();

        for(int i=0;i<orderitem.size();i++){
            list1.add(orderitem.get(i).getTime());
            list2.add(orderitem.get(i).getGnum());
            list3.add(orderitem.get(i).getSumprice());
            list4.add(orderitem.get(i).getOgid());

        }
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("otime",list1);
        jsonObject.put("onum",list2);
        jsonObject.put("oprice",list3);
        jsonObject.put("ogid",list4);

        out.print(jsonObject);


    }
    @RequestMapping("/removeorder")
    public void removeorders(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        String orderid=request.getParameter("orderid");
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Orders orders=new Orders();
        orders.setOrderid(orderid);
        orders.setOrbelong(userid);
        orderService.removeorders(orders);
        JSONObject jsonObject=new JSONObject();
        out.print(jsonObject);



    }
}
