package july.lease.controller;

import java.util.HashMap;
import java.util.Map;

public class CommonRestController {
	
	private final String REST_WRITE= "���";
	private final String REST_EDIT= "����";
	private final String REST_DELETE= "����";
	private final String REST_SELECT= "��ȸ";
	protected final String REST_SUCCESS = "success";
	protected final String REST_FAIL = "fail";
	
	/**
	 * �Է�, ����, ������ ��� int���� ��ȯ
	 * ����� �޾Ƽ� Map�� ���� �� ��ȯ
	 */
	public Map<String, Object> responseMap(int res, String msg){
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(res>0) {
			map.put("result", REST_SUCCESS);
			map.put("msg", msg+"�Ǿ����ϴ�");
		} else {
			map.put("result", REST_FAIL);
			map.put("msg", msg+"�� ���ܹ߻�");
		}
		
		return map;
	}
	
	public Map<String, Object> responseWriteMap(int res){
		return responseMap(res, REST_WRITE);
	}
	public Map<String, Object> responseEditMap(int res){
		return responseMap(res, REST_EDIT);
	}
	public Map<String, Object> responseDeleteMap(int res){
		return responseMap(res, REST_DELETE);
	}
	public Map<String, Object> responseMap(String result, String msg){
		Map<String, Object> map = new HashMap<String, Object>();
		
			map.put("result", result);
			map.put("msg", msg);
		
		return map;
	}
}