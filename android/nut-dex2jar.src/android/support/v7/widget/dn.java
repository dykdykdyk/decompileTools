package android.support.v7.widget;

final class dn
  implements Runnable
{
  dn(RecyclerView paramRecyclerView)
  {
  }

  public final void run()
  {
    if ((!RecyclerView.a(this.a)) || (this.a.isLayoutRequested()))
      return;
    if (RecyclerView.b(this.a))
    {
      RecyclerView.c(this.a);
      return;
    }
    RecyclerView.d(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dn
 * JD-Core Version:    0.6.2
 */