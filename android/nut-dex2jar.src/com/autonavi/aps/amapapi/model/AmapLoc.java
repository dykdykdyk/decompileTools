package com.autonavi.aps.amapapi.model;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.loc.by;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class AmapLoc
  implements Parcelable
{
  public static final Parcelable.Creator<AmapLoc> CREATOR = new a();
  private String A = "";
  private String B = "";
  private int C = -1;
  private String D = "";
  private String E = "";
  private boolean F = true;
  private boolean G = true;
  private JSONObject H = null;
  private String a = "";
  private double b = 0.0D;
  private double c = 0.0D;
  private double d = 0.0D;
  private float e = 0.0F;
  private float f = 0.0F;
  private float g = 0.0F;
  private long h = 0L;
  private String i = "new";
  private int j = 0;
  private String k = "success";
  private int l = 0;
  private String m = "";
  private String n = "";
  private String o = "";
  private String p = "";
  private String q = "";
  private String r = "";
  private String s = "";
  private String t = "";
  private String u = "";
  private String v = "";
  private String w = "";
  private String x = "";
  private String y = "";
  private String z = null;

  public AmapLoc()
  {
  }

  public AmapLoc(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.i = paramParcel.readString();
    this.k = paramParcel.readString();
    this.j = paramParcel.readInt();
    this.g = paramParcel.readFloat();
    this.f = paramParcel.readFloat();
    this.e = paramParcel.readFloat();
    this.b = paramParcel.readDouble();
    this.c = paramParcel.readDouble();
    this.d = paramParcel.readDouble();
    this.h = paramParcel.readLong();
    this.n = paramParcel.readString();
    this.o = paramParcel.readString();
    this.p = paramParcel.readString();
    this.q = paramParcel.readString();
    this.r = paramParcel.readString();
    this.s = paramParcel.readString();
    this.t = paramParcel.readString();
    this.u = paramParcel.readString();
    this.v = paramParcel.readString();
    this.w = paramParcel.readString();
    this.x = paramParcel.readString();
    this.y = paramParcel.readString();
    this.z = paramParcel.readString();
    this.A = paramParcel.readString();
    this.B = paramParcel.readString();
    this.D = paramParcel.readString();
    this.m = paramParcel.readString();
    this.C = paramParcel.readInt();
    this.l = paramParcel.readInt();
    this.E = paramParcel.readString();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      this.F = bool1;
      if (paramParcel.readByte() == 0)
        break label478;
    }
    label478: for (boolean bool1 = bool2; ; bool1 = false)
    {
      this.G = bool1;
      return;
      bool1 = false;
      break;
    }
  }

  public AmapLoc(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null);
    try
    {
      if (by.a(paramJSONObject, "provider"))
        c(paramJSONObject.getString("provider"));
      if (by.a(paramJSONObject, "lon"))
        a(paramJSONObject.getDouble("lon"));
      if (by.a(paramJSONObject, "lat"))
        b(paramJSONObject.getDouble("lat"));
      if (by.a(paramJSONObject, "altitude"))
        c(paramJSONObject.getDouble("altitude"));
      if (by.a(paramJSONObject, "acc"))
        y(paramJSONObject.getString("acc"));
      if (by.a(paramJSONObject, "accuracy"))
        a((float)paramJSONObject.getLong("accuracy"));
      if (by.a(paramJSONObject, "speed"))
        b((float)paramJSONObject.getLong("speed"));
      if (by.a(paramJSONObject, "dir"))
        c((float)paramJSONObject.getLong("dir"));
      if (by.a(paramJSONObject, "bearing"))
        c((float)paramJSONObject.getLong("bearing"));
      if (by.a(paramJSONObject, "type"))
        f(paramJSONObject.getString("type"));
      if (by.a(paramJSONObject, "retype"))
        g(paramJSONObject.getString("retype"));
      if (by.a(paramJSONObject, "citycode"))
        i(paramJSONObject.getString("citycode"));
      if (by.a(paramJSONObject, "desc"))
        j(paramJSONObject.getString("desc"));
      if (by.a(paramJSONObject, "adcode"))
        k(paramJSONObject.getString("adcode"));
      if (by.a(paramJSONObject, "country"))
        l(paramJSONObject.getString("country"));
      if (by.a(paramJSONObject, "province"))
        m(paramJSONObject.getString("province"));
      if (by.a(paramJSONObject, "city"))
        n(paramJSONObject.getString("city"));
      if (by.a(paramJSONObject, "road"))
        p(paramJSONObject.getString("road"));
      if (by.a(paramJSONObject, "street"))
        q(paramJSONObject.getString("street"));
      if (by.a(paramJSONObject, "number"))
        r(paramJSONObject.getString("number"));
      if (by.a(paramJSONObject, "poiname"))
        s(paramJSONObject.getString("poiname"));
      if (by.a(paramJSONObject, "errorCode"))
        b(paramJSONObject.getInt("errorCode"));
      if (by.a(paramJSONObject, "errorInfo"))
        a(paramJSONObject.getString("errorInfo"));
      if (by.a(paramJSONObject, "locationType"))
        a(paramJSONObject.getInt("locationType"));
      if (by.a(paramJSONObject, "locationDetail"))
        b(paramJSONObject.getString("locationDetail"));
      if (by.a(paramJSONObject, "cens"))
        t(paramJSONObject.getString("cens"));
      if (by.a(paramJSONObject, "poiid"))
        u(paramJSONObject.getString("poiid"));
      if (by.a(paramJSONObject, "pid"))
        u(paramJSONObject.getString("pid"));
      if (by.a(paramJSONObject, "floor"))
        v(paramJSONObject.getString("floor"));
      if (by.a(paramJSONObject, "flr"))
        v(paramJSONObject.getString("flr"));
      if (by.a(paramJSONObject, "coord"))
        w(paramJSONObject.getString("coord"));
      if (by.a(paramJSONObject, "mcell"))
        x(paramJSONObject.getString("mcell"));
      if (by.a(paramJSONObject, "time"))
        a(paramJSONObject.getLong("time"));
      if (by.a(paramJSONObject, "district"))
        o(paramJSONObject.getString("district"));
      if (by.a(paramJSONObject, "isOffset"))
        a(paramJSONObject.getBoolean("isOffset"));
      if (by.a(paramJSONObject, "isReversegeo"))
        b(paramJSONObject.getBoolean("isReversegeo"));
      return;
    }
    catch (Exception paramJSONObject)
    {
    }
  }

  private void A(String paramString)
  {
    this.g = Float.parseFloat(paramString);
  }

  private void y(String paramString)
  {
    this.e = Float.parseFloat(paramString);
  }

  private void z(String paramString)
  {
    this.f = Float.parseFloat(paramString);
    if (this.f > 100.0F)
      this.f = 0.0F;
  }

  public int A()
  {
    return this.C;
  }

  public String B()
  {
    return this.D;
  }

  public AmapLoc C()
  {
    Object localObject = B();
    if (TextUtils.isEmpty((CharSequence)localObject));
    AmapLoc localAmapLoc;
    do
    {
      do
      {
        return null;
        localObject = ((String)localObject).split(",");
      }
      while (localObject.length != 3);
      localAmapLoc = new AmapLoc();
      localAmapLoc.c(g());
      localAmapLoc.d(localObject[0]);
      localAmapLoc.e(localObject[1]);
      localAmapLoc.a(Float.parseFloat(localObject[2]));
      localAmapLoc.i(o());
      localAmapLoc.k(q());
      localAmapLoc.l(r());
      localAmapLoc.m(s());
      localAmapLoc.n(t());
      localAmapLoc.a(k());
      localAmapLoc.f(l());
      localAmapLoc.w(String.valueOf(A()));
    }
    while (!by.a(localAmapLoc));
    return localAmapLoc;
  }

  public JSONObject D()
  {
    return this.H;
  }

  public String E()
  {
    return c(1);
  }

  public int a()
  {
    return this.j;
  }

  public void a(double paramDouble)
  {
    d(by.a(Double.valueOf(paramDouble), "#.000000"));
  }

  public void a(float paramFloat)
  {
    y(String.valueOf(Math.round(paramFloat)));
  }

  public void a(int paramInt)
  {
    this.l = paramInt;
  }

  public void a(long paramLong)
  {
    this.h = paramLong;
  }

  public void a(String paramString)
  {
    this.k = paramString;
  }

  public void a(JSONObject paramJSONObject)
  {
    this.H = paramJSONObject;
  }

  public void a(boolean paramBoolean)
  {
    this.F = paramBoolean;
  }

  public int b()
  {
    return this.l;
  }

  public void b(double paramDouble)
  {
    e(by.a(Double.valueOf(paramDouble), "#.000000"));
  }

  public void b(float paramFloat)
  {
    z(by.a(Float.valueOf(paramFloat), "#.0"));
  }

  public void b(int paramInt)
  {
    if (this.j != 0)
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
      this.j = paramInt;
      return;
      this.k = "success";
      continue;
      this.k = "重要参数为空";
      continue;
      this.k = "WIFI信息不足";
      continue;
      this.k = "请求参数获取出现异常";
      continue;
      this.k = "网络连接异常";
      continue;
      this.k = "解析XML出错";
      continue;
      this.k = "定位结果错误";
      continue;
      this.k = "KEY错误";
      continue;
      this.k = "其他错误";
      continue;
      this.k = "初始化异常";
      continue;
      this.k = "定位服务启动失败";
      continue;
      this.k = "缺少定位权限";
      continue;
      this.k = "错误的基站信息，请检查是否插入SIM卡";
    }
  }

  public void b(String paramString)
  {
    if ((this.m != null) && (this.m.length() != 0))
      return;
    this.m = paramString;
  }

  public void b(boolean paramBoolean)
  {
    this.G = paramBoolean;
  }

  public String c()
  {
    return this.k;
  }

  public String c(int paramInt)
  {
    Object localObject;
    try
    {
      JSONObject localJSONObject = new JSONObject();
      switch (paramInt)
      {
      case 1:
        localJSONObject.put("altitude", this.d);
        localJSONObject.put("speed", this.f);
        localJSONObject.put("bearing", this.g);
        localJSONObject.put("retype", this.n);
        localJSONObject.put("citycode", this.p);
        localJSONObject.put("desc", this.q);
        localJSONObject.put("adcode", this.r);
        localJSONObject.put("country", this.s);
        localJSONObject.put("province", this.t);
        localJSONObject.put("city", this.u);
        localJSONObject.put("district", this.v);
        localJSONObject.put("road", this.w);
        localJSONObject.put("street", this.x);
        localJSONObject.put("number", this.E);
        localJSONObject.put("poiname", this.y);
        localJSONObject.put("cens", this.z);
        localJSONObject.put("poiid", this.A);
        localJSONObject.put("floor", this.B);
        localJSONObject.put("coord", this.C);
        localJSONObject.put("mcell", this.D);
        localJSONObject.put("errorCode", this.j);
        localJSONObject.put("errorInfo", this.k);
        localJSONObject.put("locationType", this.l);
        localJSONObject.put("locationDetail", this.m);
        if ((this.H != null) && (by.a(localJSONObject, "offpct")))
          localJSONObject.put("offpct", this.H.getString("offpct"));
      case 2:
        localJSONObject.put("time", this.h);
      case 3:
        localJSONObject.put("provider", this.a);
        localJSONObject.put("lon", this.b);
        localJSONObject.put("lat", this.c);
        localJSONObject.put("accuracy", this.e);
        localJSONObject.put("type", this.i);
        localJSONObject.put("isOffset", this.F);
        localJSONObject.put("isReversegeo", this.G);
      }
    }
    catch (Exception localException)
    {
      localObject = null;
    }
    while (localObject != null)
      return localObject.toString();
    return null;
  }

  public void c(double paramDouble)
  {
    this.d = paramDouble;
  }

  public void c(float paramFloat)
  {
    A(by.a(Float.valueOf(paramFloat), "#.0"));
  }

  public void c(String paramString)
  {
    this.a = paramString;
  }

  public String d()
  {
    return this.m;
  }

  public void d(String paramString)
  {
    this.b = Double.parseDouble(paramString);
  }

  public int describeContents()
  {
    return 0;
  }

  public void e(String paramString)
  {
    this.c = Double.parseDouble(paramString);
  }

  public boolean e()
  {
    return this.F;
  }

  public void f(String paramString)
  {
    this.i = paramString;
  }

  public boolean f()
  {
    return this.G;
  }

  public String g()
  {
    return this.a;
  }

  public void g(String paramString)
  {
    this.n = paramString;
  }

  public double h()
  {
    return this.b;
  }

  public void h(String paramString)
  {
    this.o = paramString;
  }

  public double i()
  {
    return this.c;
  }

  public void i(String paramString)
  {
    this.p = paramString;
  }

  public float j()
  {
    return this.e;
  }

  public void j(String paramString)
  {
    this.q = paramString;
  }

  public long k()
  {
    return this.h;
  }

  public void k(String paramString)
  {
    this.r = paramString;
  }

  public String l()
  {
    return this.i;
  }

  public void l(String paramString)
  {
    this.s = paramString;
  }

  public String m()
  {
    return this.n;
  }

  public void m(String paramString)
  {
    this.t = paramString;
  }

  public String n()
  {
    return this.o;
  }

  public void n(String paramString)
  {
    this.u = paramString;
  }

  public String o()
  {
    return this.p;
  }

  public void o(String paramString)
  {
    this.v = paramString;
  }

  public String p()
  {
    return this.q;
  }

  public void p(String paramString)
  {
    this.w = paramString;
  }

  public String q()
  {
    return this.r;
  }

  public void q(String paramString)
  {
    this.x = paramString;
  }

  public String r()
  {
    return this.s;
  }

  public void r(String paramString)
  {
    this.E = paramString;
  }

  public String s()
  {
    return this.t;
  }

  public void s(String paramString)
  {
    this.y = paramString;
  }

  public String t()
  {
    return this.u;
  }

  public void t(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    String[] arrayOfString = paramString.split("\\*");
    int i2 = arrayOfString.length;
    int i1 = 0;
    while (true)
    {
      if (i1 < i2)
      {
        String str = arrayOfString[i1];
        if (!TextUtils.isEmpty(str))
        {
          arrayOfString = str.split(",");
          a(Double.parseDouble(arrayOfString[0]));
          b(Double.parseDouble(arrayOfString[1]));
          a(Integer.parseInt(arrayOfString[2]));
        }
      }
      else
      {
        this.z = paramString;
        return;
      }
      i1 += 1;
    }
  }

  public String u()
  {
    return this.v;
  }

  public void u(String paramString)
  {
    this.A = paramString;
  }

  public String v()
  {
    return this.w;
  }

  public void v(String paramString)
  {
    String str = paramString;
    if (!TextUtils.isEmpty(paramString))
      str = paramString.replace("F", "");
    try
    {
      Integer.parseInt(str);
      this.B = str;
      return;
    }
    catch (Exception paramString)
    {
      while (true)
        str = null;
    }
  }

  public String w()
  {
    return this.x;
  }

  public void w(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (this.a.equals("gps"))
      {
        this.C = 0;
        return;
      }
      if (paramString.equals("0"))
      {
        this.C = 0;
        return;
      }
      if (paramString.equals("1"))
      {
        this.C = 1;
        return;
      }
    }
    this.C = -1;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.k);
    paramParcel.writeInt(this.j);
    paramParcel.writeFloat(this.g);
    paramParcel.writeFloat(this.f);
    paramParcel.writeFloat(this.e);
    paramParcel.writeDouble(this.b);
    paramParcel.writeDouble(this.c);
    paramParcel.writeDouble(this.d);
    paramParcel.writeLong(this.h);
    paramParcel.writeString(this.n);
    paramParcel.writeString(this.o);
    paramParcel.writeString(this.p);
    paramParcel.writeString(this.q);
    paramParcel.writeString(this.r);
    paramParcel.writeString(this.s);
    paramParcel.writeString(this.t);
    paramParcel.writeString(this.u);
    paramParcel.writeString(this.v);
    paramParcel.writeString(this.w);
    paramParcel.writeString(this.x);
    paramParcel.writeString(this.y);
    paramParcel.writeString(this.z);
    paramParcel.writeString(this.A);
    paramParcel.writeString(this.B);
    paramParcel.writeString(this.D);
    paramParcel.writeString(this.m);
    paramParcel.writeInt(this.C);
    paramParcel.writeInt(this.l);
    paramParcel.writeString(this.E);
    if (this.F)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!this.G)
        break label286;
    }
    label286: for (byte b1 = b2; ; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
      b1 = 0;
      break;
    }
  }

  public String x()
  {
    return this.E;
  }

  public void x(String paramString)
  {
    this.D = paramString;
  }

  public String y()
  {
    return this.y;
  }

  public String z()
  {
    return this.A;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.autonavi.aps.amapapi.model.AmapLoc
 * JD-Core Version:    0.6.2
 */