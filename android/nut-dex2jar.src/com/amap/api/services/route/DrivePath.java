package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class DrivePath extends Path
  implements Parcelable
{
  public static final Parcelable.Creator<DrivePath> CREATOR = new f();
  private String a;
  private float b;
  private float c;
  private int d;
  private List<DriveStep> e = new ArrayList();

  public DrivePath()
  {
  }

  public DrivePath(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readFloat();
    this.c = paramParcel.readFloat();
    this.e = paramParcel.createTypedArrayList(DriveStep.CREATOR);
  }

  public int describeContents()
  {
    return 0;
  }

  public List<DriveStep> getSteps()
  {
    return this.e;
  }

  public String getStrategy()
  {
    return this.a;
  }

  public float getTollDistance()
  {
    return this.c;
  }

  public float getTolls()
  {
    return this.b;
  }

  public int getTotalTrafficlights()
  {
    return this.d;
  }

  public void setSteps(List<DriveStep> paramList)
  {
    this.e = paramList;
  }

  public void setStrategy(String paramString)
  {
    this.a = paramString;
  }

  public void setTollDistance(float paramFloat)
  {
    this.c = paramFloat;
  }

  public void setTolls(float paramFloat)
  {
    this.b = paramFloat;
  }

  public void setTotalTrafficlights(int paramInt)
  {
    this.d = paramInt;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeFloat(this.b);
    paramParcel.writeFloat(this.c);
    paramParcel.writeTypedList(this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.DrivePath
 * JD-Core Version:    0.6.2
 */