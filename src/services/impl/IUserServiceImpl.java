package services.impl;

import bean.Users;
import dao.IUserDao;
import dao.impl.IUserDaoImpl;
import services.IUserService;

public class IUserServiceImpl implements IUserService{
	// 创建Dao接口对象
	private IUserDao iuserDao = new IUserDaoImpl();

	@Override
	public boolean register(Users user) {
		int i = iuserDao.register(user);
		// 业务处理
		return i>0?true:false;
	}
	
	public boolean login(Users user) {
		int uid = iuserDao.login(user);
		return uid>0?true:false;
	}

}
