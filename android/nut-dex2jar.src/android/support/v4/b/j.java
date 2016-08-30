package android.support.v4.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class j
{
  private static final Object f = new Object();
  private static j g;
  private final Context a;
  private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> b = new HashMap();
  private final HashMap<String, ArrayList<m>> c = new HashMap();
  private final ArrayList<l> d = new ArrayList();
  private final Handler e;

  private j(Context paramContext)
  {
    this.a = paramContext;
    this.e = new k(this, paramContext.getMainLooper());
  }

  public static j a(Context paramContext)
  {
    synchronized (f)
    {
      if (g == null)
        g = new j(paramContext.getApplicationContext());
      paramContext = g;
      return paramContext;
    }
  }

  public final void a(BroadcastReceiver paramBroadcastReceiver)
  {
    while (true)
    {
      int k;
      int i;
      synchronized (this.b)
      {
        ArrayList localArrayList1 = (ArrayList)this.b.remove(paramBroadcastReceiver);
        if (localArrayList1 != null)
          break label167;
        return;
        if (j < localArrayList1.size())
        {
          IntentFilter localIntentFilter = (IntentFilter)localArrayList1.get(j);
          k = 0;
          if (k >= localIntentFilter.countActions())
            break label188;
          String str = localIntentFilter.getAction(k);
          ArrayList localArrayList2 = (ArrayList)this.c.get(str);
          if (localArrayList2 == null)
            break label179;
          i = 0;
          if (i < localArrayList2.size())
          {
            if (((m)localArrayList2.get(i)).b == paramBroadcastReceiver)
            {
              localArrayList2.remove(i);
              i -= 1;
              break label172;
            }
          }
          else
          {
            if (localArrayList2.size() > 0)
              break label179;
            this.c.remove(str);
            break label179;
          }
        }
        else
        {
          return;
        }
      }
      break label172;
      label167: int j = 0;
      continue;
      label172: i += 1;
      continue;
      label179: k += 1;
      continue;
      label188: j += 1;
    }
  }

  public final void a(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    synchronized (this.b)
    {
      m localm = new m(paramIntentFilter, paramBroadcastReceiver);
      Object localObject2 = (ArrayList)this.b.get(paramBroadcastReceiver);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new ArrayList(1);
        this.b.put(paramBroadcastReceiver, localObject1);
      }
      ((ArrayList)localObject1).add(paramIntentFilter);
      int i = 0;
      while (i < paramIntentFilter.countActions())
      {
        localObject2 = paramIntentFilter.getAction(i);
        localObject1 = (ArrayList)this.c.get(localObject2);
        paramBroadcastReceiver = (BroadcastReceiver)localObject1;
        if (localObject1 == null)
        {
          paramBroadcastReceiver = new ArrayList(1);
          this.c.put(localObject2, paramBroadcastReceiver);
        }
        paramBroadcastReceiver.add(localm);
        i += 1;
      }
      return;
    }
  }

  public final boolean a(Intent paramIntent)
  {
    int i;
    label155: int j;
    Object localObject;
    int k;
    ArrayList localArrayList1;
    synchronized (this.b)
    {
      String str1 = paramIntent.getAction();
      String str2 = paramIntent.resolveTypeIfNeeded(this.a.getContentResolver());
      Uri localUri = paramIntent.getData();
      String str3 = paramIntent.getScheme();
      Set localSet = paramIntent.getCategories();
      if ((paramIntent.getFlags() & 0x8) == 0)
        break label485;
      i = 1;
      if (i != 0)
        Log.v("LocalBroadcastManager", "Resolving type " + str2 + " scheme " + str3 + " of intent " + paramIntent);
      ArrayList localArrayList2 = (ArrayList)this.c.get(paramIntent.getAction());
      if (localArrayList2 == null)
        break label462;
      if (i == 0)
        break label470;
      Log.v("LocalBroadcastManager", "Action list: " + localArrayList2);
      break label470;
      if (j >= localArrayList2.size())
        break label521;
      localObject = (m)localArrayList2.get(j);
      if (i != 0)
        Log.v("LocalBroadcastManager", "Matching against filter " + ((m)localObject).a);
      if (((m)localObject).c)
      {
        if (i == 0)
          break label490;
        Log.v("LocalBroadcastManager", "  Filter's target already added");
      }
      else
      {
        k = ((m)localObject).a.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
        if (k >= 0)
        {
          if (i != 0)
            Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(k));
          if (localArrayList1 != null)
            break label467;
          localArrayList1 = new ArrayList();
          label299: localArrayList1.add(localObject);
          ((m)localObject).c = true;
        }
      }
    }
    if (i != 0)
      switch (k)
      {
      default:
        localObject = "unknown reason";
        label364: Log.v("LocalBroadcastManager", "  Filter did not match: " + (String)localObject);
        break;
      case -3:
      case -4:
      case -2:
      case -1:
      }
    while (true)
      if (i < localArrayList1.size())
      {
        ((m)localArrayList1.get(i)).c = false;
        i += 1;
      }
      else
      {
        this.d.add(new l(paramIntent, localArrayList1));
        if (!this.e.hasMessages(1))
          this.e.sendEmptyMessage(1);
        return true;
        label462: label467: label470: label485: label490: 
        do
        {
          return false;
          break label299;
          localArrayList1 = null;
          j = 0;
          break label155;
          while (true)
          {
            j += 1;
            break label155;
            i = 0;
            break;
          }
          localObject = "action";
          break label364;
          localObject = "category";
          break label364;
          localObject = "data";
          break label364;
          localObject = "type";
          break label364;
        }
        while (localArrayList1 == null);
        label521: i = 0;
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.b.j
 * JD-Core Version:    0.6.2
 */