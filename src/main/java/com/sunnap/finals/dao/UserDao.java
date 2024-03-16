package com.sunnap.finals.dao;

import com.sunnap.finals.domain.UserDto;

public interface UserDao {
    int count() throws Exception // T selectOne(String statement)
    ;

    int insert(UserDto userDto) throws Exception;
}
