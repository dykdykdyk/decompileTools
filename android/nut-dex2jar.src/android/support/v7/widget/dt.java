package android.support.v7.widget;

import android.view.ViewGroup;

public abstract class dt<VH extends er>
{
  public final du a = new du();
  boolean b = false;

  public long a(int paramInt)
  {
    return -1L;
  }

  public abstract VH a(ViewGroup paramViewGroup);

  public final void a()
  {
    if (this.a.a())
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    this.b = true;
  }

  public abstract void a(VH paramVH, int paramInt);

  public abstract int b();

  public final void b(int paramInt)
  {
    this.a.a(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dt
 * JD-Core Version:    0.6.2
 */