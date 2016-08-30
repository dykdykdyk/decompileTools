package com.tencent.open.c;

import android.content.Context;
import android.webkit.WebView;
import java.lang.reflect.Method;

public class a extends WebView
{
  public a(Context paramContext)
  {
    super(paramContext);
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Object localObject = getSettings();
    if (localObject == null);
    while (true)
    {
      return;
      localObject = localObject.getClass();
      try
      {
        localObject = ((Class)localObject).getMethod("removeJavascriptInterface", new Class[] { String.class });
        if (localObject != null)
        {
          ((Method)localObject).invoke(this, new Object[] { "searchBoxJavaBridge_" });
          return;
        }
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.c.a
 * JD-Core Version:    0.6.2
 */