package com.sunnap.finals.dao;

import com.sunnap.finals.domain.SearchDto;
import com.sunnap.finals.domain.VehicleDto;
import com.sunnap.finals.service.SearchServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class VehicleDaoImplTest {
    @Autowired
    private SearchServiceImpl searchService;
    @Autowired
    private SearchDaoImpl searchDao;

    @Test
    public void test() throws Exception {

        
        List<SearchDto> dto = searchDao.search("sedan","highest");
        for (SearchDto dtos : dto) {
            System.out.println("Name: " + dtos);


        }
    }
}