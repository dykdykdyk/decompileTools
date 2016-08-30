package no.nordicsemi.android.dfu;

import android.content.Context;
import android.content.IntentFilter;
import android.support.v4.b.j;

public class DfuServiceListenerHelper
{
  private static DfuServiceListenerHelper.LogBroadcastReceiver mLogBroadcastReceiver;
  private static DfuServiceListenerHelper.ProgressBroadcastsReceiver mProgressBroadcastReceiver;

  private static String getIncrementedAddress(String paramString)
  {
    String str = paramString.substring(0, 15);
    paramString = String.format("%02X", new Object[] { Integer.valueOf(Integer.valueOf(paramString.substring(15), 16).intValue() + 1 & 0xFF) });
    return str + paramString;
  }

  public static void registerLogListener(Context paramContext, DfuLogListener paramDfuLogListener)
  {
    if (mLogBroadcastReceiver == null)
    {
      mLogBroadcastReceiver = new DfuServiceListenerHelper.LogBroadcastReceiver(null);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG");
      j.a(paramContext).a(mLogBroadcastReceiver, localIntentFilter);
    }
    DfuServiceListenerHelper.LogBroadcastReceiver.access$600(mLogBroadcastReceiver, paramDfuLogListener);
  }

  public static void registerLogListener(Context paramContext, DfuLogListener paramDfuLogListener, String paramString)
  {
    if (mLogBroadcastReceiver == null)
    {
      mLogBroadcastReceiver = new DfuServiceListenerHelper.LogBroadcastReceiver(null);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG");
      j.a(paramContext).a(mLogBroadcastReceiver, localIntentFilter);
    }
    DfuServiceListenerHelper.LogBroadcastReceiver.access$700(mLogBroadcastReceiver, paramString, paramDfuLogListener);
  }

  public static void registerProgressListener(Context paramContext, DfuProgressListener paramDfuProgressListener)
  {
    if (mProgressBroadcastReceiver == null)
    {
      mProgressBroadcastReceiver = new DfuServiceListenerHelper.ProgressBroadcastsReceiver(null);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS");
      localIntentFilter.addAction("no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR");
      j.a(paramContext).a(mProgressBroadcastReceiver, localIntentFilter);
    }
    DfuServiceListenerHelper.ProgressBroadcastsReceiver.access$200(mProgressBroadcastReceiver, paramDfuProgressListener);
  }

  public static void registerProgressListener(Context paramContext, DfuProgressListener paramDfuProgressListener, String paramString)
  {
    if (mProgressBroadcastReceiver == null)
    {
      mProgressBroadcastReceiver = new DfuServiceListenerHelper.ProgressBroadcastsReceiver(null);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS");
      localIntentFilter.addAction("no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR");
      j.a(paramContext).a(mProgressBroadcastReceiver, localIntentFilter);
    }
    DfuServiceListenerHelper.ProgressBroadcastsReceiver.access$300(mProgressBroadcastReceiver, paramString, paramDfuProgressListener);
  }

  public static void unregisterLogListener(Context paramContext, DfuLogListener paramDfuLogListener)
  {
    if ((mLogBroadcastReceiver != null) && (DfuServiceListenerHelper.LogBroadcastReceiver.access$800(mLogBroadcastReceiver, paramDfuLogListener)))
    {
      j.a(paramContext).a(mLogBroadcastReceiver);
      mLogBroadcastReceiver = null;
    }
  }

  public static void unregisterProgressListener(Context paramContext, DfuProgressListener paramDfuProgressListener)
  {
    if ((mProgressBroadcastReceiver != null) && (DfuServiceListenerHelper.ProgressBroadcastsReceiver.access$400(mProgressBroadcastReceiver, paramDfuProgressListener)))
    {
      j.a(paramContext).a(mProgressBroadcastReceiver);
      mProgressBroadcastReceiver = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuServiceListenerHelper
 * JD-Core Version:    0.6.2
 */