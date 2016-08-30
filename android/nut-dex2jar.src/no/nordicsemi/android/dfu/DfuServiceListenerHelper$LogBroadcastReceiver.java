package no.nordicsemi.android.dfu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class DfuServiceListenerHelper$LogBroadcastReceiver extends BroadcastReceiver
{
  private DfuLogListener mGlobalLogListener;
  private Map<String, DfuLogListener> mListeners = new HashMap();

  private boolean removeLogListener(DfuLogListener paramDfuLogListener)
  {
    if (this.mGlobalLogListener == paramDfuLogListener)
      this.mGlobalLogListener = null;
    Iterator localIterator = this.mListeners.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localEntry.getValue() == paramDfuLogListener)
        this.mListeners.remove(localEntry.getKey());
    }
    localIterator = this.mListeners.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localEntry.getValue() == paramDfuLogListener)
        this.mListeners.remove(localEntry.getKey());
    }
    return (this.mGlobalLogListener == null) && (this.mListeners.isEmpty());
  }

  private void setLogListener(String paramString, DfuLogListener paramDfuLogListener)
  {
    this.mListeners.put(paramString, paramDfuLogListener);
    this.mListeners.put(DfuServiceListenerHelper.access$000(paramString), paramDfuLogListener);
  }

  private void setLogListener(DfuLogListener paramDfuLogListener)
  {
    this.mGlobalLogListener = paramDfuLogListener;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS");
    DfuLogListener localDfuLogListener1 = this.mGlobalLogListener;
    DfuLogListener localDfuLogListener2 = (DfuLogListener)this.mListeners.get(paramContext);
    if ((localDfuLogListener1 == null) && (localDfuLogListener2 == null));
    int i;
    do
    {
      return;
      i = paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL", 0);
      paramIntent = paramIntent.getStringExtra("no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO");
      if (localDfuLogListener1 != null)
        localDfuLogListener1.onLogEvent(paramContext, i, paramIntent);
    }
    while (localDfuLogListener2 == null);
    localDfuLogListener2.onLogEvent(paramContext, i, paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuServiceListenerHelper.LogBroadcastReceiver
 * JD-Core Version:    0.6.2
 */