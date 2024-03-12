package com.spring.adoption.possible.dao;

import java.util.List;

import com.spring.adoption.possible.vo.AdoptionPossibleVO;

public interface AdoptionPossibleDAO {
	public List<AdoptionPossibleVO>adoptionPossibleList(AdoptionPossibleVO apvo);
}
