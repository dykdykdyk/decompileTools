package com.soundcloud.android.crop;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

abstract class v extends Activity
{
  private final ArrayList<x> a = new ArrayList();

  public void a(x paramx)
  {
    this.a.remove(paramx);
  }

  public void b(x paramx)
  {
    if (this.a.contains(paramx))
      return;
    this.a.add(paramx);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = this.a.iterator();
    while (paramBundle.hasNext())
      paramBundle.next();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((x)localIterator.next()).a();
  }

  protected void onStart()
  {
    super.onStart();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((x)localIterator.next()).c();
  }

  protected void onStop()
  {
    super.onStop();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((x)localIterator.next()).b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.v
 * JD-Core Version:    0.6.2
 */