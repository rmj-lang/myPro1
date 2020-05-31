package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.typeDao;
import zua.pojo.type;

import java.util.List;

@Service
public class typeService {
    @Autowired
    private typeDao typeDao;

    public List<type> findAlltypes(){
        return typeDao.findAllTypes();
    }
}
