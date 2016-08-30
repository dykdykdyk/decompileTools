package bolts;

public final class o
{
  private o(h paramh)
  {
  }

  private boolean b()
  {
    synchronized (h.a(this.a))
    {
      if (h.b(this.a))
        return false;
      h.c(this.a);
      h.d(this.a);
      h.a(this.a).notifyAll();
      h.e(this.a);
      return true;
    }
  }

  private boolean b(Exception paramException)
  {
    synchronized (h.a(this.a))
    {
      if (h.b(this.a))
        return false;
      h.c(this.a);
      h.a(this.a, paramException);
      h.a(this.a).notifyAll();
      h.e(this.a);
      return true;
    }
  }

  private boolean b(TResult paramTResult)
  {
    synchronized (h.a(this.a))
    {
      if (h.b(this.a))
        return false;
      h.c(this.a);
      h.a(this.a, paramTResult);
      h.a(this.a).notifyAll();
      h.e(this.a);
      return true;
    }
  }

  public final void a()
  {
    if (!b())
      throw new IllegalStateException("Cannot cancel a completed task.");
  }

  public final void a(Exception paramException)
  {
    if (!b(paramException))
      throw new IllegalStateException("Cannot set the error on a completed task.");
  }

  public final void a(TResult paramTResult)
  {
    if (!b(paramTResult))
      throw new IllegalStateException("Cannot set the result of a completed task.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     bolts.o
 * JD-Core Version:    0.6.2
 */