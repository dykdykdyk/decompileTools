package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.i;
import org.json.JSONException;
import org.json.JSONObject;

public class MusicObject extends BaseMediaObject
{
  public static final Parcelable.Creator<MusicObject> CREATOR = new c();
  public String g;
  public String h;
  public String i;
  public String j;
  public int k;

  public MusicObject()
  {
  }

  public MusicObject(Parcel paramParcel)
  {
    super(paramParcel);
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.k = paramParcel.readInt();
  }

  protected final BaseMediaObject a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    try
    {
      this.g = new JSONObject(paramString).optString("extra_key_defaulttext");
      return this;
    }
    catch (JSONException paramString)
    {
    }
    return this;
  }

  public final boolean a()
  {
    if (!super.a())
      return false;
    if ((this.i != null) && (this.i.length() > 512))
    {
      i.c("Weibo.MusicObject", "checkArgs fail, dataUrl is invalid");
      return false;
    }
    if ((this.j != null) && (this.j.length() > 512))
    {
      i.c("Weibo.MusicObject", "checkArgs fail, dataHdUrl is invalid");
      return false;
    }
    if (this.k <= 0)
    {
      i.c("Weibo.MusicObject", "checkArgs fail, duration is invalid");
      return false;
    }
    return true;
  }

  protected final String b()
  {
    try
    {
      Object localObject = new JSONObject();
      if (!TextUtils.isEmpty(this.g))
        ((JSONObject)localObject).put("extra_key_defaulttext", this.g);
      localObject = ((JSONObject)localObject).toString();
      return localObject;
    }
    catch (JSONException localJSONException)
    {
    }
    return "";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeInt(this.k);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.MusicObject
 * JD-Core Version:    0.6.2
 */