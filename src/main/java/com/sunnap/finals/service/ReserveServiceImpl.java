package com.sunnap.finals.service;

import com.sunnap.finals.dao.ReserveDaoImpl;
import com.sunnap.finals.dao.SearchDaoImpl;
import com.sunnap.finals.domain.ReserveDto;
import com.sunnap.finals.domain.SearchDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReserveServiceImpl {
    @Autowired
    ReserveDaoImpl reserveDao;

    public List<ReserveDto> reserverDesc(String name) throws Exception {

        return reserveDao.reservePage(name);
    }
}
