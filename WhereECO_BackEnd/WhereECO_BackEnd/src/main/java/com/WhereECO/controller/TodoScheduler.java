package com.WhereECO.controller;

import com.WhereECO.mapper.TodoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class TodoScheduler {
    @Autowired
    TodoMapper todoMapper;

    @Scheduled(fixedDelay = 5000)	// 5초마다
//    @Scheduled(cron = "0 0 0 * * ?")    // 매일 00시 정각
    public void todoTask() {
        todoMapper.update();
        System.out.println("log: test");
    }
}
