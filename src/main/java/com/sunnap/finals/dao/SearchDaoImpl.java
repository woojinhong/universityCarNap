package com.sunnap.finals.dao;

import com.sunnap.finals.domain.SearchDto;
import com.sunnap.finals.domain.VehicleDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class SearchDaoImpl {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.sunnap.finals.dao.SearchMapper.";


    public List<SearchDto> search(String category,String option) throws Exception {
        Map map = new HashMap();
        map.put("category", category);
        map.put("option", option);
        return session.selectList(namespace + "search", map);
    }
}
