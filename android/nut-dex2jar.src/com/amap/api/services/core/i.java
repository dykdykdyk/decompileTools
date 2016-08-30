package com.amap.api.services.core;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class i
{
  public static double a(double paramDouble)
  {
    return Double.parseDouble(new DecimalFormat("0.000000", new DecimalFormatSymbols(Locale.US)).format(paramDouble));
  }

  public static double a(int paramInt)
  {
    return paramInt / 111700.0D;
  }

  public static String a(LatLonPoint paramLatLonPoint)
  {
    if (paramLatLonPoint == null)
      return "";
    double d1 = a(paramLatLonPoint.getLongitude());
    double d2 = a(paramLatLonPoint.getLatitude());
    return d1 + "," + d2;
  }

  public static String a(Date paramDate)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm");
    if (paramDate != null)
      return localSimpleDateFormat.format(paramDate);
    return "";
  }

  public static String a(List<LatLonPoint> paramList)
  {
    if (paramList == null)
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramList.size())
    {
      LatLonPoint localLatLonPoint = (LatLonPoint)paramList.get(i);
      double d1 = a(localLatLonPoint.getLongitude());
      double d2 = a(localLatLonPoint.getLatitude());
      localStringBuffer.append(d1).append(",").append(d2);
      localStringBuffer.append(";");
      i += 1;
    }
    localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
    return localStringBuffer.toString();
  }

  public static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    av localav = av.b();
    if (localav != null)
      localav.b(paramThrowable, paramString1, paramString2);
    paramThrowable.printStackTrace();
  }

  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  public static void b(String paramString)
    throws AMapException
  {
    while (true)
    {
      try
      {
        paramString = new JSONObject(paramString);
        if (!paramString.has("status"))
          break label663;
        if (!paramString.has("infocode"))
          return;
        String str = paramString.getString("status");
        int i = paramString.getInt("infocode");
        if ((str.equals("1")) || (!str.equals("0")))
          break label663;
        switch (i)
        {
        case 10007:
          throw new AMapException(paramString.getString("info"));
        case 10001:
        case 10002:
        case 10003:
        case 10004:
        case 10005:
        case 10006:
        case 10008:
        case 10009:
        case 10010:
        case 10011:
        case 10012:
        case 10013:
        case 30000:
        case 30001:
        case 30002:
        case 30003:
        case 20000:
        case 20001:
        case 20002:
        case 20003:
        case 22000:
        case 32000:
        case 32001:
        case 32002:
        case 32200:
        case 32201:
        case 20800:
        case 20801:
        case 20802:
        case 20803:
        }
      }
      catch (JSONException paramString)
      {
        a(paramString, "CoreUtil", "paseAuthFailurJson");
        throw new AMapException("协议解析错误 - ProtocolException");
      }
      throw new AMapException("用户签名未通过");
      throw new AMapException("用户key不正确或过期");
      throw new AMapException("请求服务不存在");
      throw new AMapException("访问已超出日访问量");
      throw new AMapException("用户访问过于频繁");
      throw new AMapException("用户IP无效");
      throw new AMapException("用户域名无效");
      throw new AMapException("用户MD5安全码未通过");
      throw new AMapException("请求key与绑定平台不符");
      throw new AMapException("IP访问超限");
      throw new AMapException("服务不支持https请求");
      throw new AMapException("权限不足，服务请求被拒绝");
      throw new AMapException("开发者删除了key，key被删除后无法正常使用");
      throw new AMapException("请求服务响应错误");
      throw new AMapException("引擎返回数据异常");
      throw new AMapException("服务端请求链接超时");
      throw new AMapException("读取服务结果超时");
      throw new AMapException("请求参数非法");
      throw new AMapException("缺少必填参数");
      throw new AMapException("请求协议非法");
      throw new AMapException("其他未知错误");
      throw new AMapException("tableID格式不正确不存在");
      throw new AMapException("key对应的tableID不存在");
      throw new AMapException("ID不存在");
      throw new AMapException("服务器维护中");
      throw new AMapException("找不到对应的userid信息,请检查您提供的userid是否存在");
      throw new AMapException("App key未开通“附近”功能,请注册附近KEY");
      throw new AMapException("规划点（包括起点、终点、途经点）不在中国陆地范围内");
      throw new AMapException("规划点（起点、终点、途经点）附近搜不到路");
      throw new AMapException("路线计算失败，通常是由于道路连通关系导致");
      throw new AMapException("起点终点距离过长");
      label663: return;
    }
  }

  public static Date c(String paramString)
  {
    if ((paramString == null) || (paramString.trim().equals("")))
      return null;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HHmm");
    try
    {
      paramString = localSimpleDateFormat.parse(paramString);
      return paramString;
    }
    catch (ParseException paramString)
    {
      a(paramString, "CoreUtil", "parseString2Time");
    }
    return null;
  }

  public static Date d(String paramString)
  {
    if ((paramString == null) || (paramString.trim().equals("")))
      return null;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm");
    try
    {
      paramString = localSimpleDateFormat.parse(paramString);
      return paramString;
    }
    catch (ParseException paramString)
    {
      a(paramString, "CoreUtil", "parseTime");
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.i
 * JD-Core Version:    0.6.2
 */