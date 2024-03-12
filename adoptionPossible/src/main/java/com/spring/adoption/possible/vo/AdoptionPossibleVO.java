package com.spring.adoption.possible.vo;

import com.spring.adoption.vo.AdoptionVO;
import com.spring.animal.vo.AnimalVO;
import com.spring.map.vo.MapVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class AdoptionPossibleVO {
	AnimalVO animalvo;
	AdoptionVO adoptionvo2;
	MapVO mapvo;
}
