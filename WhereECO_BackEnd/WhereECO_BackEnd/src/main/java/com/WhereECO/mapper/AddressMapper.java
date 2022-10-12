package com.WhereECO.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.WhereECO.dto.Address;

@Mapper
public interface AddressMapper {
    // 아이디로 정보 가져오기
    @Select("SELECT * FROM address WHERE id = #{id}")
    Address findOne(int id);

    // 이름으로 정보 가져오기
    @Select("SELECT * FROM address WHERE placeName = #{placeName}")
    Address findByPlaceName(String placeName);

    // 위도 경도 가져오기
    @Select("SELECT latitude, longitude FROM address WHERE placeName = #{placeName}")
    Address findByLocationInfo(String placeName);

    // 모두 가져오기
    @Select("SELECT * from address")
    List<Address> findAll();

}
