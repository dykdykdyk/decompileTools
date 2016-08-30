package com.facebook;

import java.util.Iterator;
import java.util.List;

class Session$4
  implements Runnable
{
  Session$4(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
  }

  public void run()
  {
    synchronized (Session.access$1200(this.this$0))
    {
      Iterator localIterator = Session.access$1200(this.this$0).iterator();
      if (localIterator.hasNext())
      {
        Session.4.1 local1 = new Session.4.1(this, (Session.StatusCallback)localIterator.next());
        Session.access$1400(Session.access$1300(this.this$0), local1);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Session.4
 * JD-Core Version:    0.6.2
 */