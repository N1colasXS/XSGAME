package services;

import bean.Users;

public interface IUserService {
	
	/**
	 * 接收用户注册信息完成注册
	 * @param user 注册用户对象
	 * @return true:success
	 */
	public boolean register(Users user);
	
	/**
	 * 用户登录
	 * @param user
	 * @return true: success
	 */
	public boolean login(Users user);
	

}
