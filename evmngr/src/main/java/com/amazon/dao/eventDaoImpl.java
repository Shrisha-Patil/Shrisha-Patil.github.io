package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.sql.DataSource;
 
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.amazon.model.Event;
 
public class eventDaoImpl {
 
    private JdbcTemplate jdbcTemplate;
 
    public eventDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
        
    public boolean insertEv(String event_id,String name,String poster,String trailer,String category,String genre,String synopsis,Time duration,Date date,String cast) {
		boolean x=false;
		String sql="insert into event values('"+"mani@gmail.com"+"','"+event_id+"','"+name+"','"+poster+"','"+trailer+"','"+category+"','"+genre+"','"+synopsis+"','"+duration+"','"+date+"','"+cast+"')";
		if(jdbcTemplate.update(sql)>0) return true;
		return x;
    }
    public boolean insertVe(String venue_id,String v_name,String city,String address) {
		boolean x=false;
		String sql="insert into venue values('"+venue_id+"','"+v_name+"','"+city+"','"+address+"')";
		if(jdbcTemplate.update(sql)>0) return true;
		return x;
    }
    public boolean insertSh(String event_id,String venue_id,String show_id,Date date,Time time,Double cost,String seat_status) {
		boolean x=false;
		String sql="insert into shows values('"+event_id+"','"+venue_id+"','"+show_id+"','"+date+"','"+time+"',"+cost+",'"+seat_status+"')";
		if(jdbcTemplate.update(sql)>0) return true;
		return x;
    }
    public List<Event> getEventsbyId(String event_id){    
		String sql="select name,poster,trailer,category,genre,synopsis,duration,date,cast from event where event_id=?";    
	    return jdbcTemplate.query(sql, new Object[]{event_id},new RowMapper<Event>(){
	    	public Event mapRow(ResultSet rs, int row) throws SQLException {    
	            Event ev=new Event();
				ev.setName(rs.getString("name"));
				ev.setPoster(rs.getString("poster"));
				ev.setTrailer(rs.getString("trailer"));
				ev.setCategory(rs.getString("category"));
				ev.setGenre(rs.getString("genre"));
				ev.setSynopsis(rs.getString("synopsis"));
				ev.setDuration(rs.getTime("duration"));
				ev.setDate(rs.getDate("date"));
				ev.setCast(rs.getString("cast"));
				return ev;  
	        }    
	    });    
	}
    
    public boolean delete(String event_id) {
    	boolean x=false;
		String sql="delete from event where event_id=?";
		if(jdbcTemplate.update(sql)>0) return true;
		return x;
    }
    public List<Event> getVenues(){    
		String sql="select v_name,city,address from venue";    
	    return jdbcTemplate.query(sql,new RowMapper<Event>(){
	    	public Event mapRow(ResultSet rs, int row) throws SQLException {    
	            Event ev=new Event();
				ev.setV_name(rs.getString("v_name"));
				ev.setCity(rs.getString("city"));
				ev.setAddress(rs.getString("address"));
				return ev;  
	        }    
	    });    
	}
 
}
