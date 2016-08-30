package com.google.android.gms.internal;

import android.util.SparseArray;
import com.google.android.gms.common.api.y;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.atomic.AtomicBoolean;

final class u extends Thread
{
  private final ReferenceQueue<y<?>> a;
  private final SparseArray<t> b;
  private final AtomicBoolean c = new AtomicBoolean();

  public u(ReferenceQueue<y<?>> paramReferenceQueue, SparseArray<t> paramSparseArray)
  {
    super("GoogleApiCleanup");
    this.a = paramReferenceQueue;
    this.b = paramSparseArray;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	com/google/android/gms/internal/u:c	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: iconst_1
    //   5: invokevirtual 41	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   8: bipush 10
    //   10: invokestatic 47	android/os/Process:setThreadPriority	(I)V
    //   13: aload_0
    //   14: getfield 26	com/google/android/gms/internal/u:c	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   17: invokevirtual 51	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   20: ifeq +65 -> 85
    //   23: aload_0
    //   24: getfield 28	com/google/android/gms/internal/u:a	Ljava/lang/ref/ReferenceQueue;
    //   27: invokevirtual 57	java/lang/ref/ReferenceQueue:remove	()Ljava/lang/ref/Reference;
    //   30: checkcast 59	com/google/android/gms/internal/t
    //   33: astore_1
    //   34: aload_0
    //   35: getfield 30	com/google/android/gms/internal/u:b	Landroid/util/SparseArray;
    //   38: aload_1
    //   39: invokestatic 62	com/google/android/gms/internal/t:a	(Lcom/google/android/gms/internal/t;)I
    //   42: invokevirtual 66	android/util/SparseArray:remove	(I)V
    //   45: aload_1
    //   46: getfield 69	com/google/android/gms/internal/t:b	Lcom/google/android/gms/internal/s;
    //   49: invokestatic 74	com/google/android/gms/internal/s:a	(Lcom/google/android/gms/internal/s;)Landroid/os/Handler;
    //   52: aload_1
    //   53: getfield 69	com/google/android/gms/internal/t:b	Lcom/google/android/gms/internal/s;
    //   56: invokestatic 74	com/google/android/gms/internal/s:a	(Lcom/google/android/gms/internal/s;)Landroid/os/Handler;
    //   59: iconst_2
    //   60: aload_1
    //   61: getfield 77	com/google/android/gms/internal/t:a	I
    //   64: iconst_2
    //   65: invokevirtual 83	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   68: invokevirtual 87	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   71: pop
    //   72: goto -59 -> 13
    //   75: astore_1
    //   76: aload_0
    //   77: getfield 26	com/google/android/gms/internal/u:c	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   80: iconst_0
    //   81: invokevirtual 41	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   84: return
    //   85: aload_0
    //   86: getfield 26	com/google/android/gms/internal/u:c	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   89: iconst_0
    //   90: invokevirtual 41	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   93: return
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 26	com/google/android/gms/internal/u:c	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   99: iconst_0
    //   100: invokevirtual 41	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   103: aload_1
    //   104: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   13	72	75	java/lang/InterruptedException
    //   13	72	94	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.u
 * JD-Core Version:    0.6.2
 */