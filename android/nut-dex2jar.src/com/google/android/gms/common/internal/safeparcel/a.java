package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public final class a
{
  public static int a(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(0xFFFF0000 | paramInt);
    paramParcel.writeInt(0);
    return paramParcel.dataPosition();
  }

  public static void a(Parcel paramParcel, int paramInt, byte paramByte)
  {
    b(paramParcel, paramInt, 4);
    paramParcel.writeInt(paramByte);
  }

  public static void a(Parcel paramParcel, int paramInt, double paramDouble)
  {
    b(paramParcel, paramInt, 8);
    paramParcel.writeDouble(paramDouble);
  }

  public static void a(Parcel paramParcel, int paramInt, float paramFloat)
  {
    b(paramParcel, paramInt, 4);
    paramParcel.writeFloat(paramFloat);
  }

  public static void a(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    b(paramParcel, paramInt1, 4);
    paramParcel.writeInt(paramInt2);
  }

  public static void a(Parcel paramParcel, int paramInt, long paramLong)
  {
    b(paramParcel, paramInt, 8);
    paramParcel.writeLong(paramLong);
  }

  public static void a(Parcel paramParcel, int paramInt, Bundle paramBundle)
  {
    if (paramBundle == null)
      return;
    paramInt = a(paramParcel, paramInt);
    paramParcel.writeBundle(paramBundle);
    b(paramParcel, paramInt);
  }

  public static void a(Parcel paramParcel, int paramInt, IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return;
    paramInt = a(paramParcel, paramInt);
    paramParcel.writeStrongBinder(paramIBinder);
    b(paramParcel, paramInt);
  }

  public static void a(Parcel paramParcel, int paramInt1, Parcelable paramParcelable, int paramInt2)
  {
    if (paramParcelable == null)
      return;
    paramInt1 = a(paramParcel, paramInt1);
    paramParcelable.writeToParcel(paramParcel, paramInt2);
    b(paramParcel, paramInt1);
  }

  public static void a(Parcel paramParcel, int paramInt, Integer paramInteger)
  {
    if (paramInteger == null)
      return;
    b(paramParcel, paramInt, 4);
    paramParcel.writeInt(paramInteger.intValue());
  }

  public static void a(Parcel paramParcel, int paramInt, String paramString)
  {
    if (paramString == null)
      return;
    paramInt = a(paramParcel, paramInt);
    paramParcel.writeString(paramString);
    b(paramParcel, paramInt);
  }

  public static <T extends Parcelable> void a(Parcel paramParcel, int paramInt, List<T> paramList)
  {
    if (paramList == null)
      return;
    int i = a(paramParcel, paramInt);
    int j = paramList.size();
    paramParcel.writeInt(j);
    paramInt = 0;
    if (paramInt < j)
    {
      Parcelable localParcelable = (Parcelable)paramList.get(paramInt);
      if (localParcelable == null)
        paramParcel.writeInt(0);
      while (true)
      {
        paramInt += 1;
        break;
        a(paramParcel, localParcelable, 0);
      }
    }
    b(paramParcel, i);
  }

  public static void a(Parcel paramParcel, int paramInt, boolean paramBoolean)
  {
    b(paramParcel, paramInt, 4);
    if (paramBoolean);
    for (paramInt = 1; ; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }

  public static <T extends Parcelable> void a(Parcel paramParcel, int paramInt1, T[] paramArrayOfT, int paramInt2)
  {
    if (paramArrayOfT == null)
      return;
    int i = a(paramParcel, paramInt1);
    int j = paramArrayOfT.length;
    paramParcel.writeInt(j);
    paramInt1 = 0;
    if (paramInt1 < j)
    {
      T ? = paramArrayOfT[paramInt1];
      if (? == null)
        paramParcel.writeInt(0);
      while (true)
      {
        paramInt1 += 1;
        break;
        a(paramParcel, ?, paramInt2);
      }
    }
    b(paramParcel, i);
  }

  private static <T extends Parcelable> void a(Parcel paramParcel, T paramT, int paramInt)
  {
    int i = paramParcel.dataPosition();
    paramParcel.writeInt(1);
    int j = paramParcel.dataPosition();
    paramT.writeToParcel(paramParcel, paramInt);
    paramInt = paramParcel.dataPosition();
    paramParcel.setDataPosition(i);
    paramParcel.writeInt(paramInt - j);
    paramParcel.setDataPosition(paramInt);
  }

  public static void b(Parcel paramParcel, int paramInt)
  {
    int i = paramParcel.dataPosition();
    paramParcel.setDataPosition(paramInt - 4);
    paramParcel.writeInt(i - paramInt);
    paramParcel.setDataPosition(i);
  }

  private static void b(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    if (paramInt2 >= 65535)
    {
      paramParcel.writeInt(0xFFFF0000 | paramInt1);
      paramParcel.writeInt(paramInt2);
      return;
    }
    paramParcel.writeInt(paramInt2 << 16 | paramInt1);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.safeparcel.a
 * JD-Core Version:    0.6.2
 */