package android.support.v7.widget;

import android.util.SparseArray;

public final class eo
{
  int a = -1;
  int b = 1;
  int c = 0;
  int d = 0;
  int e = 0;
  boolean f = false;
  boolean g = false;
  boolean h = false;
  boolean i = false;
  boolean j = false;
  boolean k = false;
  private SparseArray<Object> l;

  public final int a()
  {
    if (this.g)
      return this.d - this.e;
    return this.c;
  }

  final void a(int paramInt)
  {
    if ((this.b & paramInt) == 0)
      throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(paramInt) + " but it is " + Integer.toBinaryString(this.b));
  }

  public final String toString()
  {
    return "State{mTargetPosition=" + this.a + ", mData=" + this.l + ", mItemCount=" + this.c + ", mPreviousLayoutItemCount=" + this.d + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.e + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.h + ", mRunPredictiveAnimations=" + this.i + '}';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.eo
 * JD-Core Version:    0.6.2
 */