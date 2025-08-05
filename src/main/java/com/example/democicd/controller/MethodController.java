package com.example.democicd.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MethodController {
  @GetMapping
  public ResponseEntity<?> imports() {
    return ResponseEntity.ok("haha");
  }
}
