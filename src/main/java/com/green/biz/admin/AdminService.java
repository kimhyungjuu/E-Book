package com.green.biz.admin;

import com.green.biz.dto.ManagerVO;

public interface AdminService {
	
	int managerCheck(ManagerVO vo);
	
	ManagerVO getManager(String id);

}
