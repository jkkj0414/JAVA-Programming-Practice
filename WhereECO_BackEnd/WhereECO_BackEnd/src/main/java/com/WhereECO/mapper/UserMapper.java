package com.WhereECO.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.WhereECO.dto.User;

@Mapper
public interface UserMapper {

	@Select("SELECT * FROM user WHERE id = #{id}")
	User findOne(int id);

	@Select("SELECT * FROM user WHERE userid = #{userid}")
	User findByUserid(String userid);

	@Select("SELECT * from user")
	List<User> findAll();

	@Insert("INSERT user (userid, pwd, name) VALUES (#{userid}, #{pwd}, #{name})")
	@Options(useGeneratedKeys=true, keyProperty="id")
	void insert(User user);

	@Update("UPDATE user SET " +
			" userid = #{userid}, " +
			" pwd = #{pwd}, " +
			" name = #{name}, " +
			"WHERE id = #{id} ")
	void update(User user);

	@Delete("DELETE FROM user WHERE id = #{id}")
	void delete(int id);
}
