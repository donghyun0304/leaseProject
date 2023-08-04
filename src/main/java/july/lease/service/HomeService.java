package july.lease.service;

import java.util.List;

import org.springframework.stereotype.Service;

import july.lease.dao.header.HeaderDao;
import july.lease.dao.home.HomeDao;
import july.lease.dao.product.ProductDao;
import july.lease.dao.productImage.ProductImageDao;
import july.lease.domain.Product;
import july.lease.dto.HomeItemDto;
import july.lease.dto.HomePopularItemDto;
import july.lease.dto.HomeResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class HomeService {

	private final HomeDao homeDao;
	
	public List<HomePopularItemDto> papularItem(){
		List<HomePopularItemDto> popularList = homeDao.popularItem();
				
		return popularList;
	}
	
	public List<HomeItemDto> getAllItem(){
		List<HomeItemDto> allList = homeDao.getAllItem();
		// 무한반복 -> 자기자신을 호출
		// return getAllItem(); 
		return allList;
	}
		
}
