package com.example.constellation.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.constellation.dto.ConstellationDto;

@Mapper
public interface IConstellationDAO {
	
	List<ConstellationDto> selectAll();
	ConstellationDto selectById(@Param("id")int id);
}
