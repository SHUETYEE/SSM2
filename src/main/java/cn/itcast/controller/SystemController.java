package cn.itcast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lijingyu
 * @date 2019/9/21 12:14
 */
@Controller
@RequestMapping("/system")
public class SystemController {

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/home")
    public String system(){
        return "home";
    }

    @RequestMapping("/file")
    public String file(){
        return "file";
    }

    @RequestMapping("/statistic")
    public String statistic(){
        return "statistic";
    }

    @RequestMapping("/log")
    public String log(){
        return "log";
    }

    @RequestMapping("/set")
    public String set(){
        return "set";
    }

    @RequestMapping("/user")
    public String user(){
        return "user";
    }


}
