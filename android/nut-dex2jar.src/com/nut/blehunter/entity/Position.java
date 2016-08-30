package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import org.json.JSONException;
import org.json.JSONObject;

public class Position
  implements Parcelable
{
  public static final Parcelable.Creator<Position> CREATOR = new p();

  @SerializedName("uuid")
  public String a;

  @SerializedName("source")
  public int b;

  @SerializedName("longitude")
  public double c;

  @SerializedName("latitude")
  public double d;

  @SerializedName("createTime")
  public long e;
  public float f;

  public Position()
  {
  }

  public Position(long paramLong, double paramDouble1, double paramDouble2)
  {
    this.e = paramLong;
    this.d = paramDouble1;
    this.c = paramDouble2;
  }

  private Position(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readDouble();
    this.d = paramParcel.readDouble();
    this.e = paramParcel.readLong();
    this.f = paramParcel.readFloat();
  }

  public final String a()
  {
    try
    {
      Object localObject = new JSONObject();
      ((JSONObject)localObject).put("createTime", this.e);
      ((JSONObject)localObject).put("longitude", this.c);
      ((JSONObject)localObject).put("latitude", this.d);
      ((JSONObject)localObject).put("accuracy", this.f);
      localObject = ((JSONObject)localObject).toString();
      return localObject;
    }
    catch (JSONException localJSONException)
    {
    }
    return "";
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "Position{uuid='" + this.a + '\'' + ", source=" + this.b + ", longitude=" + this.c + ", latitude=" + this.d + ", createTime=" + this.e + ", accuracy=" + this.f + '}';
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeDouble(this.c);
    paramParcel.writeDouble(this.d);
    paramParcel.writeLong(this.e);
    paramParcel.writeFloat(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.Position
 * JD-Core Version:    0.6.2
 */