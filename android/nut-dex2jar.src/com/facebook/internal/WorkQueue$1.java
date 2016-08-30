package com.facebook.internal;

class WorkQueue$1
  implements Runnable
{
  WorkQueue$1(WorkQueue paramWorkQueue, WorkQueue.WorkNode paramWorkNode)
  {
  }

  public void run()
  {
    try
    {
      this.val$node.getCallback().run();
      return;
    }
    finally
    {
      WorkQueue.access$000(this.this$0, this.val$node);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.WorkQueue.1
 * JD-Core Version:    0.6.2
 */