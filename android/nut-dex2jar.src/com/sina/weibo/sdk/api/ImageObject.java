package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.sina.weibo.sdk.d.i;
import java.io.File;

public class ImageObject extends BaseMediaObject
{
  public static final Parcelable.Creator<ImageObject> CREATOR = new b();
  public byte[] g;
  public String h;

  public ImageObject()
  {
  }

  public ImageObject(Parcel paramParcel)
  {
    this.g = paramParcel.createByteArray();
    this.h = paramParcel.readString();
  }

  protected final BaseMediaObject a(String paramString)
  {
    return this;
  }

  public final boolean a()
  {
    if ((this.g == null) && (this.h == null))
    {
      i.c("Weibo.ImageObject", "imageData and imagePath are null");
      return false;
    }
    if ((this.g != null) && (this.g.length > 2097152))
    {
      i.c("Weibo.ImageObject", "imageData is too large");
      return false;
    }
    if ((this.h != null) && (this.h.length() > 512))
    {
      i.c("Weibo.ImageObject", "imagePath is too length");
      return false;
    }
    if (this.h != null)
    {
      File localFile = new File(this.h);
      try
      {
        if ((!localFile.exists()) || (localFile.length() == 0L) || (localFile.length() > 10485760L))
        {
          i.c("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
          return false;
        }
      }
      catch (SecurityException localSecurityException)
      {
        i.c("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
        return false;
      }
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
    paramParcel.writeByteArray(this.g);
    paramParcel.writeString(this.h);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.ImageObject
 * JD-Core Version:    0.6.2
 */