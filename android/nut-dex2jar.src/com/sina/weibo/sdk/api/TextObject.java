package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.sina.weibo.sdk.d.i;

public class TextObject extends BaseMediaObject
{
  public static final Parcelable.Creator<TextObject> CREATOR = new d();
  public String g;

  public TextObject()
  {
  }

  public TextObject(Parcel paramParcel)
  {
    this.g = paramParcel.readString();
  }

  protected final BaseMediaObject a(String paramString)
  {
    return this;
  }

  public final boolean a()
  {
    if ((this.g == null) || (this.g.length() == 0) || (this.g.length() > 1024))
    {
      i.c("Weibo.TextObject", "checkArgs fail, text is invalid");
      return false;
    }
    return true;
  }

  protected final String b()
  {
    return "";
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.TextObject
 * JD-Core Version:    0.6.2
 */