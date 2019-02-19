package com.example.music.eminem.controller;


import java.time.Instant;
import java.util.Map;
import java.util.HashMap;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

@RestController
public class Index {

  @GetMapping("/")
  public ResponseEntity<Map<String, String>> getPing() {
    Map<String, String> response = new HashMap<String, String>();
	response.put("utc-timestamp", Instant.now().toString());
    response.put("message", "Ping from java-service");
    return new ResponseEntity<>(response, HttpStatus.OK);
  }

}