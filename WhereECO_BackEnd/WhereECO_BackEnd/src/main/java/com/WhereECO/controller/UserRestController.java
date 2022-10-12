package com.WhereECO.controller;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.WhereECO.dto.User;
import com.WhereECO.mapper.UserMapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class UserRestController {
    @Autowired
    UserMapper userMapper;

    @GetMapping("/list")
    public List<User> list(Model model) {
        List<User> users = userMapper.findAll();
        model.addAttribute("user", users);
        return users;
    }

    @GetMapping("join")
    public String create(Model model) {
        model.addAttribute("user", new User());
        return "user/edit1";
    }

    @PostMapping("join")
    public String create(Model model, User user) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String securePassword = encoder.encode(user.getPwd());
        user.setPwd(securePassword);
        userMapper.insert(user);
        return "redirect:login";
    }

    @PostMapping("/login")
    public void login(HttpServletResponse response, HttpSession session, String userid, String pwd) throws Exception {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        User user = userMapper.findByUserid(userid);
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        if (user != null) {
            if (encoder.matches(pwd, user.getPwd())) {
                session.setAttribute("userid", user.getUserid());
                session.setAttribute("name", user.getName());

                out.println("<script>alert('login 성공'); location.href='/user/map';</script>");
                out.flush();
            } else {
                out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.href='/user/login';</script>");
                out.flush();
            }
        } else {
            out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다. 회원가입을 진행해주세요.'); location.href='/user/edit1';</script>");
            out.flush();
        }
    }

    @GetMapping("/login")
    public String login() {
        return "user/login";
    }
}
