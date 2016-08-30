package com.nut.blehunter.qrcode.a;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

@TargetApi(15)
public final class d
{
  private static final Pattern a = Pattern.compile(";");

  public static Point a(Camera.Parameters paramParameters, Point paramPoint)
  {
    Object localObject1 = paramParameters.getSupportedPreviewSizes();
    if (localObject1 == null)
    {
      Log.w("CameraConfiguration", "Device returned no supported preview sizes; using default");
      paramParameters = paramParameters.getPreviewSize();
      if (paramParameters == null)
        throw new IllegalStateException("Parameters contained no preview size!");
      return new Point(paramParameters.width, paramParameters.height);
    }
    localObject1 = new ArrayList((Collection)localObject1);
    Collections.sort((List)localObject1, new e());
    Object localObject3;
    if (Log.isLoggable("CameraConfiguration", 4))
    {
      localObject2 = new StringBuilder();
      localObject3 = ((List)localObject1).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        Camera.Size localSize = (Camera.Size)((Iterator)localObject3).next();
        ((StringBuilder)localObject2).append(localSize.width).append('x').append(localSize.height).append(' ');
      }
      Log.i("CameraConfiguration", "Supported preview sizes: " + localObject2);
    }
    double d = paramPoint.x / paramPoint.y;
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Camera.Size)((Iterator)localObject2).next();
      int i = ((Camera.Size)localObject3).width;
      int j = ((Camera.Size)localObject3).height;
      if (i * j < 153600)
      {
        ((Iterator)localObject2).remove();
      }
      else
      {
        label268: int k;
        if (i < j)
        {
          m = 1;
          if (m == 0)
            break label321;
          k = j;
          label277: if (m == 0)
            break label328;
        }
        label321: label328: for (int m = i; ; m = j)
        {
          if (Math.abs(k / m - d) <= 0.15D)
            break label335;
          ((Iterator)localObject2).remove();
          break;
          m = 0;
          break label268;
          k = i;
          break label277;
        }
        label335: if ((k == paramPoint.x) && (m == paramPoint.y))
        {
          paramParameters = new Point(i, j);
          Log.i("CameraConfiguration", "Found preview size exactly matching screen size: " + paramParameters);
          return paramParameters;
        }
      }
    }
    if (!((List)localObject1).isEmpty())
    {
      paramParameters = (Camera.Size)((List)localObject1).get(0);
      paramParameters = new Point(paramParameters.width, paramParameters.height);
      Log.i("CameraConfiguration", "Using largest suitable preview size: " + paramParameters);
      return paramParameters;
    }
    paramParameters = paramParameters.getPreviewSize();
    if (paramParameters == null)
      throw new IllegalStateException("Parameters contained no preview size!");
    paramParameters = new Point(paramParameters.width, paramParameters.height);
    Log.i("CameraConfiguration", "No suitable preview sizes, using default: " + paramParameters);
    return paramParameters;
  }

  private static String a(String paramString, Collection<String> paramCollection, String[] paramArrayOfString)
  {
    Log.i("CameraConfiguration", "Requesting " + paramString + " value from among: " + Arrays.toString(paramArrayOfString));
    Log.i("CameraConfiguration", "Supported " + paramString + " values: " + paramCollection);
    if (paramCollection != null)
    {
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfString[i];
        if (paramCollection.contains(str))
        {
          Log.i("CameraConfiguration", "Can set " + paramString + " to: " + str);
          return str;
        }
        i += 1;
      }
    }
    Log.i("CameraConfiguration", "No supported values match");
    return null;
  }

  public static void a(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    List localList = paramParameters.getSupportedFocusModes();
    String str2 = a("focus mode", localList, new String[] { "auto" });
    String str1 = str2;
    if (!paramBoolean)
    {
      str1 = str2;
      if (str2 == null)
        str1 = a("focus mode", localList, new String[] { "macro", "edof" });
    }
    if (str1 != null)
    {
      if (str1.equals(paramParameters.getFocusMode()))
        Log.i("CameraConfiguration", "Focus mode already set to " + str1);
    }
    else
      return;
    paramParameters.setFocusMode(str1);
  }

  public static void b(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    Object localObject = paramParameters.getSupportedFlashModes();
    if (paramBoolean);
    for (localObject = a("flash mode", (Collection)localObject, new String[] { "torch", "on" }); ; localObject = a("flash mode", (Collection)localObject, new String[] { "off" }))
    {
      if (localObject != null)
      {
        if (!((String)localObject).equals(paramParameters.getFlashMode()))
          break;
        Log.i("CameraConfiguration", "Flash mode already set to " + (String)localObject);
      }
      return;
    }
    Log.i("CameraConfiguration", "Setting flash mode to " + (String)localObject);
    paramParameters.setFlashMode((String)localObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.d
 * JD-Core Version:    0.6.2
 */