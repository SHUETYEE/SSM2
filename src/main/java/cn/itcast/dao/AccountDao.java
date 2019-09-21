package cn.itcast.dao;

import cn.itcast.domain.Account;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.LineInputStream;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author lijingyu
 * @date 2019/9/8 13:35
 */
@Repository
public interface AccountDao {

    @Select("select * from account")
    List<Account> findAll();

    @Update("insert into account(name,money) value (#{name},#{money})")
    void saveAccount(Account account);
}
