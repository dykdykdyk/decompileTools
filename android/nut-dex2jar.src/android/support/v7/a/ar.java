package android.support.v7.a;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.f.a;
import android.support.v4.view.bl;
import android.support.v7.b.l;
import android.support.v7.view.e;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.Map;

final class ar
{
  private static final Class<?>[] a = { Context.class, AttributeSet.class };
  private static final int[] b = { 16843375 };
  private static final String[] c = { "android.widget.", "android.view.", "android.webkit." };
  private static final Map<String, Constructor<? extends View>> d = new a();
  private final Object[] e = new Object[2];

  static Context a(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.View, 0, 0);
    if (paramBoolean);
    for (int i = paramAttributeSet.getResourceId(l.View_android_theme, 0); ; i = 0)
    {
      int j = i;
      if (i == 0)
      {
        i = paramAttributeSet.getResourceId(l.View_theme, 0);
        j = i;
        if (i != 0)
        {
          Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
          j = i;
        }
      }
      paramAttributeSet.recycle();
      paramAttributeSet = paramContext;
      if (j != 0)
        if ((paramContext instanceof e))
        {
          paramAttributeSet = paramContext;
          if (((e)paramContext).a == j);
        }
        else
        {
          paramAttributeSet = new e(paramContext, j);
        }
      return paramAttributeSet;
    }
  }

  private View a(Context paramContext, String paramString1, String paramString2)
    throws ClassNotFoundException, InflateException
  {
    Constructor localConstructor = (Constructor)d.get(paramString1);
    Object localObject = localConstructor;
    if (localConstructor == null);
    try
    {
      localObject = paramContext.getClassLoader();
      if (paramString2 != null);
      for (paramContext = paramString2 + paramString1; ; paramContext = paramString1)
      {
        localObject = ((ClassLoader)localObject).loadClass(paramContext).asSubclass(View.class).getConstructor(a);
        d.put(paramString1, localObject);
        ((Constructor)localObject).setAccessible(true);
        paramContext = (View)((Constructor)localObject).newInstance(this.e);
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
    }
    return null;
  }

  static void a(View paramView, AttributeSet paramAttributeSet)
  {
    Object localObject = paramView.getContext();
    if ((!(localObject instanceof ContextWrapper)) || ((Build.VERSION.SDK_INT >= 15) && (!bl.z(paramView))))
      return;
    paramAttributeSet = ((Context)localObject).obtainStyledAttributes(paramAttributeSet, b);
    localObject = paramAttributeSet.getString(0);
    if (localObject != null)
      paramView.setOnClickListener(new as(paramView, (String)localObject));
    paramAttributeSet.recycle();
  }

  final View a(Context paramContext, String paramString, AttributeSet paramAttributeSet)
  {
    String str = paramString;
    if (paramString.equals("view"))
      str = paramAttributeSet.getAttributeValue(null, "class");
    try
    {
      this.e[0] = paramContext;
      this.e[1] = paramAttributeSet;
      if (-1 == str.indexOf('.'))
      {
        int i = 0;
        while (i < c.length)
        {
          paramString = a(paramContext, str, c[i]);
          if (paramString != null)
            return paramString;
          i += 1;
        }
        return null;
      }
      paramContext = a(paramContext, str, null);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      return null;
    }
    finally
    {
      this.e[0] = null;
      this.e[1] = null;
    }
    throw paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ar
 * JD-Core Version:    0.6.2
 */