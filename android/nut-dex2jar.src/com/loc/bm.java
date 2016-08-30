package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import org.json.JSONObject;

public final class bm
{
  private static bm c = null;
  Hashtable<String, JSONObject> a = new Hashtable();
  boolean b = false;

  public static bm a()
  {
    try
    {
      if (c == null)
        c = new bm();
      bm localbm = c;
      return localbm;
    }
    finally
    {
    }
  }

  public final void a(Context paramContext)
  {
    if (!at.a);
    while (this.b)
      return;
    by.b();
    try
    {
      bk.a().b(paramContext);
      label25: this.b = true;
      return;
    }
    catch (Exception paramContext)
    {
      break label25;
    }
  }

  public final void a(Context paramContext, String paramString, AmapLoc paramAmapLoc)
  {
    Object localObject1 = null;
    try
    {
      if ((by.a(paramAmapLoc)) && (paramContext != null))
      {
        boolean bool = at.a;
        if (bool)
          break label29;
      }
      while (true)
      {
        return;
        label29: if (this.a.size() > 500)
        {
          localObject1 = az.a(paramAmapLoc.i(), paramAmapLoc.h());
          if (!this.a.containsKey(localObject1));
        }
        else
        {
          Object localObject2 = localObject1;
          if (localObject1 == null)
            localObject2 = az.a(paramAmapLoc.i(), paramAmapLoc.h());
          localObject1 = new JSONObject();
          try
          {
            ((JSONObject)localObject1).put("key", paramString);
            ((JSONObject)localObject1).put("lat", paramAmapLoc.i());
            ((JSONObject)localObject1).put("lon", paramAmapLoc.h());
            a(paramContext, (String)localObject2, ((JSONObject)localObject1).toString(), 1, by.a(), true);
          }
          catch (Exception paramContext)
          {
          }
        }
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a(Context paramContext, String paramString1, String paramString2, int paramInt, long paramLong, boolean paramBoolean)
  {
    if (paramContext != null);
    try
    {
      boolean bool = TextUtils.isEmpty(paramString1);
      if (bool);
      while (true)
      {
        return;
        if (at.a)
        {
          JSONObject localJSONObject2 = (JSONObject)this.a.get(paramString1);
          JSONObject localJSONObject1 = localJSONObject2;
          if (localJSONObject2 == null)
            localJSONObject1 = new JSONObject();
          try
          {
            localJSONObject1.put("x", paramString2);
            localJSONObject1.put("time", paramLong);
            if (this.a.containsKey(paramString1))
              localJSONObject1.put("num", localJSONObject1.getInt("num") + paramInt);
            while (true)
            {
              while (true)
              {
                label105: this.a.put(paramString1, localJSONObject1);
                if (!paramBoolean)
                  break;
                try
                {
                  bk.a().a(paramContext, paramString1, paramString2, paramLong);
                }
                catch (Exception paramContext)
                {
                }
              }
              break;
              localJSONObject1.put("num", paramInt);
            }
          }
          catch (Exception localException)
          {
            break label105;
          }
        }
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  public final ArrayList<bl> b()
  {
    try
    {
      ArrayList localArrayList1 = new ArrayList();
      boolean bool = this.a.isEmpty();
      if (bool);
      while (true)
      {
        return localArrayList1;
        Hashtable localHashtable = this.a;
        ArrayList localArrayList2 = new ArrayList(localHashtable.keySet());
        Iterator localIterator = localArrayList2.iterator();
        while (localIterator.hasNext())
        {
          String str1 = (String)localIterator.next();
          try
          {
            JSONObject localJSONObject = (JSONObject)localHashtable.get(str1);
            int i = localJSONObject.getInt("num");
            String str2 = localJSONObject.getString("x");
            long l = localJSONObject.getLong("time");
            if (i >= 120)
              localArrayList1.add(new bl(str1, l, i, str2));
          }
          catch (Exception localException)
          {
          }
        }
        Collections.sort(localArrayList1, new bn(this));
        localArrayList2.clear();
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bm
 * JD-Core Version:    0.6.2
 */