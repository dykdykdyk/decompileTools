package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.bl;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class d
  implements x
{
  public Context a;
  public Context b;
  public i c;
  protected LayoutInflater d;
  protected LayoutInflater e;
  public y f;
  public z g;
  public int h;
  private int i;
  private int j;

  public d(Context paramContext, int paramInt1, int paramInt2)
  {
    this.a = paramContext;
    this.d = LayoutInflater.from(paramContext);
    this.i = paramInt1;
    this.j = paramInt2;
  }

  public z a(ViewGroup paramViewGroup)
  {
    if (this.g == null)
    {
      this.g = ((z)this.d.inflate(this.i, paramViewGroup, false));
      this.g.a(this.c);
      b(true);
    }
    return this.g;
  }

  public View a(m paramm, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof aa));
    for (paramView = (aa)paramView; ; paramView = (aa)this.d.inflate(this.j, paramViewGroup, false))
    {
      a(paramm, paramView);
      return (View)paramView;
    }
  }

  public void a(Context paramContext, i parami)
  {
    this.b = paramContext;
    this.e = LayoutInflater.from(this.b);
    this.c = parami;
  }

  public void a(i parami, boolean paramBoolean)
  {
    if (this.f != null)
      this.f.a(parami, paramBoolean);
  }

  public abstract void a(m paramm, aa paramaa);

  public boolean a()
  {
    return false;
  }

  public boolean a(ad paramad)
  {
    if (this.f != null)
      return this.f.a(paramad);
    return false;
  }

  public boolean a(m paramm)
  {
    return true;
  }

  public boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }

  public void b(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)this.g;
    if (localViewGroup == null);
    label225: label231: 
    while (true)
    {
      return;
      int m;
      if (this.c != null)
      {
        this.c.i();
        ArrayList localArrayList = this.c.h();
        int i1 = localArrayList.size();
        int n = 0;
        int k = 0;
        m = k;
        if (n < i1)
        {
          m localm = (m)localArrayList.get(n);
          if (!a(localm))
            break label225;
          View localView1 = localViewGroup.getChildAt(k);
          if ((localView1 instanceof aa));
          for (Object localObject = ((aa)localView1).getItemData(); ; localObject = null)
          {
            View localView2 = a(localm, localView1, localViewGroup);
            if (localm != localObject)
            {
              localView2.setPressed(false);
              bl.r(localView2);
            }
            if (localView2 != localView1)
            {
              localObject = (ViewGroup)localView2.getParent();
              if (localObject != null)
                ((ViewGroup)localObject).removeView(localView2);
              ((ViewGroup)this.g).addView(localView2, k);
            }
            k += 1;
            n += 1;
            break;
          }
        }
      }
      while (true)
      {
        if (m >= localViewGroup.getChildCount())
          break label231;
        if (!a(localViewGroup, m))
        {
          m += 1;
          continue;
          break;
          m = 0;
        }
      }
    }
  }

  public final boolean b(m paramm)
  {
    return false;
  }

  public final boolean c(m paramm)
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.d
 * JD-Core Version:    0.6.2
 */