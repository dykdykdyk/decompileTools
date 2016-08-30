package com.facebook.internal;

abstract interface WorkQueue$WorkItem
{
  public abstract boolean cancel();

  public abstract boolean isRunning();

  public abstract void moveToFront();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.WorkQueue.WorkItem
 * JD-Core Version:    0.6.2
 */