package com.tplus.gwland.uss.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.tplus.gwland.uss.service.Client;
import com.tplus.gwland.uss.service.ClientMapper;

@Service
public class ClientService  {
	 @Autowired ClientMapper mapper;
	 public int list;
	 
	 public List<Client> list(){
	  return mapper.list();
   }
	public void remove(Client c) {
		
	}
	public int delete(Client c) {
		return mapper.delete(c);
	}
}