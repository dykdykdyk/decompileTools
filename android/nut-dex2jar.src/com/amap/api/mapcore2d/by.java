package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Semaphore;

class by<T>
{
  protected LinkedList<T> a = new LinkedList();
  protected final Semaphore b = new Semaphore(0, false);
  protected boolean c = true;

  public ArrayList<T> a(int paramInt, boolean paramBoolean)
  {
    if (this.a == null);
    while (true)
    {
      return null;
      try
      {
        this.b.acquire();
        try
        {
          label16: if (!this.c)
            continue;
          ArrayList localArrayList = b(paramInt, paramBoolean);
          return localArrayList;
        }
        catch (Exception localException)
        {
          return null;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        break label16;
      }
    }
  }

  public void a()
  {
    this.c = false;
    this.b.release(100);
  }

  public void a(List<T> paramList, boolean paramBoolean)
  {
    try
    {
      LinkedList localLinkedList = this.a;
      if (localLinkedList == null);
      while (true)
      {
        return;
        if (paramBoolean == true)
          this.a.clear();
        if (paramList != null)
          this.a.addAll(paramList);
        b();
      }
    }
    finally
    {
    }
    throw paramList;
  }

  protected ArrayList<T> b(int paramInt, boolean paramBoolean)
  {
    int j = 0;
    try
    {
      Object localObject1 = this.a;
      if (localObject1 == null)
        localObject1 = null;
      while (true)
      {
        return localObject1;
        int k = this.a.size();
        int i = paramInt;
        if (paramInt > k)
          i = k;
        localObject1 = new ArrayList(i);
        paramInt = j;
        while (paramInt < i)
        {
          ((ArrayList)localObject1).add(this.a.get(0));
          this.a.removeFirst();
          paramInt += 1;
        }
        b();
      }
    }
    finally
    {
    }
  }

  protected void b()
  {
    if (this.a == null);
    while ((!this.c) || (this.a.size() == 0))
      return;
    this.b.release();
  }

  public void c()
  {
    if (this.a == null)
      return;
    this.a.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.by
 * JD-Core Version:    0.6.2
 */