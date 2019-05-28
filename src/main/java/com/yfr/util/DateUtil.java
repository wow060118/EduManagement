package com.yfr.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static final String yyyymmddhhmmss = "yyyy-MM-dd HH:mm:ss";
    public static final String yyyymmddC = "yyyy年MM月dd日";
    public static final String yyyymmddhhmm = "yyyy-MM-dd HH:mm";
    public static final String yyyymmdd = "yyyy-MM-dd";
    public static final String yyyymmddnointer = "yyyyMMdd";
    public static final String ddmmyyyy = "dd-MM-yyyy";
    public static final String eeemmmddyyyy = "EEE MMM. dd yyyy";
    public static final String birthdayString = "dd/MM/yyyy";
    public static final String onlyyyymmddhhmmss = "yyyyMMddHHmmss";
    public static final String UPDATE_TIME_PATTERN = "yyyy/MM/dd HH:mm";
    public static final long ONE_MIN = 1 * 60 * 1000;
    public static final long ONE_HOUR = 1 * 60 * 60 * 1000;
    public static final long ONE_DAY = 1 * 24 * 60 * 60 * 1000;

    public static String gainDate(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateStr = sdf.format(date);
        return dateStr;
    }


}
