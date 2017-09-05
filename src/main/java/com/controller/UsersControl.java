package com.controller;

import com.alibaba.fastjson.JSONObject;
import com.pojo.Users;
import com.service.UserService;
import com.util.mail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by root on 17-5-12.
 */
@Controller
@RequestMapping("mainpage")
public class UsersControl {

    @Resource
    private UserService userService;

    @RequestMapping("/{name}")
    public String formation(@PathVariable String name) {
        return "/mainpage/"+name;
    }


    @RequestMapping("/sendmail")
    public void sendmail(mail mail, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
        PrintWriter out = response.getWriter();
        JSONObject jsonObject = new JSONObject();
        String email = request.getParameter("mail");
        Users users=new Users();
        users.setEmail(email);
        List<Users> list=userService.checkmailregister(users);
        if(list.size()==0){//表示此邮箱没有被注册过
        String mailcode = mail.send(email);
        session.setAttribute("mailcode", mailcode);
        jsonObject.put("result","success");
        }else {
            jsonObject.put("result","fail");
        }
        out.print(jsonObject);

    }

    @RequestMapping("/checkmailcode")
    public void checkcode(HttpServletResponse response, HttpSession session, HttpServletRequest request) throws IOException {
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        String code = (String) session.getAttribute("mailcode");
        System.out.println(code);
        String ecode = request.getParameter("ecode");
        if (code.equals(ecode))
            json.put("result", "success");
        else
            json.put("result", "fail");
        out.print(json);

    }



    @RequestMapping("/halfinsert")
    public void halfinsert(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {

        PrintWriter out = response.getWriter();
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        session.setAttribute("emailss",email);
        JSONObject jsonObject = new JSONObject();
        Users users = new Users();
        users.setEmail(email);
        users.setUpassword(password);
        userService.userregister(users);

        Users users1=new Users();
        users1.setEmail(email);
        Users users2=userService.selectidbtpsw(users1);
        session.setAttribute("loginid",users2.getUserid()+"");
        out.print(jsonObject);
    }

    @RequestMapping("/logincheck")
    public void logincheck(HttpServletResponse response, HttpServletRequest request,HttpSession session) throws IOException {
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        String username = request.getParameter("username");
        String upassword = request.getParameter("password");
        Users users3=new Users();
        users3.setUpassword(upassword);
        users3.setUsername(username);
        Users users4=new Users();
        users4.setEmail(username);
        users4.setUpassword(upassword);
        Users users = userService.loginb(users3);//帐号验证
        Users users1 = userService.loginb2(users4);//邮箱登录验证
        if (users != null || users1 != null) {
            session.setAttribute("loginpassword",upassword);
            if(users!=null){
                int userid=users.getUserid();
                session.setAttribute("loginid",userid+"");
            }else{
                int userid1=users1.getUserid();
                session.setAttribute("loginid",userid1+"");
            }
            json.put("result", "success");
        } else {
            json.put("result", "fail");
        }
        out.print(json);
    }

    @RequestMapping("/updatehalf")
    public void updatehalf(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        PrintWriter out = response.getWriter();
        String nickname = request.getParameter("nickname");
        String realname = request.getParameter("realname");
        String phonenumber = request.getParameter("phonenumber");
        String email = (String) session.getAttribute("emailss");
        int userid;
        if(email!=null&&email!=""){
            Users users1=new Users();
            users1.setEmail(email);
            Users users2=userService.selectidbtpsw(users1);
             userid=users2.getUserid();

        }else{
            String userids= (String) session.getAttribute("loginid");
             userid=Integer.parseInt(userids);

        }
        Users users = new Users();
        users.setUsername(nickname);
        users.setRealname(realname);
        users.setPhonenumber(phonenumber);
        users.setUserid(userid);
        userService.updatehalf(users);
        JSONObject ison = new JSONObject();
        out.print(ison);
    }
    @RequestMapping("/chpassword")
    public void chpsw(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException {
        PrintWriter out=response.getWriter();
        String upassword=request.getParameter("password");
        String oldpsw=request.getParameter("oldpsw");
        String oldpassword= (String) session.getAttribute("loginpassword");
        String userids= (String) session.getAttribute("loginid");


        int userid=Integer.parseInt(userids);
        JSONObject jsonObject=new JSONObject();
        if(oldpassword.equals(oldpsw)){
            jsonObject.put("result","success");
            Users users=new Users();
            users.setUpassword(upassword);
            users.setUserid(userid);
            userService.updatepsw(users);
        }else{
            jsonObject.put("result","fail");
        }

    out.print(jsonObject);
    }
    @RequestMapping("/chemail")
    public void chemail(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out =response.getWriter();
        Users users=new Users();
        String input=request.getParameter("input");
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        users.setUserid(userid);
        users.setEmail(input);
        userService.updateemail(users);
        JSONObject jsonObject=new JSONObject();
        out.print(jsonObject);


    }
    @RequestMapping("/saverealname.do")
    public void saverealname(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        Users users=new Users();
        String realname=request.getParameter("realname");
        String idcard=request.getParameter("idcard");
        users.setRealname(realname);
        users.setIdcard(idcard);
        users.setUserid(userid);
        userService.realnameconfirm(users);
        JSONObject json=new JSONObject();
        out.print(json);


    }
   @RequestMapping("/addressmana")
    public void manager(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        String reciever=request.getParameter("reciever");
        String address=request.getParameter("address");
        String concret=request.getParameter("concreadd");
       String userids= (String) session.getAttribute("loginid");
       int userid=Integer.parseInt(userids);
       Users users=new Users();
       users.setReciever(reciever);
       users.setAddress(address);
       users.setConcreadd(concret);
       users.setUserid(userid);
       userService.addressmana(users);
       JSONObject json=new JSONObject();
       out.print(json);
  }
  @RequestMapping("/recievermsge")
    public void reciveradd(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String address=request.getParameter("addr");
        String concreadd=request.getParameter("concreadd");
        String reciever=request.getParameter("reciever");
        String phone=request.getParameter("phone");

      String userids= (String) session.getAttribute("loginid");
      int userid=Integer.parseInt(userids);
      Users users1=new Users();
      users1.setUserid(userid);
      users1.setAddress(address);
      users1.setConcreadd(concreadd);
      users1.setReciever(reciever);
      users1.setPhonenumber(phone);
      userService.recievermsg(users1);
      out.print(jsonObject);

  }
  @RequestMapping("/sumprice")
    public void sumprice(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
        PrintWriter out=response.getWriter();
        JSONObject jsonObject=new JSONObject();
        String array[]=request.getParameterValues("array[]");
        String sumprice=request.getParameter("sum");
        session.setAttribute("goodsid",array);
        session.setAttribute("sumprice",sumprice);
        out.print(jsonObject);

  }
  @RequestMapping(value="/updateaddress")
    public void updateaddress(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {

      String userids= (String) session.getAttribute("loginid");
      int userid=Integer.parseInt(userids);
      Users users=new Users();
      users.setUserid(userid);
      Users users1=userService.selectall(users);
      JSONObject jsonObject=new JSONObject();
        response.setContentType("text/html;charset=UTF-8");
      PrintWriter out=response.getWriter();
      jsonObject.put("reciever",users1.getReciever());
      jsonObject.put("telephone",users1.getPhonenumber());
      jsonObject.put("address",users1.getAddress());
      jsonObject.put("concreadd",users1.getConcreadd());
    out.print(jsonObject);
  }
  @RequestMapping("/loginout")
    public void loginout(HttpSession session,HttpServletResponse response) throws IOException {
        PrintWriter out=response.getWriter();
        session.invalidate();
        JSONObject jsonObject=new JSONObject();
        out.print(jsonObject);
  }
  @RequestMapping("/iflogin")
    public void iflogin(HttpSession session,HttpServletResponse response) throws IOException {
        PrintWriter out=response.getWriter();
      JSONObject jsonObject=new JSONObject();
      String userids= (String) session.getAttribute("loginid");
      if(userids==null||userids==""){
          jsonObject.put("nicknames","failure");
      }else {
          Users users=new Users();
          users.setUserid(Integer.parseInt(userids));
          Users users1=userService.selectall(users);
          jsonObject.put("nicknames",users1.getUsername());

      }
      out.print(jsonObject);
  }
    @RequestMapping("/forgetpsw")
    public void sendandcheck(mail mail, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
        PrintWriter out = response.getWriter();
        JSONObject jsonObject = new JSONObject();
        String email = request.getParameter("mail");
        Users users=new Users();
        users.setEmail(email);
        List<Users> list=userService.checkmailregister(users);
        if(list.size()==0){//表示此邮箱没有被注册过
            jsonObject.put("result","fail");
        }else {
            String mailcode = mail.send(email);
            session.setAttribute("mailcode", mailcode);
            jsonObject.put("result","success");
        }
        out.print(jsonObject);

    }
    @RequestMapping("/findbackpsw")
    public void findbackpsw(HttpServletRequest request,HttpServletResponse response) throws IOException {

        String password=request.getParameter("passwordss");
        String email=request.getParameter("emaill");
        Users users=new Users();
        users.setEmail(email);
        users.setUpassword(password);
        userService.findbackpsw(users);
        JSONObject jsonObject=new JSONObject();
        PrintWriter out=response.getWriter();
        out.print(jsonObject);
    }

    @RequestMapping("/showinformation")
    public void showinformation(HttpSession session,HttpServletResponse response,HttpServletRequest request) throws IOException {
        String userids= (String) session.getAttribute("loginid");
        int userid=Integer.parseInt(userids);
        response.setCharacterEncoding("utf-8");
        JSONObject jsonObject=new JSONObject();
        PrintWriter out=response.getWriter();
        Users users=new Users();
        users.setUserid(userid);
        Users users1=userService.selectall(users);
        jsonObject.put("email",users1.getEmail());
        jsonObject.put("tel",users1.getPhonenumber());
        jsonObject.put("idcard",users1.getIdcard());
        jsonObject.put("address",users1.getAddress());
        jsonObject.put("realname",users1.getRealname());
        out.print(jsonObject);

    }

}
