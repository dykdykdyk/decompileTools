package com.loc;

import android.content.Context;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.amap.api.location.AMapLocation;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;

public final class dp
{
  public static String a;
  public static String b;
  public static String c;
  public static String d;
  public static String e;
  public static String f;
  public static String g;
  public static String h;
  public static String i;
  public static int j;
  public static String k;
  public static String l;
  public static int m;
  public static boolean n;
  public static int o;
  static String p;
  static HashMap<String, String> q;
  public static final SparseArray<String> r;
  private static String s = "http://apilocate.amap.com/mobile/binary";
  private static String[] t;

  static
  {
    a = "";
    t = new String[] { "com.amap.api.location", "com.autonavi.aps.amapapi" };
    b = null;
    c = null;
    d = null;
    e = "";
    f = "";
    g = "";
    h = "";
    i = "";
    j = 30000;
    k = null;
    l = null;
    m = 20;
    n = true;
    o = 1;
    SparseArray localSparseArray = new SparseArray();
    r = localSparseArray;
    localSparseArray.append(0, "UNKWN");
    r.append(1, "GPRS");
    r.append(2, "EDGE");
    r.append(3, "UMTS");
    r.append(4, "CDMA");
    r.append(5, "EVDO_0");
    r.append(6, "EVDO_A");
    r.append(7, "1xRTT");
    r.append(8, "HSDPA");
    r.append(9, "HSUPA");
    r.append(10, "HSPA");
    r.append(11, "IDEN");
    r.append(12, "EVDO_B");
    r.append(13, "LTE");
    r.append(14, "EHRPD");
    r.append(15, "HSPAP");
  }

  public static AMapLocation a(AmapLoc paramAmapLoc)
  {
    if (paramAmapLoc == null)
      return null;
    AMapLocation localAMapLocation = new AMapLocation("");
    localAMapLocation.setLatitude(paramAmapLoc.i());
    localAMapLocation.setLongitude(paramAmapLoc.h());
    localAMapLocation.setAccuracy(paramAmapLoc.j());
    localAMapLocation.setTime(paramAmapLoc.k());
    localAMapLocation.setCountry(paramAmapLoc.r());
    localAMapLocation.setRoad(paramAmapLoc.v());
    localAMapLocation.setErrorCode(paramAmapLoc.a());
    localAMapLocation.setErrorInfo(paramAmapLoc.c());
    localAMapLocation.setLocationDetail(paramAmapLoc.d());
    localAMapLocation.setLocationType(paramAmapLoc.b());
    localAMapLocation.setPoiName(paramAmapLoc.y());
    localAMapLocation.setStreet(paramAmapLoc.w());
    localAMapLocation.setNumber(paramAmapLoc.x());
    localAMapLocation.setOffset(paramAmapLoc.e());
    Object localObject = new Bundle();
    ((Bundle)localObject).putString("citycode", paramAmapLoc.o());
    ((Bundle)localObject).putString("desc", paramAmapLoc.p());
    ((Bundle)localObject).putString("adcode", paramAmapLoc.q());
    localAMapLocation.setExtras((Bundle)localObject);
    localObject = paramAmapLoc.o();
    String str1 = paramAmapLoc.p();
    String str2 = paramAmapLoc.q();
    localAMapLocation.setCityCode((String)localObject);
    localAMapLocation.setAdCode(str2);
    if ((str2 != null) && (str2.trim().length() > 0))
      localAMapLocation.setAddress(str1.replace(" ", ""));
    while (true)
    {
      localAMapLocation.setCity(paramAmapLoc.t());
      localAMapLocation.setDistrict(paramAmapLoc.u());
      localAMapLocation.setProvince(paramAmapLoc.s());
      return localAMapLocation;
      localAMapLocation.setAddress(str1);
    }
  }

  public static AMapLocation a(JSONObject paramJSONObject)
  {
    AMapLocation localAMapLocation = new AMapLocation("");
    String str1 = "";
    String str2 = "";
    String str3 = "";
    try
    {
      if (by.a(paramJSONObject, "accuracy"))
        localAMapLocation.setAccuracy(Float.parseFloat(paramJSONObject.getString("accuracy")));
      if (by.a(paramJSONObject, "adCode"))
      {
        str1 = paramJSONObject.getString("adCode");
        localAMapLocation.setAdCode(str1);
      }
      if (by.a(paramJSONObject, "address"))
        localAMapLocation.setAddress(paramJSONObject.getString("address"));
      if (by.a(paramJSONObject, "altitude"))
        localAMapLocation.setAltitude(paramJSONObject.getDouble("altitude"));
      if (by.a(paramJSONObject, "bearing"))
        localAMapLocation.setBearing(Float.parseFloat(paramJSONObject.getString("bearing")));
      if (by.a(paramJSONObject, "speed"))
        localAMapLocation.setSpeed(Float.parseFloat(paramJSONObject.getString("speed")));
      if (by.a(paramJSONObject, "city"))
        localAMapLocation.setCity(paramJSONObject.getString("city"));
      if (by.a(paramJSONObject, "cityCode"))
      {
        str2 = paramJSONObject.getString("cityCode");
        localAMapLocation.setCityCode(str2);
      }
      if (by.a(paramJSONObject, "country"))
        localAMapLocation.setCountry(paramJSONObject.getString("country"));
      if (by.a(paramJSONObject, "district"))
        localAMapLocation.setDistrict(paramJSONObject.getString("district"));
      if (by.a(paramJSONObject, "errorCode"))
        localAMapLocation.setErrorCode(paramJSONObject.getInt("errorCode"));
      if (by.a(paramJSONObject, "errorInfo"))
        localAMapLocation.setErrorInfo(paramJSONObject.getString("errorInfo"));
      if (by.a(paramJSONObject, "latitude"))
        localAMapLocation.setLatitude(paramJSONObject.getDouble("latitude"));
      if (by.a(paramJSONObject, "locationDetail"))
        localAMapLocation.setLocationDetail(paramJSONObject.getString("locationDetail"));
      if (by.a(paramJSONObject, "locationType"))
        localAMapLocation.setLocationType(paramJSONObject.getInt("locationType"));
      if (by.a(paramJSONObject, "longitude"))
        localAMapLocation.setLongitude(paramJSONObject.getDouble("longitude"));
      if (by.a(paramJSONObject, "provider"))
        localAMapLocation.setProvider(paramJSONObject.getString("provider"));
      if (by.a(paramJSONObject, "province"))
        localAMapLocation.setProvince(paramJSONObject.getString("province"));
      if (by.a(paramJSONObject, "road"))
        localAMapLocation.setRoad(paramJSONObject.getString("road"));
      if (by.a(paramJSONObject, "time"))
        localAMapLocation.setTime(paramJSONObject.getLong("time"));
      if (by.a(paramJSONObject, "poiName"))
        localAMapLocation.setPoiName(paramJSONObject.getString("poiName"));
      if (by.a(paramJSONObject, "street"))
        localAMapLocation.setStreet(paramJSONObject.getString("street"));
      if (by.a(paramJSONObject, "number"))
        localAMapLocation.setNumber(paramJSONObject.getString("number"));
      if (by.a(paramJSONObject, "satellites"))
        localAMapLocation.setSatellites(paramJSONObject.getInt("satellites"));
      if (by.a(paramJSONObject, "desc"))
        str3 = paramJSONObject.getString("desc");
      paramJSONObject = new Bundle();
      paramJSONObject.putString("citycode", str2);
      paramJSONObject.putString("desc", str3);
      paramJSONObject.putString("adcode", str1);
      localAMapLocation.setExtras(paramJSONObject);
      return localAMapLocation;
    }
    catch (Exception paramJSONObject)
    {
    }
    return null;
  }

  public static eo a(String paramString)
  {
    try
    {
      paramString = new ep("loc", paramString, "AMAP_Location_SDK_Android 2.3.0").a(b()).a();
      return paramString;
    }
    catch (l paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }

  public static String a()
  {
    return s;
  }

  public static void a(Context paramContext)
  {
    if (by.a(b(paramContext)))
      s = "http://abroad.apilocate.amap.com/mobile/binary";
    while (true)
    {
      return;
      try
      {
        if (q == null)
          q = new HashMap();
        q.clear();
        q.put("a9a9d23668a1a7ea93de9b21d67e436a", "F13160D440C7D0229DA95450F66AF92154AC84DF088F8CA3100B2E8131D57F3DC67124D4C466056E7A3DFBE035E1B9A4B9DA4DB68AE65A43EDFD92F5C60EF0C9");
        q.put("fe643c382e5c3b3962141f1a2e815a78", "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827");
        q.put("b2e8bd171989cb2c3c13bd89b4c1067a", "239CE372F804D4BE4EAFFD183668379BDF274440E6F246AB16BBE6F5D1D30DEACFBBF0C942485727FF12288228760A9E");
        q.put("9a571aa113ad987d626c0457828962e6", "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7");
        q.put("668319f11506def6208d6afe320dfd52", "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807");
        q.put("256b0f26bb2a9506be6cfdb84028ae08", "AF2228680EDC323FBA035362EB7E1E38A0C33E1CF6F6FB805EE553A230CBA754CD9552EB9B546542CBE619E8293151BE");
        paramContext = bf.a(dy.e(paramContext));
        p = paramContext;
        if (paramContext == null)
          continue;
        try
        {
          if ((paramContext.length() == 0) || (q == null) || (!q.containsKey(paramContext)))
            continue;
          String str = (String)q.get(paramContext);
          if ((str != null) && (str.length() > 0))
          {
            paramContext = new String(bf.d(b(str), paramContext), "utf-8");
            if ((paramContext == null) || (paramContext.length() <= 0) || (!paramContext.contains("http:")))
              continue;
            s = paramContext;
            return;
          }
        }
        catch (Throwable paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          localThrowable.printStackTrace();
          continue;
          paramContext = null;
        }
      }
    }
  }

  public static boolean a(double paramDouble1, double paramDouble2)
  {
    boolean bool = true;
    int i1 = (int)((paramDouble2 - 73.0D) / 0.5D);
    int i2 = (int)((paramDouble1 - 3.5D) / 0.5D);
    if ((i2 < 0) || (i2 >= 101) || (i1 < 0) || (i1 >= 124))
      bool = false;
    while (true)
    {
      return bool;
      try
      {
        i1 = "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000".charAt(i1 + i2 * 124);
        if (i1 != 49)
          return false;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
    return true;
  }

  private static String b(Context paramContext)
  {
    String str = "";
    while (true)
    {
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        paramContext = str;
        if (localTelephonyManager != null);
        try
        {
          paramContext = localTelephonyManager.getNetworkOperator();
          if ((paramContext != null) && (paramContext.length() >= 3))
          {
            paramContext = paramContext.substring(0, 3);
            return paramContext;
          }
        }
        catch (Throwable paramContext)
        {
          paramContext.printStackTrace();
          return "";
        }
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return "";
      }
      paramContext = "";
    }
  }

  private static byte[] b(String paramString)
  {
    int i1 = 0;
    if ((paramString == null) || (paramString.length() < 2))
    {
      paramString = new byte[0];
      return paramString;
    }
    String str = paramString.toLowerCase(Locale.US);
    int i2 = str.length() / 2;
    byte[] arrayOfByte = new byte[i2];
    while (true)
    {
      paramString = arrayOfByte;
      if (i1 >= i2)
        break;
      arrayOfByte[i1] = ((byte)(Integer.parseInt(str.substring(i1 * 2, i1 * 2 + 2), 16) & 0xFF));
      i1 += 1;
    }
  }

  public static String[] b()
  {
    return (String[])t.clone();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dp
 * JD-Core Version:    0.6.2
 */