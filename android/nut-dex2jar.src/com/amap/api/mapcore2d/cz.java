package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Environment;
import com.amap.api.maps2d.MapsInitializer;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.LatLng;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

public class cz
{
  public static double[] a = { 7453.6419999999998D, 3742.9904999999999D, 1873.3330000000001D, 936.89026000000001D, 468.47199999999998D, 234.239D, 117.12D, 58.560000000000002D, 29.280000000000001D, 14.640000000000001D, 7.32D, 3.66D, 1.829D, 0.915D, 0.4575D, 0.228D, 0.1144D };

  public static double a(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    double d4 = paramLatLng1.longitude;
    double d3 = paramLatLng1.latitude;
    double d2 = paramLatLng2.longitude;
    double d1 = paramLatLng2.latitude;
    double d5 = d4 * 0.01745329251994329D;
    double d6 = d3 * 0.01745329251994329D;
    d3 = d2 * 0.01745329251994329D;
    d4 = d1 * 0.01745329251994329D;
    d1 = Math.sin(d5);
    d2 = Math.sin(d6);
    d5 = Math.cos(d5);
    d6 = Math.cos(d6);
    double d7 = Math.sin(d3);
    double d8 = Math.sin(d4);
    d3 = Math.cos(d3);
    d4 = Math.cos(d4);
    paramLatLng1 = new double[3];
    paramLatLng2 = new double[3];
    paramLatLng1[0] = (d5 * d6);
    paramLatLng1[1] = (d6 * d1);
    paramLatLng1[2] = d2;
    paramLatLng2[0] = (d4 * d3);
    paramLatLng2[1] = (d4 * d7);
    paramLatLng2[2] = d8;
    return Math.asin(Math.sqrt((paramLatLng1[0] - paramLatLng2[0]) * (paramLatLng1[0] - paramLatLng2[0]) + (paramLatLng1[1] - paramLatLng2[1]) * (paramLatLng1[1] - paramLatLng2[1]) + (paramLatLng1[2] - paramLatLng2[2]) * (paramLatLng1[2] - paramLatLng2[2])) / 2.0D) * 12742001.579854401D;
  }

  public static float a(float paramFloat)
  {
    float f;
    if (paramFloat < 0.0F)
      f = 0.0F;
    do
    {
      return f;
      f = paramFloat;
    }
    while (paramFloat <= 45.0F);
    return 45.0F;
  }

  public static int a(Object[] paramArrayOfObject)
  {
    return Arrays.hashCode(paramArrayOfObject);
  }

  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    if (paramBitmap == null)
      return null;
    return Bitmap.createScaledBitmap(paramBitmap, (int)(paramBitmap.getWidth() * paramFloat), (int)(paramBitmap.getHeight() * paramFloat), true);
  }

  public static Bitmap a(String paramString)
  {
    try
    {
      paramString = BitmapDescriptorFactory.class.getResourceAsStream("/assets/" + paramString);
      Bitmap localBitmap = BitmapFactory.decodeStream(paramString);
      paramString.close();
      return localBitmap;
    }
    catch (Exception paramString)
    {
      a(paramString, "Util", "fromAsset");
    }
    return null;
  }

  public static ab a(LatLng paramLatLng)
  {
    if (paramLatLng == null)
      return null;
    return new ab((int)(paramLatLng.latitude * 1000000.0D), (int)(paramLatLng.longitude * 1000000.0D));
  }

  public static String a(int paramInt)
  {
    if (paramInt < 1000)
      return paramInt + "m";
    return paramInt / 1000 + "km";
  }

  public static String a(String paramString, Object paramObject)
  {
    return paramString + "=" + String.valueOf(paramObject);
  }

  public static String a(String[] paramArrayOfString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    int k = paramArrayOfString.length;
    int j = 0;
    while (i < k)
    {
      localStringBuilder.append(paramArrayOfString[i]);
      if (j != paramArrayOfString.length - 1)
        localStringBuilder.append(",");
      j += 1;
      i += 1;
    }
    return localStringBuilder.toString();
  }

  public static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    dn localdn = dn.b();
    if (localdn != null)
      localdn.b(paramThrowable, paramString1, paramString2);
    paramThrowable.printStackTrace();
  }

  public static boolean a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Math.abs(b(paramDouble1, paramDouble2, paramDouble3, paramDouble4, paramDouble5, paramDouble6)) < 1.E-009D)
    {
      bool1 = bool2;
      if ((paramDouble1 - paramDouble3) * (paramDouble1 - paramDouble5) <= 0.0D)
      {
        bool1 = bool2;
        if ((paramDouble2 - paramDouble4) * (paramDouble2 - paramDouble6) <= 0.0D)
          bool1 = true;
      }
    }
    return bool1;
  }

  public static boolean a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, double paramDouble8)
  {
    boolean bool2 = false;
    double d = (paramDouble3 - paramDouble1) * (paramDouble8 - paramDouble6) - (paramDouble4 - paramDouble2) * (paramDouble7 - paramDouble5);
    boolean bool1 = bool2;
    if (d != 0.0D)
    {
      paramDouble7 = ((paramDouble2 - paramDouble6) * (paramDouble7 - paramDouble5) - (paramDouble1 - paramDouble5) * (paramDouble8 - paramDouble6)) / d;
      paramDouble1 = ((paramDouble2 - paramDouble6) * (paramDouble3 - paramDouble1) - (paramDouble1 - paramDouble5) * (paramDouble4 - paramDouble2)) / d;
      bool1 = bool2;
      if (paramDouble7 >= 0.0D)
      {
        bool1 = bool2;
        if (paramDouble7 <= 1.0D)
        {
          bool1 = bool2;
          if (paramDouble1 >= 0.0D)
          {
            bool1 = bool2;
            if (paramDouble1 <= 1.0D)
              bool1 = true;
          }
        }
      }
    }
    return bool1;
  }

  public static boolean a(Context paramContext)
  {
    boolean bool;
    if (paramContext == null)
      bool = false;
    while (true)
    {
      return bool;
      try
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext == null)
        {
          bool = false;
        }
        else
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if (paramContext == null)
          {
            bool = false;
          }
          else
          {
            paramContext = paramContext.getState();
            if ((paramContext != null) && (paramContext != NetworkInfo.State.DISCONNECTED))
            {
              NetworkInfo.State localState = NetworkInfo.State.DISCONNECTING;
              if (paramContext != localState);
            }
            else
            {
              bool = false;
              continue;
            }
            bool = true;
          }
        }
      }
      finally
      {
      }
    }
    throw paramContext;
  }

  public static boolean a(LatLng paramLatLng, List<LatLng> paramList)
  {
    double d1 = paramLatLng.longitude;
    double d2 = paramLatLng.latitude;
    double d3 = paramLatLng.latitude;
    int i = 0;
    int j = 0;
    double d4;
    double d5;
    double d6;
    double d7;
    if (j < paramList.size() - 1)
    {
      d4 = ((LatLng)paramList.get(j)).longitude;
      d5 = ((LatLng)paramList.get(j)).latitude;
      d6 = ((LatLng)paramList.get(j + 1)).longitude;
      d7 = ((LatLng)paramList.get(j + 1)).latitude;
      if (a(d1, d2, d4, d5, d6, d7))
        return true;
      if (Math.abs(d7 - d5) < 1.E-009D)
        break label256;
      if (a(d4, d5, d1, d2, 180.0D, d3))
      {
        if (d5 <= d7)
          break label256;
        i += 1;
      }
    }
    label256: 
    while (true)
    {
      j += 1;
      break;
      if (a(d6, d7, d1, d2, 180.0D, d3))
      {
        if (d7 > d5)
          i += 1;
      }
      else if (a(d4, d5, d6, d7, d1, d2, 180.0D, d3))
      {
        i += 1;
        continue;
        return i % 2 != 0;
      }
    }
  }

  public static boolean a(File paramFile)
    throws IOException, Exception
  {
    if ((paramFile == null) || (!paramFile.exists()));
    int i;
    label24: 
    do
    {
      return false;
      paramFile = paramFile.listFiles();
      if (paramFile == null)
        break label74;
      i = 0;
      if (i >= paramFile.length)
        break label74;
      if (!paramFile[i].isFile())
        break;
    }
    while (!paramFile[i].delete());
    while (true)
    {
      i += 1;
      break label24;
      if (!a(paramFile[i]))
        break;
      paramFile[i].delete();
    }
    label74: return true;
  }

  public static double b(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    return (paramDouble3 - paramDouble1) * (paramDouble6 - paramDouble2) - (paramDouble5 - paramDouble1) * (paramDouble4 - paramDouble2);
  }

  public static float b(float paramFloat)
  {
    float f;
    if (paramFloat > v.c)
      f = v.c;
    do
    {
      return f;
      f = paramFloat;
    }
    while (paramFloat >= v.d);
    return v.d;
  }

  public static String b(Context paramContext)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      return paramContext.getFilesDir().getPath();
    if ((MapsInitializer.sdcardDir == null) || (MapsInitializer.sdcardDir.equals("")))
    {
      paramContext = new File(Environment.getExternalStorageDirectory(), "AMap");
      if (!paramContext.exists())
        paramContext.mkdir();
      return paramContext.toString() + "/";
    }
    paramContext = new File(MapsInitializer.sdcardDir);
    if (!paramContext.exists())
      paramContext.mkdirs();
    paramContext = new File(paramContext, "Amap");
    if (!paramContext.exists())
      paramContext.mkdir();
    return paramContext.toString() + "/";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cz
 * JD-Core Version:    0.6.2
 */