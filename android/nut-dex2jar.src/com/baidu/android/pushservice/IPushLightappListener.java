package com.baidu.android.pushservice;

public abstract interface IPushLightappListener
{
  public abstract void initialComplete(PushLightapp paramPushLightapp);

  public abstract void onSubscribeByApiKey(int paramInt, String paramString);

  public abstract void onSubscribeResult(int paramInt, String paramString);

  public abstract void onUnbindLightResult(int paramInt, String paramString);

  public abstract void onUnsubscribeResult(int paramInt, String paramString);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.IPushLightappListener
 * JD-Core Version:    0.6.2
 */