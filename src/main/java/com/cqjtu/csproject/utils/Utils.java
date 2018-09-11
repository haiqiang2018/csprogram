package com.cqjtu.csproject.utils;

import net.sf.json.JSONArray;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/11
 * Time: 22:58
 */
public class Utils {

    /**
     * 将list数组转换成json数据格式
     * @param list 待转换的数组
     * @param countList 数组元素个数
     * @return json字符串
     */
    public static String ConvertListToPageJson(List<?> list, int countList) {

        // 新建一个json数组
        JSONArray jsonArrays;
        // 转换成json格式
        jsonArrays=JSONArray.fromObject(list);
        // 转换数据格式
        String json = jsonArrays.toString();
        // 拼接字符串
        StringBuffer sb = new StringBuffer();
        sb.append("{\"code\":");
        sb.append(0);
        sb.append(",\"msg\":");
        sb.append("\"\"");
        sb.append(",\"count\":");
        sb.append(countList);
        sb.append(",\"data\":");
        sb.append(json);
        sb.append("}");

        return sb.toString();
    }
}
