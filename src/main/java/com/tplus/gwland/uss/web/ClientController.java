package com.tplus.gwland.uss.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import com.tplus.gwland.uss.service.*;

import lombok.Delegate;

@RestController
@RequestMapping("/client")
public class ClientController {
	 private final Logger logger = LoggerFactory.getLogger(this.getClass());
	    @Autowired
	    ClientService clientService;
	    
	    @Autowired ClientMapper clientMapper;
	    
	    @PostMapping("/insert")
	    public Map<?,?> insert(@RequestBody Client c){
	    	var map = new HashMap<>();
	    	logger.info("고객데이터 입력");
	    	map.put("message", (clientMapper.insert(c) == 1) ? "SUCCESS":"FAILURE");
	    	return map;
	    }
	    
	    @GetMapping("/list")
	    public Map<?, ?> list(){
	    	var map = new HashMap<>();
	    	logger.info("모든 고객데이터 불러오기");
	    	map.put("list", clientService.list());
	    	map.put("message", (clientService.list == 1) ? "SUCCESS":"FAILURE");
	        return map;
	    }
	    
	    @GetMapping("/detail/{cliId}")
	    public Map<?, ?> detail(@PathVariable String cliId){
	    	var map = new HashMap<>();
	    	logger.info("불러오는 고객 아이디 : " + cliId);
	    	map.put("detail", clientService.detail(cliId));
	    	map.put("message", (clientService.detail(cliId) != null) ? "SUCCESS":"FAILURE");
	    	return map;
	    }
	    
	    @DeleteMapping("/delete")
		public Map<?,?> delete(@RequestBody Client c){
			var map = new HashMap<>();
			logger.info("고객데이터 삭제");
			map.put("message", clientMapper.delete(c)==1 ? "SUCCESS" : "FAILURE");
			return map;
		}
	    
	    @PutMapping("/update")
		public Map<?,?> update(@RequestBody Client c){
			var map = new HashMap<>();
			logger.info("수정된 고객 아이디: " + clientMapper.update(c));
			logger.info("고객데이터 수정값 : " + c);
			map.put("message", clientMapper.update(c)==1 ? "SUCCESS" : "FAILURE");
			return map;
		}
	    

}






