package android.support.v7.widget;

final class dq
  implements gh
{
  dq(RecyclerView paramRecyclerView)
  {
  }

  public final void a(er paramer)
  {
    this.a.f.a(paramer.a, this.a.b);
  }

  public final void a(er paramer, dz paramdz1, dz paramdz2)
  {
    this.a.b.b(paramer);
    RecyclerView.a(this.a, paramer, paramdz1, paramdz2);
  }

  public final void b(er paramer, dz paramdz1, dz paramdz2)
  {
    RecyclerView.b(this.a, paramer, paramdz1, paramdz2);
  }

  public final void c(er paramer, dz paramdz1, dz paramdz2)
  {
    paramer.a(false);
    if (RecyclerView.f(this.a))
      if (this.a.n.a(paramer, paramer, paramdz1, paramdz2))
        RecyclerView.g(this.a);
    while (!this.a.n.c(paramer, paramdz1, paramdz2))
      return;
    RecyclerView.g(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dq
 * JD-Core Version:    0.6.2
 */