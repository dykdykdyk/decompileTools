package bolts;

final class i
  implements Runnable
{
  i(g paramg, h paramh, o paramo)
  {
  }

  public final void run()
  {
    try
    {
      h localh = (h)this.a.then(this.b);
      if (localh == null)
      {
        this.c.a(null);
        return;
      }
      localh.a(new j(this));
      return;
    }
    catch (Exception localException)
    {
      this.c.a(localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     bolts.i
 * JD-Core Version:    0.6.2
 */