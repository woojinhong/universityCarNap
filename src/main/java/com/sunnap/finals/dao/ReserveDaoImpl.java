package com.sunnap.finals.dao;

import com.sunnap.finals.domain.ReserveDto;
import com.sunnap.finals.domain.SearchDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ReserveDaoImpl {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.sunnap.finals.dao.VehicleMapper.";


    public List<ReserveDto> reservePage(String name) throws Exception {

        return session.selectList(namespace + "desc", name);
    }
}
