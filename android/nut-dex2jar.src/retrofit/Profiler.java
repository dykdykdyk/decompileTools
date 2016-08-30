package retrofit;

public abstract interface Profiler<T>
{
  public abstract void afterCall(Profiler.RequestInformation paramRequestInformation, long paramLong, int paramInt, T paramT);

  public abstract T beforeCall();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Profiler
 * JD-Core Version:    0.6.2
 */