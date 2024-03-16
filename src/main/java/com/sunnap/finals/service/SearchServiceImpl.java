package com.sunnap.finals.service;

import com.sunnap.finals.dao.SearchDaoImpl;
import com.sunnap.finals.domain.SearchDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImpl {
    @Autowired
    SearchDaoImpl searchDao;

    public List<SearchDto> searchOption(String category, String option) throws Exception {

        return searchDao.search(category,option);
    }
}
