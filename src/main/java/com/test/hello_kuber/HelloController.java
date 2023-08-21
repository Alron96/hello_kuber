package com.test.hello_kuber;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/", produces = MediaType.APPLICATION_JSON_VALUE)
public class HelloController {
    @GetMapping
    public String hello() {
        return "Hello, Kubernetes!!!";
    }
}
