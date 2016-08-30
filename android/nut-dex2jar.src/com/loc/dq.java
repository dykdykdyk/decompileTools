package com.loc;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amap.api.fence.Fence;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class dq
{
  Context a;
  Hashtable<PendingIntent, ArrayList<Fence>> b = new Hashtable();

  public dq(Context paramContext)
  {
    this.a = paramContext;
  }

  static boolean a(Fence paramFence)
  {
    return (paramFence.b() != -1L) && (paramFence.b() <= by.b());
  }

  final void a(PendingIntent paramPendingIntent, Fence paramFence, int paramInt)
  {
    Intent localIntent = new Intent();
    Bundle localBundle = new Bundle();
    localBundle.putString("fenceid", paramFence.b);
    localBundle.putInt("event", paramInt);
    localIntent.putExtras(localBundle);
    try
    {
      paramPendingIntent.send(this.a, 0, localIntent);
      return;
    }
    catch (Exception paramPendingIntent)
    {
    }
  }

  final boolean a(PendingIntent paramPendingIntent, List<String> paramList)
  {
    boolean bool3 = false;
    boolean bool1 = false;
    boolean bool2;
    if (this.b.isEmpty())
      bool2 = bool1;
    do
    {
      do
      {
        do
        {
          do
          {
            return bool2;
            bool2 = bool1;
          }
          while (paramList.isEmpty());
          bool2 = bool1;
        }
        while (!this.b.containsKey(paramPendingIntent));
        paramPendingIntent = ((ArrayList)this.b.get(paramPendingIntent)).iterator();
        bool1 = bool3;
        bool2 = bool1;
      }
      while (paramPendingIntent == null);
      bool2 = bool1;
    }
    while (!paramPendingIntent.hasNext());
    Fence localFence = (Fence)paramPendingIntent.next();
    if ((paramList.contains(localFence.b)) || (a(localFence)))
    {
      paramPendingIntent.remove();
      bool1 = true;
    }
    while (true)
      break;
  }

  final boolean a(List<String> paramList)
  {
    if (this.b.isEmpty());
    while (paramList.isEmpty())
      return false;
    Iterator localIterator1 = this.b.entrySet().iterator();
    boolean bool2 = false;
    Map.Entry localEntry;
    boolean bool1;
    if ((localIterator1 != null) && (localIterator1.hasNext()))
    {
      localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((ArrayList)localEntry.getValue()).iterator();
      bool1 = bool2;
      label81: if ((localIterator2 != null) && (localIterator2.hasNext()))
      {
        Fence localFence = (Fence)localIterator2.next();
        if ((!paramList.contains(localFence.b)) && (!a(localFence)))
          break label174;
        localIterator2.remove();
        bool1 = true;
      }
    }
    label174: 
    while (true)
    {
      break label81;
      bool2 = bool1;
      if (!((ArrayList)localEntry.getValue()).isEmpty())
        break;
      localIterator1.remove();
      bool2 = bool1;
      break;
      return bool2;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dq
 * JD-Core Version:    0.6.2
 */