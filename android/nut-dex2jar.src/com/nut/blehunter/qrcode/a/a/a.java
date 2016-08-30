package com.nut.blehunter.qrcode.a.a;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.util.Log;

public final class a
{
  private static final String a = a.class.getName();

  public static Camera a(int paramInt)
  {
    int k = Camera.getNumberOfCameras();
    if (k == 0)
    {
      Log.w(a, "No cameras!");
      return null;
    }
    if (paramInt >= 0);
    int j;
    for (int i = 1; ; i = 0)
    {
      j = paramInt;
      if (i != 0)
        break;
      paramInt = 0;
      while (true)
      {
        j = paramInt;
        if (paramInt >= k)
          break;
        Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(paramInt, localCameraInfo);
        j = paramInt;
        if (localCameraInfo.facing == 0)
          break;
        paramInt += 1;
      }
    }
    if (j < k)
    {
      Log.i(a, "Opening camera #" + j);
      return Camera.open(j);
    }
    if (i != 0)
    {
      Log.w(a, "Requested camera does not exist: " + j);
      return null;
    }
    Log.i(a, "No camera facing back; returning camera #0");
    return Camera.open(0);
  }

  public static int b(int paramInt)
  {
    int k = Camera.getNumberOfCameras();
    if (k == 0)
      Log.w(a, "No cameras!");
    int i;
    do
    {
      return -1;
      if (paramInt >= 0);
      for (i = 1; i == 0; i = 0)
      {
        paramInt = 0;
        while (true)
        {
          j = paramInt;
          if (paramInt >= k)
            break;
          Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
          Camera.getCameraInfo(paramInt, localCameraInfo);
          j = paramInt;
          if (localCameraInfo.facing == 0)
            break;
          paramInt += 1;
        }
      }
      int j = paramInt;
      if (j < k)
        return j;
    }
    while (i != 0);
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.a.a
 * JD-Core Version:    0.6.2
 */