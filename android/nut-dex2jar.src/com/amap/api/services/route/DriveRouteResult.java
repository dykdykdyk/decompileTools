package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class DriveRouteResult extends RouteResult
  implements Parcelable
{
  public static final Parcelable.Creator<DriveRouteResult> CREATOR = new g();
  private float a;
  private List<DrivePath> b = new ArrayList();
  private RouteSearch.DriveRouteQuery c;

  public DriveRouteResult()
  {
  }

  public DriveRouteResult(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readFloat();
    this.b = paramParcel.createTypedArrayList(DrivePath.CREATOR);
    this.c = ((RouteSearch.DriveRouteQuery)paramParcel.readParcelable(RouteSearch.DriveRouteQuery.class.getClassLoader()));
  }

  public int describeContents()
  {
    return 0;
  }

  public RouteSearch.DriveRouteQuery getDriveQuery()
  {
    return this.c;
  }

  public List<DrivePath> getPaths()
  {
    return this.b;
  }

  public float getTaxiCost()
  {
    return this.a;
  }

  public void setDriveQuery(RouteSearch.DriveRouteQuery paramDriveRouteQuery)
  {
    this.c = paramDriveRouteQuery;
  }

  public void setPaths(List<DrivePath> paramList)
  {
    this.b = paramList;
  }

  public void setTaxiCost(float paramFloat)
  {
    this.a = paramFloat;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeFloat(this.a);
    paramParcel.writeTypedList(this.b);
    paramParcel.writeParcelable(this.c, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.DriveRouteResult
 * JD-Core Version:    0.6.2
 */