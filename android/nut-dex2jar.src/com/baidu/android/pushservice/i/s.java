package com.baidu.android.pushservice.i;

import android.content.Context;
import com.baidu.android.pushservice.util.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class s
{
  private static final String a = s.class.getSimpleName();
  private static volatile s b = null;
  private Context c = null;

  private s(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    if (this.c == null)
      com.baidu.android.pushservice.h.a.e(a, "Error occurs with mContext");
  }

  public static s a(Context paramContext)
  {
    if (b == null)
      b = new s(paramContext);
    com.baidu.android.pushservice.h.a.c(a, "Current packet name: " + paramContext.getPackageName());
    return b;
  }

  public final String a(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    Object localObject1 = new JSONArray();
    Object localObject4 = k.a(this.c);
    Object localObject5 = new ArrayList();
    Object localObject2 = new HashMap();
    Object localObject3 = new HashMap();
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList = new ArrayList();
    Object localObject6 = k.b(this.c, paramLong1, paramLong2, paramInt1, paramInt2);
    Object localObject7;
    Object localObject8;
    if (localObject6 != null)
    {
      localObject6 = ((List)localObject6).iterator();
      while (((Iterator)localObject6).hasNext())
      {
        localObject7 = (a)((Iterator)localObject6).next();
        if (((a)localObject7).a().startsWith(q.r))
        {
          if (!((HashMap)localObject3).containsKey(((a)localObject7).b()))
            ((HashMap)localObject3).put(((a)localObject7).b(), new ArrayList());
          localObject8 = (List)((HashMap)localObject3).get(((a)localObject7).b());
          if (localObject8 != null)
            ((List)localObject8).add(((a)localObject7).e());
        }
        else if (((a)localObject7).a().startsWith(q.t))
        {
          ((List)localObject5).add(((a)localObject7).d());
        }
      }
    }
    localObject6 = k.a(this.c, paramLong1, paramLong2, paramInt1, paramInt2);
    if (localObject6 != null)
    {
      localObject6 = ((List)localObject6).iterator();
      while (((Iterator)localObject6).hasNext())
      {
        localObject7 = (f)((Iterator)localObject6).next();
        if (((f)localObject7).a().startsWith(q.t))
        {
          ((List)localObject5).add(((f)localObject7).d());
        }
        else if (((f)localObject7).a().startsWith(q.r))
        {
          if (!((HashMap)localObject2).containsKey(((f)localObject7).b()))
            ((HashMap)localObject2).put(((f)localObject7).b(), new ArrayList());
          localObject8 = (List)((HashMap)localObject2).get(((f)localObject7).b());
          if (localObject8 != null)
            ((List)localObject8).add(((f)localObject7).e());
        }
        else if (((f)localObject7).a().startsWith(q.s))
        {
          if (!localHashMap.containsKey(((f)localObject7).b()))
            localHashMap.put(((f)localObject7).b(), new ArrayList());
          localObject8 = (List)localHashMap.get(((f)localObject7).b());
          if (localObject8 != null)
            ((List)localObject8).add(((f)localObject7).f());
        }
        else if (((f)localObject7).a().startsWith(q.u))
        {
          localArrayList.add(((f)localObject7).g());
        }
      }
    }
    try
    {
      if (((List)localObject5).size() <= 0)
        break label661;
      localObject6 = new JSONObject();
      ((JSONObject)localObject6).put("app_appid", "9527");
      localObject7 = new JSONArray();
      localObject5 = ((List)localObject5).iterator();
      while (((Iterator)localObject5).hasNext())
        ((JSONArray)localObject7).put(((j)((Iterator)localObject5).next()).a());
    }
    catch (JSONException localJSONException1)
    {
      com.baidu.android.pushservice.h.a.e(a, "error:" + localJSONException1.getMessage());
    }
    if (((JSONArray)localObject1).length() == 0);
    for (localObject1 = ""; ; localObject1 = ((JSONArray)localObject1).toString())
    {
      com.baidu.android.pushservice.h.a.c(a, "stat:" + (String)localObject1);
      return localObject1;
      ((JSONObject)localObject6).put("push_action", localObject7);
      ((JSONArray)localObject1).put(localObject6);
      label661: if (localObject4 != null)
      {
        localObject4 = ((List)localObject4).iterator();
        if (((Iterator)localObject4).hasNext())
        {
          Object localObject9 = (m)((Iterator)localObject4).next();
          localObject5 = ((m)localObject9).a(this.c);
          localObject6 = new JSONArray();
          localObject8 = (List)((HashMap)localObject2).get(((m)localObject9).a());
          localObject7 = (List)((HashMap)localObject3).get(((m)localObject9).a());
          localObject9 = (List)localHashMap.get(((m)localObject9).a());
          if (localObject8 != null)
            try
            {
              if (((List)localObject8).size() != 0)
              {
                localObject8 = ((List)localObject8).iterator();
                while (((Iterator)localObject8).hasNext())
                  ((JSONArray)localObject6).put(((n)((Iterator)localObject8).next()).a());
              }
            }
            catch (JSONException localJSONException2)
            {
              com.baidu.android.pushservice.h.a.e(a, "error: JSONException");
            }
          while (true)
          {
            if (((JSONArray)localObject6).length() > 0)
              ((JSONObject)localObject5).put("push_action", localObject6);
            ((JSONArray)localObject1).put(localObject5);
            break;
            if ((localObject9 != null) && (((List)localObject9).size() != 0))
            {
              localObject8 = ((List)localObject9).iterator();
              while (((Iterator)localObject8).hasNext())
                ((JSONArray)localObject6).put(((c)((Iterator)localObject8).next()).a());
            }
            if ((localJSONException2 != null) && (localJSONException2.size() != 0))
            {
              Iterator localIterator2 = localJSONException2.iterator();
              while (localIterator2.hasNext())
                ((JSONArray)localObject6).put(((b)localIterator2.next()).a());
            }
          }
        }
      }
      if (localJSONException1.size() <= 0)
        break;
      localObject2 = new JSONObject();
      ((JSONObject)localObject2).put("app_appid", "9528");
      localObject3 = new JSONArray();
      Iterator localIterator1 = localJSONException1.iterator();
      while (localIterator1.hasNext())
        ((JSONArray)localObject3).put(((g)localIterator1.next()).a());
      ((JSONObject)localObject2).put("crash_info", localObject3);
      ((JSONArray)localObject1).put(localObject2);
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.s
 * JD-Core Version:    0.6.2
 */