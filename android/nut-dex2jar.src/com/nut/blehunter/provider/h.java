package com.nut.blehunter.provider;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.nut.blehunter.entity.FindLocation;
import com.nut.blehunter.entity.Position;

public final class h extends a
{
  public static final String[] b = { "uuid", "tag_id", "source", "longitude", "latitude", "find_time", "find_address" };
  private static h c;

  public static FindLocation a(Cursor paramCursor)
  {
    FindLocation localFindLocation = new FindLocation();
    try
    {
      localFindLocation.a = paramCursor.getString(paramCursor.getColumnIndex("tag_id"));
      localFindLocation.c = paramCursor.getString(paramCursor.getColumnIndex("find_address"));
      String str = paramCursor.getString(paramCursor.getColumnIndex("uuid"));
      int i = paramCursor.getInt(paramCursor.getColumnIndex("source"));
      double d1 = paramCursor.getDouble(paramCursor.getColumnIndex("longitude"));
      double d2 = paramCursor.getDouble(paramCursor.getColumnIndex("latitude"));
      localFindLocation.b = new Position(paramCursor.getLong(paramCursor.getColumnIndex("find_time")), d2, d1);
      localFindLocation.b.a = str;
      localFindLocation.b.b = i;
      return localFindLocation;
    }
    catch (NumberFormatException paramCursor)
    {
      b.a.a.b(paramCursor, "createLocationFromCursor Exception", new Object[0]);
    }
    return null;
  }

  private static ContentValues b(FindLocation paramFindLocation)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("uuid", paramFindLocation.b.a);
    localContentValues.put("tag_id", paramFindLocation.a);
    localContentValues.put("longitude", Double.valueOf(paramFindLocation.b.c));
    localContentValues.put("latitude", Double.valueOf(paramFindLocation.b.d));
    localContentValues.put("find_time", Long.valueOf(paramFindLocation.b.e));
    localContentValues.put("find_address", paramFindLocation.c);
    localContentValues.put("source", Integer.valueOf(paramFindLocation.b.b));
    return localContentValues;
  }

  public static h b()
  {
    try
    {
      if (c == null)
        c = new h();
      h localh = c;
      return localh;
    }
    finally
    {
    }
  }

  public static void c()
  {
  }

  protected final Uri a()
  {
    return c.a;
  }

  public final void a(FindLocation paramFindLocation)
  {
    if ((paramFindLocation.b != null) && (a(paramFindLocation.b.a)))
    {
      a(b(paramFindLocation), "uuid = ? ", new String[] { paramFindLocation.b.a });
      return;
    }
    a(b(paramFindLocation));
  }

  public final boolean a(String paramString)
  {
    boolean bool = true;
    paramString = a(new String[] { "_id" }, "uuid = ? ", new String[] { paramString }, null);
    if (paramString != null)
      try
      {
        int i = paramString.getCount();
        if (i > 0)
          return bool;
        bool = false;
      }
      finally
      {
        paramString.close();
      }
    return false;
  }

  public final FindLocation b(String paramString)
  {
    paramString = a(b, "tag_id = ? ", new String[] { paramString }, "find_time DESC");
    try
    {
      if (paramString.moveToNext())
      {
        FindLocation localFindLocation = a(paramString);
        return localFindLocation;
      }
      return null;
    }
    finally
    {
      paramString.close();
    }
  }

  public final FindLocation c(String paramString)
  {
    Object localObject = null;
    Cursor localCursor = a(b, "uuid = ? ", new String[] { paramString }, null);
    paramString = localObject;
    if (localCursor != null);
    try
    {
      if (localCursor.moveToNext())
      {
        paramString = a(localCursor);
        return paramString;
      }
      return null;
    }
    catch (Exception paramString)
    {
      b.a.a.b(paramString, "getByUUID Exception", new Object[0]);
      return null;
    }
    finally
    {
      localCursor.close();
    }
    throw paramString;
  }

  public final void d(String paramString)
  {
    Cursor localCursor = a(b, "tag_id = ? ", new String[] { paramString }, null);
    if (localCursor == null);
    for (int i = 0; ; i = localCursor.getCount())
    {
      localCursor.close();
      if (i > 0)
        a("tag_id = ?", new String[] { paramString });
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.h
 * JD-Core Version:    0.6.2
 */