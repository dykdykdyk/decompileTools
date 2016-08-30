package com.baidu.android.pushservice;

class PushLightapp$1 extends Thread
{
  PushLightapp$1(PushLightapp paramPushLightapp)
  {
  }

  public void run()
  {
    try
    {
      sleep(PushLightapp.access$000());
      if ((PushLightapp.access$100()) && (!PushLightapp.access$200(this.a)))
        PushLightapp.access$300(this.a);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushLightapp.1
 * JD-Core Version:    0.6.2
 */