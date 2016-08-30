package com.nut.blehunter.provider;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.d;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.entity.i;
import com.nut.blehunter.entity.r;
import java.util.Iterator;
import java.util.List;

public final class j extends a
{
  public static final String[] b = { "product_id", "customization", "last_firmware", "firmware_updated", "bind_path", "call_device_time", "valid_reconnection_rssi", "radio_params", "builtin", "app_alert_delay", "low_battery_level", "shop_type" };
  private static j c;

  private static ContentValues a(r paramr)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("product_id", Integer.valueOf(paramr.a));
    if (paramr.b != null)
      localContentValues.put("customization", com.nut.blehunter.e.a().toJson(paramr.b));
    if (paramr.c != null)
      localContentValues.put("last_firmware", com.nut.blehunter.e.a().toJson(paramr.c));
    if (paramr.d != null)
      localContentValues.put("firmware_updated", com.nut.blehunter.e.a().toJson(paramr.d));
    localContentValues.put("bind_path", Integer.valueOf(paramr.e));
    localContentValues.put("call_device_time", Integer.valueOf(paramr.f));
    localContentValues.put("valid_reconnection_rssi", Integer.valueOf(paramr.g));
    localContentValues.put("radio_params", paramr.h);
    localContentValues.put("builtin", Integer.valueOf(paramr.i));
    localContentValues.put("app_alert_delay", Integer.valueOf(paramr.j));
    localContentValues.put("low_battery_level", Integer.valueOf(paramr.k));
    localContentValues.put("shop_type", Integer.valueOf(paramr.l));
    return localContentValues;
  }

  public static j b()
  {
    try
    {
      if (c == null)
        c = new j();
      j localj = c;
      return localj;
    }
    finally
    {
    }
  }

  private boolean c(int paramInt)
  {
    boolean bool = true;
    Cursor localCursor = a(new String[] { "product_id" }, "product_id = ?", new String[] { String.valueOf(paramInt) }, null);
    if (localCursor != null)
      try
      {
        paramInt = localCursor.getCount();
        if (paramInt > 0)
          return bool;
        bool = false;
      }
      finally
      {
        localCursor.close();
      }
    return false;
  }

  protected final Uri a()
  {
    return e.a;
  }

  public final r a(int paramInt)
  {
    Object localObject1 = null;
    String str = null;
    Cursor localCursor = a(b, "product_id = ?", new String[] { String.valueOf(paramInt) }, null);
    if (localCursor != null)
      localObject1 = str;
    try
    {
      if (localCursor.getCount() > 0)
      {
        localObject1 = str;
        if (localCursor.moveToFirst())
        {
          localObject1 = new r();
          ((r)localObject1).a = localCursor.getInt(localCursor.getColumnIndex("product_id"));
          str = localCursor.getString(localCursor.getColumnIndex("customization"));
          if (!TextUtils.isEmpty(str))
            ((r)localObject1).b = ((d)com.nut.blehunter.e.a(str, d.class));
          str = localCursor.getString(localCursor.getColumnIndex("last_firmware"));
          if (!TextUtils.isEmpty(str))
            ((r)localObject1).c = ((h)com.nut.blehunter.e.a(str, h.class));
          str = localCursor.getString(localCursor.getColumnIndex("firmware_updated"));
          if (!TextUtils.isEmpty(str))
            ((r)localObject1).d = ((i)com.nut.blehunter.e.a(str, i.class));
          ((r)localObject1).e = localCursor.getInt(localCursor.getColumnIndex("bind_path"));
          ((r)localObject1).f = localCursor.getInt(localCursor.getColumnIndex("call_device_time"));
          ((r)localObject1).g = localCursor.getInt(localCursor.getColumnIndex("valid_reconnection_rssi"));
          ((r)localObject1).h = localCursor.getString(localCursor.getColumnIndex("radio_params"));
          ((r)localObject1).i = localCursor.getInt(localCursor.getColumnIndex("builtin"));
          ((r)localObject1).j = localCursor.getInt(localCursor.getColumnIndex("app_alert_delay"));
          ((r)localObject1).k = localCursor.getInt(localCursor.getColumnIndex("low_battery_level"));
          ((r)localObject1).l = localCursor.getInt(localCursor.getColumnIndex("shop_type"));
        }
      }
      return localObject1;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final void a(int paramInt, h paramh)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("last_firmware", com.nut.blehunter.e.a().toJson(paramh));
    a(localContentValues, "product_id = ?", new String[] { String.valueOf(paramInt) });
  }

  public final void a(List<r> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      r localr = (r)paramList.next();
      if (c(localr.a))
        a(a(localr), "product_id = ?", new String[] { localr.a });
      else
        a(a(localr));
    }
  }

  public final boolean a(Nut paramNut)
  {
    boolean bool2 = false;
    try
    {
      r localr = a(paramNut.p);
      boolean bool1 = bool2;
      if (localr.c != null)
      {
        bool1 = bool2;
        if (Integer.parseInt(localr.c.b) > Integer.parseInt(paramNut.v))
        {
          boolean bool3 = TextUtils.isEmpty(localr.c.d);
          bool1 = bool2;
          if (!bool3)
            bool1 = true;
        }
      }
      return bool1;
    }
    catch (NumberFormatException paramNut)
    {
      b.a.a.a(paramNut, "format firmware version exception", new Object[0]);
    }
    return false;
  }

  public final int b(int paramInt)
  {
    Cursor localCursor = a(new String[] { "product_id", "call_device_time" }, "product_id = ?", new String[] { String.valueOf(paramInt) }, null);
    paramInt = 35;
    int i = paramInt;
    if (localCursor != null);
    try
    {
      if (localCursor.moveToFirst())
        paramInt = localCursor.getInt(localCursor.getColumnIndex("call_device_time"));
      localCursor.close();
      i = paramInt;
      return i;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final boolean c()
  {
    Cursor localCursor = a(b, null, null, null);
    return (localCursor == null) || (localCursor.getCount() <= 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.j
 * JD-Core Version:    0.6.2
 */