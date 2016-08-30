package com.nut.blehunter.entity;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.nut.blehunter.d.g;
import com.nut.blehunter.d.k;
import com.nut.blehunter.provider.j;
import java.util.ArrayList;
import java.util.List;

public class Nut
  implements Parcelable
{
  public static final Parcelable.Creator<Nut> CREATOR = new n();

  @SerializedName("articleShares")
  public List<ShareUserInfo> A = new ArrayList();

  @SerializedName("user")
  public User B;

  @SerializedName("battery_level")
  public int C;
  public int D;
  public boolean E = true;
  public int F;
  public int G;
  public String H;
  public int I;
  public int J;
  public int K;
  public boolean L = false;
  public int M;

  @SerializedName("createTime")
  public long a;

  @SerializedName("updateTime")
  public long b;

  @SerializedName("itemName")
  public String c;

  @SerializedName("devicePwMsb")
  public String d;

  @SerializedName("devicePwLsb")
  public String e;

  @SerializedName("uuid")
  public String f;

  @SerializedName("longitude")
  public double g;

  @SerializedName("latitude")
  public double h;

  @SerializedName("photoUrl")
  public String i;

  @SerializedName("deviceId")
  public String j;

  @SerializedName("tagId")
  public String k;

  @SerializedName("description")
  public String l;

  @SerializedName("status")
  public String m;
  public int n;

  @SerializedName("lastLosingRecord")
  public LosingRecord o;

  @SerializedName("deviceName")
  public int p;

  @SerializedName("wechatIdentifier")
  public WechatIdentifier q;

  @SerializedName("lastPositionRecord")
  public PositionRecord r;
  public int s;
  public int t;
  public int u;

  @SerializedName("firmware")
  public String v;

  @SerializedName("hardware")
  public String w;
  public String x;

  @SerializedName("mode")
  public int y;

  @SerializedName("articleConfigs")
  public List<NutConfig> z = new ArrayList();

  public Nut()
  {
  }

  public Nut(Parcel paramParcel)
  {
    this.I = paramParcel.readInt();
    this.a = paramParcel.readLong();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readDouble();
    this.h = paramParcel.readDouble();
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.p = paramParcel.readInt();
    this.J = paramParcel.readInt();
    this.y = paramParcel.readInt();
    this.l = paramParcel.readString();
    this.K = paramParcel.readInt();
    this.n = paramParcel.readInt();
    this.H = paramParcel.readString();
    this.k = paramParcel.readString();
    this.o = ((LosingRecord)paramParcel.readParcelable(LosingRecord.class.getClassLoader()));
    this.F = paramParcel.readInt();
    this.G = paramParcel.readInt();
    this.q = ((WechatIdentifier)paramParcel.readParcelable(WechatIdentifier.class.getClassLoader()));
    this.r = ((PositionRecord)paramParcel.readParcelable(PositionRecord.class.getClassLoader()));
    this.v = paramParcel.readString();
    this.w = paramParcel.readString();
    this.x = paramParcel.readString();
    this.s = paramParcel.readInt();
    this.t = paramParcel.readInt();
    this.u = paramParcel.readInt();
    if (paramParcel.readInt() == 1);
    for (boolean bool = true; ; bool = false)
    {
      this.E = bool;
      paramParcel.readList(this.z, getClass().getClassLoader());
      paramParcel.readList(this.A, getClass().getClassLoader());
      this.D = paramParcel.readInt();
      this.B = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
      this.C = paramParcel.readInt();
      return;
    }
  }

  public final boolean a()
  {
    return (this.p == 0) || (this.p == 2);
  }

  public final boolean a(Context paramContext)
  {
    return (this.n == 1) && (this.y == 0) && (!g.a(paramContext)) && (!k.c(paramContext)) && (!m.a().e());
  }

  public final boolean b()
  {
    return (this.p == 1) || (this.p == 3);
  }

  public final boolean c()
  {
    return this.p == 16;
  }

  public final int d()
  {
    int i1 = 2130838090;
    if (a())
      i1 = 2130837997;
    do
    {
      return i1;
      if (b())
        return 2130838074;
    }
    while (!c());
    return 2130838073;
  }

  public int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    String str2 = "";
    r localr = j.b().a(this.p);
    String str1 = str2;
    if (localr != null)
    {
      str1 = str2;
      if (localr.b != null)
        str1 = localr.b.d;
    }
    return str1;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Nut));
    do
    {
      return false;
      if (paramObject == this)
        return true;
      paramObject = (Nut)paramObject;
      if ((!TextUtils.isEmpty(paramObject.f)) && (!TextUtils.isEmpty(this.f)) && (paramObject.f.equals(this.f)))
        return true;
      if ((!TextUtils.isEmpty(paramObject.k)) && (!TextUtils.isEmpty(this.k)) && (paramObject.k.equals(this.k)))
        return true;
      if ((paramObject.I != 0) && (this.I != 0) && (paramObject.I == this.I))
        return true;
    }
    while (!paramObject.j.equals(this.j));
    return true;
  }

  public final boolean f()
  {
    return (!TextUtils.isEmpty(this.i)) && (!this.i.startsWith("http"));
  }

  public final boolean g()
  {
    if (!this.E);
    while (true)
    {
      return false;
      try
      {
        r localr = j.b().a(this.p);
        if ((localr != null) && (localr.d != null))
        {
          int i1 = localr.d.a;
          if (i1 != 0)
            return true;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        localNumberFormatException.printStackTrace();
      }
    }
    return false;
  }

  public int hashCode()
  {
    if (TextUtils.isEmpty(this.k));
    for (int i1 = 0; ; i1 = this.k.hashCode())
      return ((i1 + 62) * 31 + this.I) * 31 + this.j.hashCode();
  }

  public String toString()
  {
    return new Gson().toJson(this);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = 1;
    paramParcel.writeInt(this.I);
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeDouble(this.g);
    paramParcel.writeDouble(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeInt(this.p);
    paramParcel.writeInt(this.J);
    paramParcel.writeInt(this.y);
    paramParcel.writeString(this.l);
    paramParcel.writeInt(this.K);
    paramParcel.writeInt(this.n);
    paramParcel.writeString(this.H);
    paramParcel.writeString(this.k);
    paramParcel.writeParcelable(this.o, 0);
    paramParcel.writeInt(this.F);
    paramParcel.writeInt(this.G);
    paramParcel.writeParcelable(this.q, 1);
    paramParcel.writeParcelable(this.r, 2);
    paramParcel.writeString(this.v);
    paramParcel.writeString(this.w);
    paramParcel.writeString(this.x);
    paramParcel.writeInt(this.s);
    paramParcel.writeInt(this.t);
    paramParcel.writeInt(this.u);
    if (this.E);
    while (true)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeList(this.z);
      paramParcel.writeList(this.A);
      paramParcel.writeInt(this.D);
      paramParcel.writeParcelable(this.B, 0);
      paramParcel.writeInt(this.C);
      return;
      paramInt = 0;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.Nut
 * JD-Core Version:    0.6.2
 */