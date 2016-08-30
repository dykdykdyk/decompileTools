package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;

public final class ConnectionResult extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<ConnectionResult> CREATOR = new f();
  public static final ConnectionResult a = new ConnectionResult(0);
  final int b;
  public final int c;
  public final PendingIntent d;
  final String e;

  public ConnectionResult(int paramInt)
  {
    this(paramInt, null, (byte)0);
  }

  ConnectionResult(int paramInt1, int paramInt2, PendingIntent paramPendingIntent, String paramString)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramPendingIntent;
    this.e = paramString;
  }

  public ConnectionResult(int paramInt, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramPendingIntent, (byte)0);
  }

  private ConnectionResult(int paramInt, PendingIntent paramPendingIntent, byte paramByte)
  {
    this(1, paramInt, paramPendingIntent, null);
  }

  static String a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 31 + "UNKNOWN_ERROR_CODE(" + paramInt + ")";
    case 0:
      return "SUCCESS";
    case 1:
      return "SERVICE_MISSING";
    case 2:
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3:
      return "SERVICE_DISABLED";
    case 4:
      return "SIGN_IN_REQUIRED";
    case 5:
      return "INVALID_ACCOUNT";
    case 6:
      return "RESOLUTION_REQUIRED";
    case 7:
      return "NETWORK_ERROR";
    case 8:
      return "INTERNAL_ERROR";
    case 9:
      return "SERVICE_INVALID";
    case 10:
      return "DEVELOPER_ERROR";
    case 11:
      return "LICENSE_CHECK_FAILED";
    case 13:
      return "CANCELED";
    case 14:
      return "TIMEOUT";
    case 15:
      return "INTERRUPTED";
    case 16:
      return "API_UNAVAILABLE";
    case 17:
      return "SIGN_IN_FAILED";
    case 18:
      return "SERVICE_UPDATING";
    case 19:
      return "SERVICE_MISSING_PERMISSION";
    case 20:
      return "RESTRICTED_PROFILE";
    case 21:
      return "API_VERSION_UPDATE_REQUIRED";
    case 42:
      return "UPDATE_ANDROID_WEAR";
    case 1500:
      return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
    case 99:
      return "UNFINISHED";
    case -1:
    }
    return "UNKNOWN";
  }

  public final boolean a()
  {
    return (this.c != 0) && (this.d != null);
  }

  public final boolean b()
  {
    return this.c == 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    do
    {
      return true;
      if (!(paramObject instanceof ConnectionResult))
        return false;
      paramObject = (ConnectionResult)paramObject;
    }
    while ((this.c == paramObject.c) && (bn.a(this.d, paramObject.d)) && (bn.a(this.e, paramObject.e)));
    return false;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.c), this.d, this.e });
  }

  public final String toString()
  {
    return bn.a(this).a("statusCode", a(this.c)).a("resolution", this.d).a("message", this.e).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.ConnectionResult
 * JD-Core Version:    0.6.2
 */