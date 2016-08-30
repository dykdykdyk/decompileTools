package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.support.v7.a.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public final class fq extends ContextWrapper
{
  private static final ArrayList<WeakReference<fq>> a = new ArrayList();
  private Resources b;
  private final Resources.Theme c;

  private fq(Context paramContext)
  {
    super(paramContext);
    if (ge.a())
    {
      this.c = getResources().newTheme();
      this.c.setTo(paramContext.getTheme());
      return;
    }
    this.c = null;
  }

  public static Context a(Context paramContext)
  {
    int i;
    Object localObject;
    int j;
    if (((paramContext instanceof fq)) || ((paramContext.getResources() instanceof fs)) || ((paramContext.getResources() instanceof ge)))
    {
      i = 0;
      localObject = paramContext;
      if (i != 0)
      {
        j = a.size();
        i = 0;
      }
    }
    while (true)
    {
      if (i >= j)
        break label122;
      localObject = (WeakReference)a.get(i);
      if (localObject != null);
      for (localObject = (fq)((WeakReference)localObject).get(); ; localObject = null)
      {
        if ((localObject == null) || (((fq)localObject).getBaseContext() != paramContext))
          break label115;
        return localObject;
        if ((u.j()) && (Build.VERSION.SDK_INT > 20))
        {
          i = 0;
          break;
        }
        i = 1;
        break;
      }
      label115: i += 1;
    }
    label122: paramContext = new fq(paramContext);
    a.add(new WeakReference(paramContext));
    return paramContext;
  }

  public final Resources getResources()
  {
    if (this.b == null)
      if (this.c != null)
        break label37;
    label37: for (Object localObject = new fs(this, super.getResources()); ; localObject = new ge(this, super.getResources()))
    {
      this.b = ((Resources)localObject);
      return this.b;
    }
  }

  public final Resources.Theme getTheme()
  {
    if (this.c == null)
      return super.getTheme();
    return this.c;
  }

  public final void setTheme(int paramInt)
  {
    if (this.c == null)
    {
      super.setTheme(paramInt);
      return;
    }
    this.c.applyStyle(paramInt, true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fq
 * JD-Core Version:    0.6.2
 */