package cn.itcast.service.impl;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import cn.itcast.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lijingyu
 * @date 2019/9/8 13:37
 */
@Service("AccountService")
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountDao accountDao;
    @Override
    public List<Account> findAll() {
        System.out.println("hhhhh");
        return accountDao.findAll();
    }

    @Override
    public void saveAccount(Account account) {
        System.out.println("1111111111111");
        accountDao.saveAccount(account);
    }
}
