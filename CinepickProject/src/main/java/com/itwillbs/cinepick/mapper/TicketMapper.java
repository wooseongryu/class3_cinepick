package com.itwillbs.cinepick.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TicketMapper {

//	int insertTicket(String allTickets, String seats);
	int insertTicket(@Param("allTickets") String allTickets, @Param("seats") String seats);

}
