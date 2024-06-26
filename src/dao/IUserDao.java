package dao;

import bean.Users;

public interface IUserDao {
	
	/**
	 * 用户注册
	 * @param user
	 * @return >0:success
	 */
	public int register(Users user);
	
	/**
	 * 用户登录
	 * @param user
	 * @return int: 当前登录用户的uid
	 */
	public int login(Users user);

}
