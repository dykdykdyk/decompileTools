package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public final class bp
{
  final br a;
  final bq b;
  final List<View> c;

  bp(br parambr)
  {
    this.a = parambr;
    this.b = new bq();
    this.c = new ArrayList();
  }

  public final int a()
  {
    return this.a.a() - this.c.size();
  }

  final int a(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = this.a.a();
    int i = paramInt;
    while (true)
    {
      if (i >= j)
        break label72;
      int k = paramInt - (i - this.b.e(i));
      if (k == 0)
        while (true)
        {
          paramInt = i;
          if (!this.b.c(i))
            break;
          i += 1;
        }
      i += k;
    }
    label72: return -1;
  }

  final void a(View paramView)
  {
    this.c.add(paramView);
    this.a.c(paramView);
  }

  final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0);
    for (paramInt = this.a.a(); ; paramInt = a(paramInt))
    {
      this.b.a(paramInt, paramBoolean);
      if (paramBoolean)
        a(paramView);
      this.a.a(paramView, paramInt, paramLayoutParams);
      return;
    }
  }

  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0);
    for (paramInt = this.a.a(); ; paramInt = a(paramInt))
    {
      this.b.a(paramInt, paramBoolean);
      if (paramBoolean)
        a(paramView);
      this.a.a(paramView, paramInt);
      return;
    }
  }

  final int b()
  {
    return this.a.a();
  }

  public final View b(int paramInt)
  {
    paramInt = a(paramInt);
    return this.a.b(paramInt);
  }

  final boolean b(View paramView)
  {
    if (this.c.remove(paramView))
    {
      this.a.d(paramView);
      return true;
    }
    return false;
  }

  final int c(View paramView)
  {
    int i = this.a.a(paramView);
    if (i == -1);
    while (this.b.c(i))
      return -1;
    return i - this.b.e(i);
  }

  final View c(int paramInt)
  {
    return this.a.b(paramInt);
  }

  final void d(int paramInt)
  {
    paramInt = a(paramInt);
    this.b.d(paramInt);
    this.a.c(paramInt);
  }

  final boolean d(View paramView)
  {
    return this.c.contains(paramView);
  }

  public final String toString()
  {
    return this.b.toString() + ", hidden list:" + this.c.size();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bp
 * JD-Core Version:    0.6.2
 */