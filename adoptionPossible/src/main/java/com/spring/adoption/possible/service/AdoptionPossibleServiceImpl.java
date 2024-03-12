package com.spring.adoption.possible.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.adoption.possible.dao.AdoptionPossibleDAO;
import com.spring.adoption.possible.vo.AdoptionPossibleVO;


import lombok.Setter;

@Service
public class AdoptionPossibleServiceImpl implements AdoptionPossibleService{
	
	@Setter(onMethod_=@Autowired)
	private AdoptionPossibleDAO adoptionPossibleDAO;
	
	@Override
	public List<AdoptionPossibleVO> adoptionPossibleList(AdoptionPossibleVO apvo) {
		List<AdoptionPossibleVO> list = null;
		list = adoptionPossibleDAO.adoptionPossibleList(apvo);
		return list;
	}
	
}
