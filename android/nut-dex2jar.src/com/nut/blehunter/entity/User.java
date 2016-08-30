package com.nut.blehunter.entity;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.nut.blehunter.e;
import java.util.ArrayList;

public class User
  implements Parcelable
{
  public static final Parcelable.Creator<User> CREATOR = new z();

  @SerializedName("uuid")
  public String a;

  @SerializedName("name")
  public String b;

  @SerializedName("email")
  public Email c;

  @SerializedName("mobile")
  public Mobile d;

  @SerializedName("avatar_url")
  public String e;

  @SerializedName("wechat")
  public Wechat f;

  @SerializedName("device_pw_msb")
  public String g;

  @SerializedName("device_pw_lsb")
  public String h;

  @SerializedName("access_token")
  public String i;

  @SerializedName("gender")
  public int j;

  @SerializedName("update_time")
  public int k;

  @SerializedName("mute")
  public int l;

  @SerializedName("alarm_time")
  public int m;

  @SerializedName("safe_region_android")
  public String n;

  @SerializedName("safe_time")
  public String o;

  @SerializedName("delay_alarm")
  public int p = 15;

  @SerializedName("unread_message_count")
  public int q;
  public x r;

  public User(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.e = paramParcel.readString();
  }

  public final String a()
  {
    if ((this.d == null) || (TextUtils.isEmpty(this.d.a)))
      return "";
    return this.d.a;
  }

  public final ArrayList<String> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    t localt;
    do
    {
      return null;
      localt = e();
      if (paramString.equals("home"))
        return localt.b;
      if (paramString.equals("company"))
        return localt.c;
    }
    while (!paramString.equals("other"));
    return localt.d;
  }

  public final boolean a(Context paramContext)
  {
    return ((!TextUtils.isEmpty(a())) && (!a().equals("86"))) || (m.a().b(paramContext));
  }

  public final String b()
  {
    if ((this.d == null) || (TextUtils.isEmpty(this.d.b)))
      return "";
    return this.d.b;
  }

  public final String c()
  {
    if ((this.c == null) || (TextUtils.isEmpty(this.c.a)))
      return "";
    return this.c.a;
  }

  public final void d()
  {
    t localt = new t();
    localt.a = "1";
    localt.b = new ArrayList();
    localt.c = new ArrayList();
    localt.d = new ArrayList();
    this.n = e.a().toJson(localt);
  }

  public int describeContents()
  {
    return 0;
  }

  public final t e()
  {
    if (!f())
      d();
    return (t)e.a(this.n, t.class);
  }

  public final boolean f()
  {
    try
    {
      if (TextUtils.isEmpty(this.n))
        return false;
      e.a(this.n, t.class);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final boolean g()
  {
    if (!f());
    t localt;
    do
    {
      return true;
      localt = e();
    }
    while ((localt == null) || (TextUtils.isEmpty(localt.a)));
    return "1".equals(localt.a);
  }

  public final ArrayList<String> h()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = a("home");
    if ((localArrayList2 != null) && (!localArrayList2.isEmpty()))
      localArrayList1.addAll(localArrayList2);
    localArrayList2 = a("company");
    if ((localArrayList2 != null) && (!localArrayList2.isEmpty()))
      localArrayList1.addAll(localArrayList2);
    localArrayList2 = a("other");
    if ((localArrayList2 != null) && (!localArrayList2.isEmpty()))
      localArrayList1.addAll(localArrayList2);
    return localArrayList1;
  }

  public final boolean i()
  {
    return (this.f != null) && (!TextUtils.isEmpty(this.f.a));
  }

  public final boolean j()
  {
    return (this.c == null) || (this.c.a == null);
  }

  public final boolean k()
  {
    return (this.c != null) && (!TextUtils.isEmpty(this.c.a)) && (this.c.b == 0);
  }

  public final boolean l()
  {
    return (this.c != null) && (!TextUtils.isEmpty(this.c.a)) && (this.c.b == 1);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.User
 * JD-Core Version:    0.6.2
 */