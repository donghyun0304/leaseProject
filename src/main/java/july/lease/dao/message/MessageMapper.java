package july.lease.dao.message;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.Message;
import july.lease.dto.OrderMessageDto;

@Mapper
public interface MessageMapper {
	
	// 주문별 메세지 리스트
	List<Message> getOrderMessageList(Long orderId);

	// 메세지에 대한 제품 정보
	OrderMessageDto getOneProductInfo(Long orderId);
	
	// 전체 메세지 리스트
	List<Message> getAllMessageList();
}
