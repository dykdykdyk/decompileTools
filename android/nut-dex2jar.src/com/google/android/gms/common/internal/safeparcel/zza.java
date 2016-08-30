package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public final class zza
{
  public static int a(Parcel paramParcel)
  {
    int j = paramParcel.readInt();
    int k = a(paramParcel, j);
    int i = paramParcel.dataPosition();
    if ((0xFFFF & j) != 20293)
    {
      String str = String.valueOf(Integer.toHexString(j));
      if (str.length() != 0);
      for (str = "Expected object header. Got 0x".concat(str); ; str = new String("Expected object header. Got 0x"))
        throw new zza.zza(str, paramParcel);
    }
    j = i + k;
    if ((j < i) || (j > paramParcel.dataSize()))
      throw new zza.zza(54 + "Size read is invalid start=" + i + " end=" + j, paramParcel);
    return j;
  }

  public static int a(Parcel paramParcel, int paramInt)
  {
    if ((paramInt & 0xFFFF0000) != -65536)
      return paramInt >> 16 & 0xFFFF;
    return paramParcel.readInt();
  }

  public static <T extends Parcelable> T a(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null;
    paramCreator = (Parcelable)paramCreator.createFromParcel(paramParcel);
    paramParcel.setDataPosition(paramInt + i);
    return paramCreator;
  }

  private static void a(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    paramInt1 = a(paramParcel, paramInt1);
    if (paramInt1 != paramInt2)
    {
      String str = String.valueOf(Integer.toHexString(paramInt1));
      throw new zza.zza(String.valueOf(str).length() + 46 + "Expected size " + paramInt2 + " got " + paramInt1 + " (0x" + str + ")", paramParcel);
    }
  }

  public static void b(Parcel paramParcel, int paramInt)
  {
    paramParcel.setDataPosition(a(paramParcel, paramInt) + paramParcel.dataPosition());
  }

  public static <T> T[] b(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null;
    paramCreator = paramParcel.createTypedArray(paramCreator);
    paramParcel.setDataPosition(paramInt + i);
    return paramCreator;
  }

  public static <T> ArrayList<T> c(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null;
    paramCreator = paramParcel.createTypedArrayList(paramCreator);
    paramParcel.setDataPosition(paramInt + i);
    return paramCreator;
  }

  public static boolean c(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt() != 0;
  }

  public static byte d(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return (byte)paramParcel.readInt();
  }

  public static int e(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt();
  }

  public static Integer f(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    if (paramInt == 0)
      return null;
    if (paramInt != 4)
    {
      String str = String.valueOf(Integer.toHexString(paramInt));
      throw new zza.zza(String.valueOf(str).length() + 46 + "Expected size 4 got " + paramInt + " (0x" + str + ")", paramParcel);
    }
    return Integer.valueOf(paramParcel.readInt());
  }

  public static long g(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 8);
    return paramParcel.readLong();
  }

  public static float h(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readFloat();
  }

  public static double i(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 8);
    return paramParcel.readDouble();
  }

  public static String j(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null;
    String str = paramParcel.readString();
    paramParcel.setDataPosition(paramInt + i);
    return str;
  }

  public static IBinder k(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null;
    IBinder localIBinder = paramParcel.readStrongBinder();
    paramParcel.setDataPosition(paramInt + i);
    return localIBinder;
  }

  public static Bundle l(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null;
    Bundle localBundle = paramParcel.readBundle();
    paramParcel.setDataPosition(paramInt + i);
    return localBundle;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.safeparcel.zza
 * JD-Core Version:    0.6.2
 */