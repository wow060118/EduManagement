package com.yfr.mapper;

import com.yfr.pojo.Announcement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnnouncementMapper {
    Integer add(Announcement announcement);
    Integer deleteById(Announcement announcement);
    Integer update(Announcement announcement);
    List<Announcement> quire(Announcement announcement);
}