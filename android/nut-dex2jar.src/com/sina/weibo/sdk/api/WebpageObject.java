package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class WebpageObject extends BaseMediaObject
{
  public static final Parcelable.Creator<WebpageObject> CREATOR = new g();
  public String g;

  public WebpageObject()
  {
  }

  public WebpageObject(Parcel paramParcel)
  {
    super(paramParcel);
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
    return super.a();
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
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.WebpageObject
 * JD-Core Version:    0.6.2
 */