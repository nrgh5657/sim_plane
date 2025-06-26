package com.simplane.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
@RequiredArgsConstructor
@Log4j
public class TestController {

    @GetMapping("/testresult")
    public void testresult() {}

    @GetMapping("/testlist")
    public void testlist() {}

    @GetMapping("/testget")
    public void testget() {}
}
