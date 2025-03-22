package com.kh.mini.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mini.dto.UsersDto;
import com.kh.mini.mapper.UsersMapper;

@Repository
public class UsersDao {

	@Autowired
	private UsersMapper usersMapper;
	
	//가입수정삭제
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void insert(UsersDto usersDto) {
		String sql= "insert into users( "
				+ "users_email, users_pw_users_contact, users_level, users_nickname)"
				+ " value(? ,? ,? ,? ,? ,?)";
		Object[] data = {usersDto.getUsersEmail(), usersDto.getUsersPw(), usersDto.getUsersContact(),
							usersDto.getUsersLevel(), usersDto.getUsersNickname()};
		
		jdbcTemplate.update(sql,data);
	}
	
	public boolean update(UsersDto usersDto) {
		String sql = "update users set users_email=? , users_pw=?, users_contact=?, "
				+ "users_level=?, users_nickname= ? ";
		
		Object[] data = {usersDto.getUsersEmail(), usersDto.getUsersPw(), usersDto.getUsersContact(),
				usersDto.getUsersLevel(), usersDto.getUsersNickname()};
		
		return jdbcTemplate.update(sql,data) >0;
	}
	
	public boolean delete(String usersEmail) {
		String sql = "delete users where users_email=?";
		Object[] data = {usersEmail};
		
		return jdbcTemplate.update(sql,data)>0;
	}
	
	public UsersDto selectOne(String usersEmail) {
		String sql = "select*from users where users_email=?";
		Object[] data = {usersEmail};
		List<UsersDto> list = jdbcTemplate.query(sql, usersMapper, data);
		return list.isEmpty() ? null : list.get(0);
	}
}
