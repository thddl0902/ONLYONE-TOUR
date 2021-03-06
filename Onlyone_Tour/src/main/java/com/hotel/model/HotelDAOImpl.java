package com.hotel.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onlyone.model.PageDTO;

@Repository
public class HotelDAOImpl implements HotelDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<HotelDTO> getAllHotelList() {
		
		return this.sqlSession.selectList("allHotelList");
	}

	@Override
	public List<HotelDTO> getDomList() {
		
		return this.sqlSession.selectList("hotelDomList");
	}

	@Override
	public List<HotelDTO> getOverList() {
		
		return this.sqlSession.selectList("hotelOverList");
	}

	@Override
	public List<HotelDTO> getHotelList() {
		
		return this.sqlSession.selectList("justHotelList");
	}

	@Override
	public List<HotelDTO> getPensionList() {
		
		return this.sqlSession.selectList("justPensionList");
	}

	@Override
	public HotelDTO getHotelCont(int num) {
		
		return this.sqlSession.selectOne("hotelCont", num);
	}

	// 리뷰
	@Override
	public List<HotelReviewDTO> getReviewList(int num) {
		
		return this.sqlSession.selectList("hotelreviewList", num);
	}

	@Override
	public String getReviewScore(int num) {
		
		return this.sqlSession.selectOne("hotelreviewScore", num);
	}

	@Override
	public int getReviewCount(int num) {
		
		return this.sqlSession.selectOne("hotelreviewCount", num);
	}

	@Override
	public int insertReview(HotelReviewDTO dto) {
		
		return this.sqlSession.insert("addHotelReview", dto);
	}
	
	@Override
	public List<HotelDTO> getSearchList(String keyword) {
		
		return this.sqlSession.selectList("searchHotelList", keyword);
	}

	//민경
	
	@Override
	public int getHotelListCount() {
		return this.sqlSession.selectOne("adminhotelCount");
		
	}

	@Override
	public List<HotelDTO> getHoteladminList(PageDTO dto) {
		return this.sqlSession.selectList("adminhotellist", dto);
		
	}

	@Override
	public int admininsertHotel(HotelDTO dto) {
		return this.sqlSession.insert("adminHotelAdd", dto);
		
	}

	@Override
	public HotelDTO adminHotelcont(int num) {
		return this.sqlSession.selectOne("adminHotelCont", num);
		
	}

	@Override
	public int adminupdateHotel(HotelDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int admindeleteHotel(int num) {
		return this.sqlSession.delete("hotelDel", num);
	}

	@Override
	public void adminupdateHotelSequence(int num) {
		this.sqlSession.update("seq", num);
		
	}

}
