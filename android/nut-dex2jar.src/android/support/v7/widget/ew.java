package android.support.v7.widget;

import android.view.View;

final class ew
{
  static int a(eo parameo, dk paramdk, View paramView1, View paramView2, ec paramec, boolean paramBoolean)
  {
    if ((paramec.l() == 0) || (parameo.a() == 0) || (paramView1 == null) || (paramView2 == null))
      return 0;
    if (!paramBoolean)
      return Math.abs(ec.a(paramView1) - ec.a(paramView2)) + 1;
    int i = paramdk.b(paramView2);
    int j = paramdk.a(paramView1);
    return Math.min(paramdk.e(), i - j);
  }

  static int a(eo parameo, dk paramdk, View paramView1, View paramView2, ec paramec, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 0;
    int j = i;
    if (paramec.l() != 0)
    {
      j = i;
      if (parameo.a() != 0)
      {
        j = i;
        if (paramView1 != null)
        {
          if (paramView2 != null)
            break label45;
          j = i;
        }
      }
    }
    return j;
    label45: i = Math.min(ec.a(paramView1), ec.a(paramView2));
    j = Math.max(ec.a(paramView1), ec.a(paramView2));
    if (paramBoolean2);
    for (i = Math.max(0, parameo.a() - j - 1); ; i = Math.max(0, i))
    {
      j = i;
      if (!paramBoolean1)
        break;
      j = Math.abs(paramdk.b(paramView2) - paramdk.a(paramView1));
      int k = Math.abs(ec.a(paramView1) - ec.a(paramView2));
      float f = j / (k + 1);
      return Math.round(i * f + (paramdk.b() - paramdk.a(paramView1)));
    }
  }

  static int b(eo parameo, dk paramdk, View paramView1, View paramView2, ec paramec, boolean paramBoolean)
  {
    if ((paramec.l() == 0) || (parameo.a() == 0) || (paramView1 == null) || (paramView2 == null))
      return 0;
    if (!paramBoolean)
      return parameo.a();
    int i = paramdk.b(paramView2);
    int j = paramdk.a(paramView1);
    int k = Math.abs(ec.a(paramView1) - ec.a(paramView2));
    return (int)((i - j) / (k + 1) * parameo.a());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ew
 * JD-Core Version:    0.6.2
 */