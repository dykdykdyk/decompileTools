package com.amap.api.maps2d.model;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.amap.api.mapcore2d.cz;

public class TextOptionsCreator
  implements Parcelable.Creator<TextOptions>
{
  public TextOptions createFromParcel(Parcel paramParcel)
  {
    boolean bool = true;
    TextOptions localTextOptions = new TextOptions();
    Bundle localBundle = paramParcel.readBundle();
    localTextOptions.position(new LatLng(localBundle.getDouble("lat"), localBundle.getDouble("lng")));
    localTextOptions.text(paramParcel.readString());
    localTextOptions.typeface(Typeface.defaultFromStyle(paramParcel.readInt()));
    localTextOptions.rotate(paramParcel.readFloat());
    localTextOptions.align(paramParcel.readInt(), paramParcel.readInt());
    localTextOptions.backgroundColor(paramParcel.readInt());
    localTextOptions.fontColor(paramParcel.readInt());
    localTextOptions.fontSize(paramParcel.readInt());
    localTextOptions.zIndex(paramParcel.readInt());
    if (paramParcel.readByte() == 1);
    while (true)
    {
      localTextOptions.visible(bool);
      paramParcel = paramParcel.readBundle();
      try
      {
        paramParcel = paramParcel.getParcelable("obj");
        if (paramParcel != null)
          localTextOptions.setObject(paramParcel);
        return localTextOptions;
        bool = false;
      }
      catch (Throwable paramParcel)
      {
        cz.a(paramParcel, "TextOptionsCreator", "createFromParcel");
      }
    }
    return localTextOptions;
  }

  public TextOptions[] newArray(int paramInt)
  {
    return new TextOptions[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.TextOptionsCreator
 * JD-Core Version:    0.6.2
 */