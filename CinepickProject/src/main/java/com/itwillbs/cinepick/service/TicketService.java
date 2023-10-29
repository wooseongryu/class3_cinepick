package com.itwillbs.cinepick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.TicketMapper;

@Service
public class TicketService {
	
	@Autowired
	private TicketMapper mapper;

	public int registTicket(String allTickets, String seats) {
		return mapper.insertTicket(allTickets, seats);
	}

}