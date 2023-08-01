package july.lease.service;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import july.lease.common.FileStore;
import july.lease.dao.product.ProductDao;
import july.lease.dao.productImage.ProductImageDao;
import july.lease.domain.Product;
import july.lease.domain.ProductImage;
import july.lease.dto.AddProductDto;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class ProductService_kdh {
	
	private final ProductDao productDao;
	private final ProductImageDao productImageDao;
	private final FileStore fileStore;
	
	@Transactional
	public Long addProduct(Long memberId, AddProductDto productDto) throws IOException {
		
		Product product = new Product(memberId, productDto.getCategoryId(), productDto.getProductName(),
										productDto.getProductPrice(), productDto.getProductContent()
										, "서울"); //서울은 임의로 만듬
		Product saveProduct = productDao.save(product);
		
		List<ProductImage> images = fileStore.storeFiles(productDto.getImages());
		setProductIdInImages(saveProduct.getProductId(), images);
		productImageDao.save(images);
		
		return saveProduct.getProductId();
	}
	
	// ProductImage 객체에 productId를 넣는 로직
	private void setProductIdInImages(Long productId, List<ProductImage> images) {
		images.stream()
		.forEach(image -> {
			image.setProductId(productId);
		});
	}
}
