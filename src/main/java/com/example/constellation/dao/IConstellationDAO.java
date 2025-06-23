package com.example.constellation.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.constellation.dto.ConstellationDto;

@Mapper
public interface IConstellationDAO {
	
	List<ConstellationDto> selectAll();
}
