package android.support.v7.widget;

import android.support.v4.view.bl;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class er
{
  private static final List<Object> m = Collections.EMPTY_LIST;
  public final View a;
  public int b = -1;
  int c = -1;
  long d = -1L;
  int e = -1;
  public int f = -1;
  er g = null;
  er h = null;
  List<Object> i = null;
  List<Object> j = null;
  RecyclerView k;
  private int l;
  private int n = 0;
  private ei o = null;
  private boolean p = false;
  private int q = 0;

  public er(View paramView)
  {
    if (paramView == null)
      throw new IllegalArgumentException("itemView may not be null");
    this.a = paramView;
  }

  final void a()
  {
    this.c = -1;
    this.f = -1;
  }

  final void a(int paramInt1, int paramInt2)
  {
    this.l = (this.l & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }

  final void a(int paramInt, boolean paramBoolean)
  {
    if (this.c == -1)
      this.c = this.b;
    if (this.f == -1)
      this.f = this.b;
    if (paramBoolean)
      this.f += paramInt;
    this.b += paramInt;
    if (this.a.getLayoutParams() != null)
      ((ee)this.a.getLayoutParams()).e = true;
  }

  final void a(ei paramei, boolean paramBoolean)
  {
    this.o = paramei;
    this.p = paramBoolean;
  }

  final void a(Object paramObject)
  {
    if (paramObject == null)
      b(1024);
    while ((this.l & 0x400) != 0)
      return;
    if (this.i == null)
    {
      this.i = new ArrayList();
      this.j = Collections.unmodifiableList(this.i);
    }
    this.i.add(paramObject);
  }

  public final void a(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean)
    {
      i1 = this.n - 1;
      this.n = i1;
      if (this.n >= 0)
        break label61;
      this.n = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label61: 
    do
    {
      return;
      i1 = this.n + 1;
      break;
      if ((!paramBoolean) && (this.n == 1))
      {
        this.l |= 16;
        return;
      }
    }
    while ((!paramBoolean) || (this.n != 0));
    this.l &= -17;
  }

  final boolean a(int paramInt)
  {
    return (this.l & paramInt) != 0;
  }

  final void b(int paramInt)
  {
    this.l |= paramInt;
  }

  final boolean b()
  {
    return (this.l & 0x80) != 0;
  }

  public final int c()
  {
    if (this.f == -1)
      return this.b;
    return this.f;
  }

  public final int d()
  {
    if (this.k == null)
      return -1;
    return RecyclerView.b(this.k, this);
  }

  final boolean e()
  {
    return this.o != null;
  }

  final void f()
  {
    this.o.b(this);
  }

  final boolean g()
  {
    return (this.l & 0x20) != 0;
  }

  final void h()
  {
    this.l &= -33;
  }

  final void i()
  {
    this.l &= -257;
  }

  final boolean j()
  {
    return (this.l & 0x4) != 0;
  }

  final boolean k()
  {
    return (this.l & 0x2) != 0;
  }

  final boolean l()
  {
    return (this.l & 0x1) != 0;
  }

  final boolean m()
  {
    return (this.l & 0x8) != 0;
  }

  final boolean n()
  {
    return (this.l & 0x100) != 0;
  }

  final void o()
  {
    if (this.i != null)
      this.i.clear();
    this.l &= -1025;
  }

  final List<Object> p()
  {
    if ((this.l & 0x400) == 0)
    {
      if ((this.i == null) || (this.i.size() == 0))
        return m;
      return this.j;
    }
    return m;
  }

  final void q()
  {
    this.l = 0;
    this.b = -1;
    this.c = -1;
    this.d = -1L;
    this.f = -1;
    this.n = 0;
    this.g = null;
    this.h = null;
    o();
    this.q = 0;
  }

  public final boolean r()
  {
    return ((this.l & 0x10) == 0) && (!bl.c(this.a));
  }

  final boolean s()
  {
    return (this.l & 0x2) != 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.b + " id=" + this.d + ", oldPos=" + this.c + ", pLpos:" + this.f);
    String str;
    if (e())
    {
      StringBuilder localStringBuilder2 = localStringBuilder1.append(" scrap ");
      if (this.p)
      {
        str = "[changeScrap]";
        localStringBuilder2.append(str);
      }
    }
    else
    {
      if (j())
        localStringBuilder1.append(" invalid");
      if (!l())
        localStringBuilder1.append(" unbound");
      if (k())
        localStringBuilder1.append(" update");
      if (m())
        localStringBuilder1.append(" removed");
      if (b())
        localStringBuilder1.append(" ignored");
      if (n())
        localStringBuilder1.append(" tmpDetached");
      if (!r())
        localStringBuilder1.append(" not recyclable(" + this.n + ")");
      if (((this.l & 0x200) == 0) && (!j()))
        break label296;
    }
    label296: for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        localStringBuilder1.append(" undefined adapter position");
      if (this.a.getParent() == null)
        localStringBuilder1.append(" no parent");
      localStringBuilder1.append("}");
      return localStringBuilder1.toString();
      str = "[attachedScrap]";
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.er
 * JD-Core Version:    0.6.2
 */