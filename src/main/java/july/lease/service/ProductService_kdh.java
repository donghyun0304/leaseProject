package july.lease.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import july.lease.common.FileStore;
import july.lease.dao.product.ProductDao;
import july.lease.dao.productImage.ProductImageDao;
import july.lease.dao.rentDate.RentDateDao;
import july.lease.domain.Product;
import july.lease.domain.ProductImage;
import july.lease.domain.RentDate;
import july.lease.dto.AddProductDto;
import july.lease.dto.EditProductResponseDto;
import july.lease.dto.RentOrderStatusDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService_kdh {
	
	private final ProductDao productDao;
	private final ProductImageDao productImageDao;
	private final RentDateDao rentDateDao;
	private final FileStore fileStore;
	
	@Transactional
	public Long addProduct(Long memberId, AddProductDto productDto) throws IOException {
		
		Product product = new Product(memberId, productDto.getCategoryId(), productDto.getProductName(),
										productDto.getProductPrice(), productDto.getProductContent()
										, "서울"); //우선 서울로 넣어놓음
		Product saveProduct = productDao.save(product);
		
		List<ProductImage> images = fileStore.storeFiles(productDto.getImages());
		setProductIdInImages(saveProduct.getProductId(), images);
		productImageDao.save(images);
		
		saveRentDates(saveProduct.getProductId(),productDto.getRentAbleStartDate(), 
				productDto.getRentAbleEndDate());

		return saveProduct.getProductId();
	}
	
	// ProductImage에 productId 저장
	private void setProductIdInImages(Long productId, List<ProductImage> images) {
		images.stream()
		.forEach(image -> {
			image.setProductId(productId);
		});
	}
	
	private void saveRentDates(Long productId, List<String> startDates,
								List<String> endDates) {
		
		List<RentDate> rentDateList = new ArrayList<>();
		int rentDatesSize = startDates.size();
		
		for(int i=0; i<rentDatesSize; i++) {
			RentDate rentDate = new RentDate(productId, startDates.get(i),
									endDates.get(i));
			rentDateList.add(rentDate);
		}
		
		rentDateDao.save(rentDateList);
		
	}
	
	public EditProductResponseDto findByProductIdForEdit(Long productId) {
		Product product = productDao.findByProductIdForEdit(productId);
		List<ProductImage> images = productImageDao.findAllByProductId(productId);
		List<RentDate> rentDates = rentDateDao.findByProductId(productId);
		
		EditProductResponseDto editProductDto = new EditProductResponseDto(
				product.getMemberId(), product.getProductName(), product.getProductPrice(),
				product.getProductContent(), product.getCategoryId(), product.getCategoryId3(),
				rentDates, images, product.getProductEndStatus(), product.getLocation()
				);
		log.info("findByProductIdForEdit editProductDto={}",editProductDto);
		return editProductDto;
	}
	
	public List<RentOrderStatusDto> checkOrders(Long productId){
		return rentDateDao.checkOrders(productId);
	}
}
