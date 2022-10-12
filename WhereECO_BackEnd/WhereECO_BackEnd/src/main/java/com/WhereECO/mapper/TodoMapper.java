package com.WhereECO.mapper;

import java.util.List;

import com.WhereECO.dto.Todo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface TodoMapper {

    @Select("SELECT * from todo")
    List<Todo> findAll();
    @Update("UPDATE todo SET " +
            " todo1 = NOT todo1, " +
            " todo2 = NOT todo1, " +
            " todo3 = NOT todo1 ")
    void update();
}
