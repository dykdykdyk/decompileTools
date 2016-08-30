package com.amap.api.location;

import android.location.Location;

public class AMapLocation extends Location
{
  public static final int ERROR_CODE_FAILURE_AUTH = 7;
  public static final int ERROR_CODE_FAILURE_CELL = 11;
  public static final int ERROR_CODE_FAILURE_CONNECTION = 4;
  public static final int ERROR_CODE_FAILURE_INIT = 9;
  public static final int ERROR_CODE_FAILURE_LOCATION = 6;
  public static final int ERROR_CODE_FAILURE_LOCATION_PARAMETER = 3;
  public static final int ERROR_CODE_FAILURE_LOCATION_PERMISSION = 12;
  public static final int ERROR_CODE_FAILURE_PARSER = 5;
  public static final int ERROR_CODE_FAILURE_WIFI_INFO = 2;
  public static final int ERROR_CODE_INVALID_PARAMETER = 1;
  public static final int ERROR_CODE_SERVICE_FAIL = 10;
  public static final int ERROR_CODE_UNKNOWN = 8;
  public static final int LOCATION_SUCCESS = 0;
  public static final int LOCATION_TYPE_AMAP = 7;
  public static final int LOCATION_TYPE_CELL = 6;
  public static final int LOCATION_TYPE_FIX_CACHE = 4;
  public static final int LOCATION_TYPE_GPS = 1;
  public static final int LOCATION_TYPE_OFFLINE = 8;
  public static final int LOCATION_TYPE_SAME_REQ = 2;
  public static final int LOCATION_TYPE_WIFI = 5;
  private String a = "";
  private String b = "";
  private String c = "";
  private String d = "";
  private String e = "";
  private String f = "";
  private String g = "";
  private String h = "";
  private String i = "";
  private String j = "";
  private String k = "";
  private boolean l = true;
  private int m = 0;
  private String n = "success";
  private String o = "";
  private int p = 0;
  private double q = 0.0D;
  private double r = 0.0D;
  private int s = 0;

  public AMapLocation(Location paramLocation)
  {
    super(paramLocation);
    this.q = paramLocation.getLatitude();
    this.r = paramLocation.getLongitude();
  }

  public AMapLocation(String paramString)
  {
    super(paramString);
  }

  public float getAccuracy()
  {
    return super.getAccuracy();
  }

  public String getAdCode()
  {
    return this.e;
  }

  public String getAddress()
  {
    return this.f;
  }

  public double getAltitude()
  {
    return super.getAltitude();
  }

  public float getBearing()
  {
    return super.getBearing();
  }

  public String getCity()
  {
    return this.b;
  }

  public String getCityCode()
  {
    return this.d;
  }

  public String getCountry()
  {
    return this.h;
  }

  public String getDistrict()
  {
    return this.c;
  }

  public int getErrorCode()
  {
    return this.m;
  }

  public String getErrorInfo()
  {
    return this.n;
  }

  public double getLatitude()
  {
    return this.q;
  }

  public String getLocationDetail()
  {
    return this.o;
  }

  public int getLocationType()
  {
    return this.p;
  }

  public double getLongitude()
  {
    return this.r;
  }

  public String getPoiName()
  {
    return this.g;
  }

  public String getProvider()
  {
    return super.getProvider();
  }

  public String getProvince()
  {
    return this.a;
  }

  public String getRoad()
  {
    return this.i;
  }

  public int getSatellites()
  {
    return this.s;
  }

  public float getSpeed()
  {
    return super.getSpeed();
  }

  public String getStreet()
  {
    return this.j;
  }

  public String getStreetNum()
  {
    return this.k;
  }

  public boolean isOffset()
  {
    return this.l;
  }

  public void setAdCode(String paramString)
  {
    this.e = paramString;
  }

  public void setAddress(String paramString)
  {
    this.f = paramString;
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setCityCode(String paramString)
  {
    this.d = paramString;
  }

  public void setCountry(String paramString)
  {
    this.h = paramString;
  }

  public void setDistrict(String paramString)
  {
    this.c = paramString;
  }

  public void setErrorCode(int paramInt)
  {
    if (this.m != 0)
      return;
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 11:
    }
    while (true)
    {
      this.m = paramInt;
      return;
      this.n = "success";
      continue;
      this.n = "重要参数为空";
      continue;
      this.n = "WIFI信息不足";
      continue;
      this.n = "请求参数获取出现异常";
      continue;
      this.n = "网络连接异常";
      continue;
      this.n = "解析XML出错";
      continue;
      this.n = "定位结果错误";
      continue;
      this.n = "KEY错误";
      continue;
      this.n = "其他错误";
      continue;
      this.n = "初始化异常";
      continue;
      this.n = "定位服务启动失败";
      continue;
      this.n = "缺少定位权限";
      continue;
      this.n = "错误的基站信息，请检查是否插入SIM卡";
    }
  }

  public void setErrorInfo(String paramString)
  {
    this.n = paramString;
  }

  public void setLatitude(double paramDouble)
  {
    this.q = paramDouble;
  }

  public void setLocationDetail(String paramString)
  {
    this.o = paramString;
  }

  public void setLocationType(int paramInt)
  {
    this.p = paramInt;
  }

  public void setLongitude(double paramDouble)
  {
    this.r = paramDouble;
  }

  public void setNumber(String paramString)
  {
    this.k = paramString;
  }

  public void setOffset(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public void setPoiName(String paramString)
  {
    this.g = paramString;
  }

  public void setProvince(String paramString)
  {
    this.a = paramString;
  }

  public void setRoad(String paramString)
  {
    this.i = paramString;
  }

  public void setSatellites(int paramInt)
  {
    this.s = paramInt;
  }

  public void setStreet(String paramString)
  {
    this.j = paramString;
  }

  public String toStr()
  {
    return toStr(1);
  }

  // ERROR //
  public String toStr(int paramInt)
  {
    // Byte code:
    //   0: new 209	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 212	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: iload_1
    //   9: tableswitch	default:+354 -> 363, 1:+27->36, 2:+263->272, 3:+275->284
    //   37: ldc 214
    //   39: aload_0
    //   40: getfield 82	com/amap/api/location/AMapLocation:h	Ljava/lang/String;
    //   43: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   46: pop
    //   47: aload_2
    //   48: ldc 220
    //   50: aload_0
    //   51: getfield 68	com/amap/api/location/AMapLocation:a	Ljava/lang/String;
    //   54: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   57: pop
    //   58: aload_2
    //   59: ldc 222
    //   61: aload_0
    //   62: getfield 70	com/amap/api/location/AMapLocation:b	Ljava/lang/String;
    //   65: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   68: pop
    //   69: aload_2
    //   70: ldc 224
    //   72: aload_0
    //   73: getfield 74	com/amap/api/location/AMapLocation:d	Ljava/lang/String;
    //   76: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   79: pop
    //   80: aload_2
    //   81: ldc 226
    //   83: aload_0
    //   84: getfield 72	com/amap/api/location/AMapLocation:c	Ljava/lang/String;
    //   87: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   90: pop
    //   91: aload_2
    //   92: ldc 228
    //   94: aload_0
    //   95: getfield 76	com/amap/api/location/AMapLocation:e	Ljava/lang/String;
    //   98: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   101: pop
    //   102: aload_2
    //   103: ldc 230
    //   105: aload_0
    //   106: getfield 78	com/amap/api/location/AMapLocation:f	Ljava/lang/String;
    //   109: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   112: pop
    //   113: aload_2
    //   114: ldc 232
    //   116: aload_0
    //   117: getfield 84	com/amap/api/location/AMapLocation:i	Ljava/lang/String;
    //   120: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   123: pop
    //   124: aload_2
    //   125: ldc 234
    //   127: aload_0
    //   128: getfield 86	com/amap/api/location/AMapLocation:j	Ljava/lang/String;
    //   131: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   134: pop
    //   135: aload_2
    //   136: ldc 236
    //   138: aload_0
    //   139: getfield 88	com/amap/api/location/AMapLocation:k	Ljava/lang/String;
    //   142: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   145: pop
    //   146: aload_2
    //   147: ldc 238
    //   149: aload_0
    //   150: getfield 80	com/amap/api/location/AMapLocation:g	Ljava/lang/String;
    //   153: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   156: pop
    //   157: aload_2
    //   158: ldc 240
    //   160: aload_0
    //   161: getfield 92	com/amap/api/location/AMapLocation:m	I
    //   164: invokevirtual 243	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   167: pop
    //   168: aload_2
    //   169: ldc 245
    //   171: aload_0
    //   172: getfield 96	com/amap/api/location/AMapLocation:n	Ljava/lang/String;
    //   175: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   178: pop
    //   179: aload_2
    //   180: ldc 247
    //   182: aload_0
    //   183: getfield 98	com/amap/api/location/AMapLocation:o	Ljava/lang/String;
    //   186: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   189: pop
    //   190: aload_2
    //   191: ldc 249
    //   193: aload_0
    //   194: invokevirtual 250	com/amap/api/location/AMapLocation:getAltitude	()D
    //   197: invokevirtual 253	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   200: pop
    //   201: aload_2
    //   202: ldc 255
    //   204: aload_0
    //   205: invokevirtual 256	com/amap/api/location/AMapLocation:getBearing	()F
    //   208: f2d
    //   209: invokevirtual 253	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   212: pop
    //   213: aload_2
    //   214: ldc_w 258
    //   217: aload_0
    //   218: invokevirtual 259	com/amap/api/location/AMapLocation:getSpeed	()F
    //   221: f2d
    //   222: invokevirtual 253	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   225: pop
    //   226: aload_2
    //   227: ldc_w 261
    //   230: aload_0
    //   231: getfield 106	com/amap/api/location/AMapLocation:s	I
    //   234: invokevirtual 243	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   237: pop
    //   238: aload_0
    //   239: invokevirtual 265	com/amap/api/location/AMapLocation:getExtras	()Landroid/os/Bundle;
    //   242: astore_3
    //   243: aload_3
    //   244: ifnull +28 -> 272
    //   247: aload_3
    //   248: ldc_w 267
    //   251: invokevirtual 273	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   254: ifeq +18 -> 272
    //   257: aload_2
    //   258: ldc_w 267
    //   261: aload_3
    //   262: ldc_w 267
    //   265: invokevirtual 277	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   268: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   271: pop
    //   272: aload_2
    //   273: ldc_w 279
    //   276: aload_0
    //   277: invokevirtual 283	com/amap/api/location/AMapLocation:getTime	()J
    //   280: invokevirtual 286	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   283: pop
    //   284: aload_2
    //   285: ldc_w 288
    //   288: aload_0
    //   289: getfield 100	com/amap/api/location/AMapLocation:p	I
    //   292: invokevirtual 243	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   295: pop
    //   296: aload_2
    //   297: ldc_w 290
    //   300: aload_0
    //   301: invokevirtual 291	com/amap/api/location/AMapLocation:getAccuracy	()F
    //   304: f2d
    //   305: invokevirtual 253	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   308: pop
    //   309: aload_2
    //   310: ldc_w 293
    //   313: aload_0
    //   314: invokevirtual 294	com/amap/api/location/AMapLocation:getLatitude	()D
    //   317: invokevirtual 253	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   320: pop
    //   321: aload_2
    //   322: ldc_w 296
    //   325: aload_0
    //   326: invokevirtual 297	com/amap/api/location/AMapLocation:getLongitude	()D
    //   329: invokevirtual 253	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   332: pop
    //   333: aload_2
    //   334: ldc_w 299
    //   337: aload_0
    //   338: invokevirtual 300	com/amap/api/location/AMapLocation:getProvider	()Ljava/lang/String;
    //   341: invokevirtual 218	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   344: pop
    //   345: goto +18 -> 363
    //   348: astore_2
    //   349: aconst_null
    //   350: astore_2
    //   351: goto +12 -> 363
    //   354: aload_2
    //   355: invokevirtual 303	org/json/JSONObject:toString	()Ljava/lang/String;
    //   358: areturn
    //   359: astore_3
    //   360: goto -88 -> 272
    //   363: aload_2
    //   364: ifnonnull -10 -> 354
    //   367: aconst_null
    //   368: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	348	java/lang/Exception
    //   36	238	348	java/lang/Exception
    //   238	243	348	java/lang/Exception
    //   247	272	348	java/lang/Exception
    //   272	284	348	java/lang/Exception
    //   284	345	348	java/lang/Exception
    //   238	243	359	java/lang/Throwable
    //   247	272	359	java/lang/Throwable
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("latitude=" + this.q);
    localStringBuffer.append("longitude=" + this.r);
    localStringBuffer.append("province=" + this.a + "#");
    localStringBuffer.append("city=" + this.b + "#");
    localStringBuffer.append("district=" + this.c + "#");
    localStringBuffer.append("cityCode=" + this.d + "#");
    localStringBuffer.append("adCode=" + this.e + "#");
    localStringBuffer.append("address=" + this.f + "#");
    localStringBuffer.append("country=" + this.h + "#");
    localStringBuffer.append("road=" + this.i + "#");
    localStringBuffer.append("poiName=" + this.g + "#");
    localStringBuffer.append("street=" + this.j + "#");
    localStringBuffer.append("streetNum=" + this.k + "#");
    localStringBuffer.append("errorCode=" + this.m + "#");
    localStringBuffer.append("errorInfo=" + this.n + "#");
    localStringBuffer.append("locationDetail=" + this.o + "#");
    localStringBuffer.append("locationType=" + this.p);
    return localStringBuffer.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.AMapLocation
 * JD-Core Version:    0.6.2
 */