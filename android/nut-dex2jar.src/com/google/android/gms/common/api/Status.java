package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;

public final class Status extends AbstractSafeParcelable
  implements u
{
  public static final Parcelable.Creator<Status> CREATOR = new aa();
  public static final Status a = new Status(0);
  public static final Status b = new Status(14);
  public static final Status c = new Status(8);
  public static final Status d = new Status(15);
  public static final Status e = new Status(16);
  public static final Status f = new Status(17);
  final int g;
  public final int h;
  final String i;
  final PendingIntent j;

  public Status(int paramInt)
  {
    this(paramInt, null);
  }

  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    this.g = paramInt1;
    this.h = paramInt2;
    this.i = paramString;
    this.j = paramPendingIntent;
  }

  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }

  public final Status a()
  {
    return this;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status));
    do
    {
      return false;
      paramObject = (Status)paramObject;
    }
    while ((this.g != paramObject.g) || (this.h != paramObject.h) || (!bn.a(this.i, paramObject.i)) || (!bn.a(this.j, paramObject.j)));
    return true;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.g), Integer.valueOf(this.h), this.i, this.j });
  }

  public final String toString()
  {
    bo localbo = bn.a(this);
    String str;
    if (this.i != null)
      str = this.i;
    while (true)
    {
      return localbo.a("statusCode", str).a("resolution", this.j).toString();
      int k = this.h;
      switch (k)
      {
      default:
        str = 32 + "unknown status code: " + k;
        break;
      case -1:
        str = "SUCCESS_CACHE";
        break;
      case 0:
        str = "SUCCESS";
        break;
      case 1:
        str = "SERVICE_MISSING";
        break;
      case 2:
        str = "SERVICE_VERSION_UPDATE_REQUIRED";
        break;
      case 3:
        str = "SERVICE_DISABLED";
        break;
      case 4:
        str = "SIGN_IN_REQUIRED";
        break;
      case 5:
        str = "INVALID_ACCOUNT";
        break;
      case 6:
        str = "RESOLUTION_REQUIRED";
        break;
      case 7:
        str = "NETWORK_ERROR";
        break;
      case 8:
        str = "INTERNAL_ERROR";
        break;
      case 9:
        str = "SERVICE_INVALID";
        break;
      case 10:
        str = "DEVELOPER_ERROR";
        break;
      case 11:
        str = "LICENSE_CHECK_FAILED";
        break;
      case 13:
        str = "ERROR";
        break;
      case 14:
        str = "INTERRUPTED";
        break;
      case 15:
        str = "TIMEOUT";
        break;
      case 16:
        str = "CANCELED";
        break;
      case 17:
        str = "API_NOT_CONNECTED";
        break;
      case 3000:
        str = "AUTH_API_INVALID_CREDENTIALS";
        break;
      case 3001:
        str = "AUTH_API_ACCESS_FORBIDDEN";
        break;
      case 3002:
        str = "AUTH_API_CLIENT_ERROR";
        break;
      case 3003:
        str = "AUTH_API_SERVER_ERROR";
        break;
      case 3004:
        str = "AUTH_TOKEN_ERROR";
        break;
      case 3005:
        str = "AUTH_URL_RESOLUTION";
      }
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aa.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.Status
 * JD-Core Version:    0.6.2
 */