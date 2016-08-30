package android.support.v7.view;

import android.support.v4.view.dt;
import android.support.v4.view.du;
import android.view.View;
import java.util.ArrayList;

final class m extends du
{
  private boolean b = false;
  private int c = 0;

  m(l paraml)
  {
  }

  public final void a(View paramView)
  {
    if (this.b);
    do
    {
      return;
      this.b = true;
    }
    while (this.a.b == null);
    this.a.b.a(null);
  }

  public final void b(View paramView)
  {
    int i = this.c + 1;
    this.c = i;
    if (i == this.a.a.size())
    {
      if (this.a.b != null)
        this.a.b.b(null);
      this.c = 0;
      this.b = false;
      this.a.c = false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.m
 * JD-Core Version:    0.6.2
 */