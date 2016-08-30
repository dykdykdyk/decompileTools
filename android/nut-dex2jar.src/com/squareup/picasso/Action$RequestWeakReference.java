package com.squareup.picasso;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class Action$RequestWeakReference<M> extends WeakReference<M>
{
  final Action action;

  public Action$RequestWeakReference(Action paramAction, M paramM, ReferenceQueue<? super M> paramReferenceQueue)
  {
    super(paramM, paramReferenceQueue);
    this.action = paramAction;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Action.RequestWeakReference
 * JD-Core Version:    0.6.2
 */