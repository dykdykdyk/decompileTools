package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class StaggeredGridLayoutManager$LazySpanLookup
{
  int[] a;
  List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> b;

  final int a(int paramInt)
  {
    if (this.b != null)
    {
      int i = this.b.size() - 1;
      while (i >= 0)
      {
        if (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i)).a >= paramInt)
          this.b.remove(i);
        i -= 1;
      }
    }
    return b(paramInt);
  }

  public final StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject;
    if (this.b == null)
    {
      localObject = null;
      return localObject;
    }
    int j = this.b.size();
    int i = 0;
    while (true)
    {
      if (i >= j)
        break label112;
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i);
      if (localFullSpanItem.a >= paramInt2)
        return null;
      if (localFullSpanItem.a >= paramInt1)
      {
        localObject = localFullSpanItem;
        if (paramInt3 == 0)
          break;
        localObject = localFullSpanItem;
        if (localFullSpanItem.b == paramInt3)
          break;
        localObject = localFullSpanItem;
        if (localFullSpanItem.d)
          break;
      }
      i += 1;
    }
    label112: return null;
  }

  final void a()
  {
    if (this.a != null)
      Arrays.fill(this.a, -1);
    this.b = null;
  }

  final void a(int paramInt1, int paramInt2)
  {
    if ((this.a == null) || (paramInt1 >= this.a.length));
    do
    {
      return;
      c(paramInt1 + paramInt2);
      System.arraycopy(this.a, paramInt1 + paramInt2, this.a, paramInt1, this.a.length - paramInt1 - paramInt2);
      Arrays.fill(this.a, this.a.length - paramInt2, this.a.length, -1);
    }
    while (this.b == null);
    int i = this.b.size() - 1;
    label87: StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    if (i >= 0)
    {
      localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i);
      if (localFullSpanItem.a >= paramInt1)
      {
        if (localFullSpanItem.a >= paramInt1 + paramInt2)
          break label144;
        this.b.remove(i);
      }
    }
    while (true)
    {
      i -= 1;
      break label87;
      break;
      label144: localFullSpanItem.a -= paramInt2;
    }
  }

  public final void a(StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem paramFullSpanItem)
  {
    if (this.b == null)
      this.b = new ArrayList();
    int j = this.b.size();
    int i = 0;
    while (i < j)
    {
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i);
      if (localFullSpanItem.a == paramFullSpanItem.a)
        this.b.remove(i);
      if (localFullSpanItem.a >= paramFullSpanItem.a)
      {
        this.b.add(i, paramFullSpanItem);
        return;
      }
      i += 1;
    }
    this.b.add(paramFullSpanItem);
  }

  final int b(int paramInt)
  {
    if (this.a == null)
      return -1;
    if (paramInt >= this.a.length)
      return -1;
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    int i;
    if (this.b != null)
    {
      localFullSpanItem = d(paramInt);
      if (localFullSpanItem != null)
        this.b.remove(localFullSpanItem);
      int j = this.b.size();
      i = 0;
      if (i >= j)
        break label178;
      if (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i)).a < paramInt);
    }
    while (true)
    {
      if (i != -1)
      {
        localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i);
        this.b.remove(i);
      }
      for (i = localFullSpanItem.a; ; i = -1)
      {
        if (i != -1)
          break label162;
        Arrays.fill(this.a, paramInt, this.a.length, -1);
        return this.a.length;
        i += 1;
        break;
      }
      label162: Arrays.fill(this.a, paramInt, i + 1, -1);
      return i + 1;
      label178: i = -1;
    }
  }

  final void b(int paramInt1, int paramInt2)
  {
    if ((this.a == null) || (paramInt1 >= this.a.length));
    while (true)
    {
      return;
      c(paramInt1 + paramInt2);
      System.arraycopy(this.a, paramInt1, this.a, paramInt1 + paramInt2, this.a.length - paramInt1 - paramInt2);
      Arrays.fill(this.a, paramInt1, paramInt1 + paramInt2, -1);
      if (this.b != null)
      {
        int i = this.b.size() - 1;
        while (i >= 0)
        {
          StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i);
          if (localFullSpanItem.a >= paramInt1)
            localFullSpanItem.a += paramInt2;
          i -= 1;
        }
      }
    }
  }

  final void c(int paramInt)
  {
    if (this.a == null)
    {
      this.a = new int[Math.max(paramInt, 10) + 1];
      Arrays.fill(this.a, -1);
    }
    while (paramInt < this.a.length)
      return;
    int[] arrayOfInt = this.a;
    int i = this.a.length;
    while (i <= paramInt)
      i *= 2;
    this.a = new int[i];
    System.arraycopy(arrayOfInt, 0, this.a, 0, arrayOfInt.length);
    Arrays.fill(this.a, arrayOfInt.length, this.a.length, -1);
  }

  public final StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem d(int paramInt)
  {
    Object localObject;
    if (this.b == null)
    {
      localObject = null;
      return localObject;
    }
    int i = this.b.size() - 1;
    while (true)
    {
      if (i < 0)
        break label61;
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.b.get(i);
      localObject = localFullSpanItem;
      if (localFullSpanItem.a == paramInt)
        break;
      i -= 1;
    }
    label61: return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup
 * JD-Core Version:    0.6.2
 */