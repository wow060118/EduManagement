package com.yfr.service;


import com.yfr.po.ShowListPo;

import java.util.List;

public interface MyService {
    List<ShowListPo> queryMyList(int uid);
}
