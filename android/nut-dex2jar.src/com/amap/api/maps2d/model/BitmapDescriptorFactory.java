package com.amap.api.maps2d.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.amap.api.mapcore2d.ao.a;
import com.amap.api.mapcore2d.ba;
import com.amap.api.mapcore2d.cz;
import java.io.FileInputStream;
import java.io.InputStream;

public final class BitmapDescriptorFactory
{
  public static final float HUE_AZURE = 210.0F;
  public static final float HUE_BLUE = 240.0F;
  public static final float HUE_CYAN = 180.0F;
  public static final float HUE_GREEN = 120.0F;
  public static final float HUE_MAGENTA = 300.0F;
  public static final float HUE_ORANGE = 30.0F;
  public static final float HUE_RED = 0.0F;
  public static final float HUE_ROSE = 330.0F;
  public static final float HUE_VIOLET = 270.0F;
  public static final float HUE_YELLOW = 60.0F;

  private static Bitmap a(View paramView)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    paramView.layout(0, 0, paramView.getMeasuredWidth(), paramView.getMeasuredHeight());
    paramView.buildDrawingCache();
    return paramView.getDrawingCache().copy(Bitmap.Config.ARGB_8888, false);
  }

  public static BitmapDescriptor defaultMarker()
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = fromAsset(ao.a.b.name() + ".png");
      return localBitmapDescriptor;
    }
    catch (Exception localException)
    {
      cz.a(localException, "BitmapDescriptorFactory", "defaultMarker");
    }
    return null;
  }

  public static BitmapDescriptor defaultMarker(float paramFloat)
  {
    int i = (int)(15.0F + paramFloat);
    while (true)
    {
      try
      {
        paramFloat = i / 30 * 30;
        if (paramFloat > 330.0F)
        {
          paramFloat = 330.0F;
          break label75;
          return fromAsset(str1 + "2d.png");
          if (paramFloat != 330.0F)
            continue;
          String str1 = "ROSE";
          continue;
        }
      }
      catch (Exception localException)
      {
        cz.a(localException, "BitmapDescriptorFactory", "defaultMarker");
        return null;
      }
      label75: String str2;
      while (true)
      {
        str2 = "";
        if (paramFloat != 0.0F)
          break label101;
        str2 = "RED";
        break;
        if (paramFloat < 0.0F)
          paramFloat = 0.0F;
      }
      label101: if (paramFloat == 30.0F)
        str2 = "ORANGE";
      else if (paramFloat == 60.0F)
        str2 = "YELLOW";
      else if (paramFloat == 120.0F)
        str2 = "GREEN";
      else if (paramFloat == 180.0F)
        str2 = "CYAN";
      else if (paramFloat == 210.0F)
        str2 = "AZURE";
      else if (paramFloat == 240.0F)
        str2 = "BLUE";
      else if (paramFloat == 270.0F)
        str2 = "VIOLET";
      else if (paramFloat == 300.0F)
        str2 = "MAGENTAV";
    }
  }

  public static BitmapDescriptor fromAsset(String paramString)
  {
    try
    {
      paramString = BitmapDescriptorFactory.class.getResourceAsStream("/assets/" + paramString);
      Bitmap localBitmap = BitmapFactory.decodeStream(paramString);
      if (paramString != null)
        paramString.close();
      paramString = fromBitmap(localBitmap);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      cz.a(paramString, "BitmapDescriptorFactory", "fromAsset");
      return null;
    }
    catch (Exception paramString)
    {
      cz.a(paramString, "BitmapDescriptorFactory", "fromAsset");
    }
    return null;
  }

  public static BitmapDescriptor fromBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return null;
    return new BitmapDescriptor(paramBitmap);
  }

  public static BitmapDescriptor fromFile(String paramString)
  {
    Object localObject = null;
    try
    {
      Context localContext = ba.a;
      if (localContext != null)
      {
        paramString = localContext.openFileInput(paramString);
        localObject = BitmapFactory.decodeStream(paramString);
        paramString.close();
        localObject = fromBitmap((Bitmap)localObject);
      }
      return localObject;
    }
    catch (Exception paramString)
    {
      cz.a(paramString, "BitmapDescriptorFactory", "fromFile");
    }
    return null;
  }

  public static BitmapDescriptor fromPath(String paramString)
  {
    try
    {
      paramString = fromBitmap(BitmapFactory.decodeFile(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      cz.a(paramString, "BitmapDescriptorFactory", "fromPath");
    }
    return null;
  }

  public static BitmapDescriptor fromResource(int paramInt)
  {
    BitmapDescriptor localBitmapDescriptor = null;
    try
    {
      Context localContext = ba.a;
      if (localContext != null)
        localBitmapDescriptor = fromBitmap(BitmapFactory.decodeStream(localContext.getResources().openRawResource(paramInt)));
      return localBitmapDescriptor;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      cz.a(localOutOfMemoryError, "BitmapDescriptorFactory", "fromResource");
      return null;
    }
    catch (Exception localException)
    {
      cz.a(localException, "BitmapDescriptorFactory", "fromResource");
    }
    return null;
  }

  public static BitmapDescriptor fromView(View paramView)
  {
    Object localObject = null;
    try
    {
      Context localContext = ba.a;
      if (localContext != null)
      {
        localObject = new FrameLayout(localContext);
        ((FrameLayout)localObject).addView(paramView);
        ((FrameLayout)localObject).destroyDrawingCache();
        localObject = fromBitmap(a((View)localObject));
      }
      return localObject;
    }
    catch (Exception paramView)
    {
      cz.a(paramView, "BitmapDescriptorFactory", "fromView");
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.BitmapDescriptorFactory
 * JD-Core Version:    0.6.2
 */