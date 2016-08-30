package com.nut.blehunter.rxApi.model;

import android.text.TextUtils;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.PositionRecord;
import com.nut.blehunter.provider.i;

public class UpdateNutRequestBody
{
  private String battery_level;
  private String deviceId;
  private String deviceName;
  private String devicePwLsb;
  private String devicePwMsb;
  private String disconnectRemind;
  private String disconnectRingtone;
  private String firmware;
  private String hardware;
  private String itemName;
  private String latitude;
  private String longitude;
  private String mode;
  private String nutStatus;
  private String reRemind;
  private String remindTime;
  private String tagId;
  private String twoWayAntiLost;

  public UpdateNutRequestBody(Nut paramNut)
  {
    i.b();
    i.b(paramNut);
    this.itemName = paramNut.c;
    this.tagId = paramNut.k;
    this.deviceId = paramNut.j;
    this.devicePwMsb = paramNut.d;
    this.devicePwLsb = paramNut.e;
    this.nutStatus = paramNut.m;
    if ((paramNut.r != null) && (paramNut.r.a()))
      this.longitude = String.valueOf(paramNut.r.d);
    for (this.latitude = String.valueOf(paramNut.r.e); ; this.latitude = String.valueOf(paramNut.h))
    {
      do
      {
        this.deviceName = String.valueOf(paramNut.p);
        if (!TextUtils.isEmpty(paramNut.v))
          this.firmware = paramNut.v;
        if (!TextUtils.isEmpty(paramNut.w))
          this.hardware = paramNut.w;
        this.mode = String.valueOf(paramNut.y);
        if (paramNut.y == 0)
        {
          this.twoWayAntiLost = String.valueOf(paramNut.n);
          this.disconnectRemind = String.valueOf(paramNut.s);
          this.reRemind = String.valueOf(paramNut.t);
          this.remindTime = String.valueOf(paramNut.u);
          this.disconnectRingtone = String.valueOf(paramNut.D);
        }
        this.battery_level = String.valueOf(paramNut.C);
        return;
      }
      while ((paramNut.g == 0.0D) || (paramNut.h == 0.0D));
      this.longitude = String.valueOf(paramNut.g);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.UpdateNutRequestBody
 * JD-Core Version:    0.6.2
 */