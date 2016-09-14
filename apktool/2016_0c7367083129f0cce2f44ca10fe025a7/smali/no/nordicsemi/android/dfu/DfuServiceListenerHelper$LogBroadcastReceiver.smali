.class Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DfuServiceListenerHelper.java"


# instance fields
.field private mGlobalLogListener:Lno/nordicsemi/android/dfu/DfuLogListener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lno/nordicsemi/android/dfu/DfuLogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;Lno/nordicsemi/android/dfu/DfuLogListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->setLogListener(Lno/nordicsemi/android/dfu/DfuLogListener;)V

    return-void
.end method

.method static synthetic access$700(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuLogListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->setLogListener(Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuLogListener;)V

    return-void
.end method

.method static synthetic access$800(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;Lno/nordicsemi/android/dfu/DfuLogListener;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->removeLogListener(Lno/nordicsemi/android/dfu/DfuLogListener;)Z

    move-result v0

    return v0
.end method

.method private removeLogListener(Lno/nordicsemi/android/dfu/DfuLogListener;)Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lno/nordicsemi/android/dfu/DfuLogListener;

    if-ne v0, p1, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lno/nordicsemi/android/dfu/DfuLogListener;

    .line 73
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 75
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 81
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lno/nordicsemi/android/dfu/DfuLogListener;

    if-nez v0, :cond_5

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLogListener(Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuLogListener;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    # invokes: Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->getIncrementedAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private setLogListener(Lno/nordicsemi/android/dfu/DfuLogListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lno/nordicsemi/android/dfu/DfuLogListener;

    .line 59
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 91
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lno/nordicsemi/android/dfu/DfuLogListener;

    .line 95
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/dfu/DfuLogListener;

    .line 97
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 101
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    if-eqz v2, :cond_2

    .line 104
    invoke-interface {v2, v1, v3, v4}, Lno/nordicsemi/android/dfu/DfuLogListener;->onLogEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    :cond_2
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, v1, v3, v4}, Lno/nordicsemi/android/dfu/DfuLogListener;->onLogEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
