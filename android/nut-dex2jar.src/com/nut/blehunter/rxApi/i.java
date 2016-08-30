package com.nut.blehunter.rxApi;

import com.nut.blehunter.rxApi.model.ApiError;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public abstract class i
  implements Callback<String>
{
  public abstract void a(ApiError paramApiError);

  public abstract void a(String paramString);

  public boolean a()
  {
    return true;
  }

  public void onFailure(Call<String> paramCall, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    a(e.a(paramThrowable));
  }

  public void onResponse(Call<String> paramCall, Response<String> paramResponse)
  {
    paramCall = a.a((String)paramResponse.body(), a());
    if (paramCall == null)
    {
      a((String)paramResponse.body());
      return;
    }
    a(paramCall);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.i
 * JD-Core Version:    0.6.2
 */