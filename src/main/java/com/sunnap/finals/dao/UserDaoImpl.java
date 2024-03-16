package com.sunnap.finals.dao;


import com.sunnap.finals.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.sunnap.finals.dao.UserMapper.";

    @Override
    public int count() throws Exception {
        return session.selectOne(namespace+"count");
    } // T selectOne(String statement)

    @Override
    public int insert(UserDto userDto) throws Exception{
        return session.insert(namespace+"insert", userDto);
    }
}
