package com.nut.blehunter.service;

import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.rxApi.model.ApiError;

final class l extends com.nut.blehunter.rxApi.i
{
  l(NutTrackerService paramNutTrackerService, Nut paramNut)
  {
  }

  public final void a(ApiError paramApiError)
  {
    if (paramApiError.errorCode == 304)
      com.nut.blehunter.provider.i.b().i(this.a.j);
  }

  public final void a(String paramString)
  {
    com.nut.blehunter.provider.i.b().i(this.a.j);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.l
 * JD-Core Version:    0.6.2
 */