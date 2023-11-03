package com.itwillbs.cinepick.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TicketMapper {

//	int insertTicket(String allTickets, String seats);
	int insertTicket(@Param("allTickets") String allTickets, @Param("seats") String seats);

	int insertTickets(@Param("allTickets") String allTickets, @Param("seats") String seats, @Param("total") int total, @Param("sche_idx") int sche_idx);

	int insertPay(Map<String, Object> map);

	int insertBook(Map<String, Object> map);

}
