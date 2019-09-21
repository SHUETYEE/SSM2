package cn.itcast.service;

import cn.itcast.domain.Account;

import java.util.List;

/**
 * @author lijingyu
 * @date 2019/9/8 13:37
 */
public interface AccountService {

    List<Account> findAll();

    void saveAccount(Account account);
}
