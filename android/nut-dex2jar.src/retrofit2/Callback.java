package retrofit2;

public abstract interface Callback<T>
{
  public abstract void onFailure(Call<T> paramCall, Throwable paramThrowable);

  public abstract void onResponse(Call<T> paramCall, Response<T> paramResponse);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Callback
 * JD-Core Version:    0.6.2
 */