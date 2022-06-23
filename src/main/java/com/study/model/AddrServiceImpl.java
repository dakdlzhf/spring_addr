package com.study.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.study.model.AddrServiceImpl")
public class AddrServiceImpl implements AddrService {
  
  @Autowired
  private AddrMapper addrMapper;
  
  //리스트
  public List<AddrDTO> list(Map map) {
    // TODO Auto-generated method stub
    return addrMapper.list(map);
  }
  //토탈
  public int total(Map map) {
    
    return addrMapper.total(map);
  }
  //생성
  public int create(AddrDTO dto) {
    
    return addrMapper.create(dto);
  }
  //읽기
  public AddrDTO read(int addressnum) {
   
    return addrMapper.read(addressnum);
  }
  //수정
  public int update(AddrDTO dto) {
    
    return addrMapper.update(dto);
  }
  //삭제
  public int delete(int addressnum) {
    return addrMapper.delete(addressnum);
  }
  
}
