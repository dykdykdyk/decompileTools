package android.support.v7.widget;

final class ea
  implements dy
{
  private ea(RecyclerView paramRecyclerView)
  {
  }

  public final void a(er paramer)
  {
    paramer.a(true);
    if ((paramer.g != null) && (paramer.h == null))
      paramer.g = null;
    paramer.h = null;
    if ((!er.g(paramer)) && (!RecyclerView.c(this.a, paramer.a)) && (paramer.n()))
      this.a.removeDetachedView(paramer.a, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ea
 * JD-Core Version:    0.6.2
 */