.class Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DfuServiceListenerHelper.java"


# instance fields
.field private mGlobalProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lno/nordicsemi/android/dfu/DfuProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lno/nordicsemi/android/dfu/DfuProgressListener;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->setProgressListener(Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    return-void
.end method

.method static synthetic access$300(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuProgressListener;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->setProgressListener(Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    return-void
.end method

.method static synthetic access$400(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lno/nordicsemi/android/dfu/DfuProgressListener;)Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->removeProgressListener(Lno/nordicsemi/android/dfu/DfuProgressListener;)Z

    move-result v0

    return v0
.end method

.method private removeProgressListener(Lno/nordicsemi/android/dfu/DfuProgressListener;)Z
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    if-ne v0, p1, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    .line 130
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

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

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 132
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

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

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 138
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    if-nez v0, :cond_5

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

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

.method private setProgressListener(Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuProgressListener;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    # invokes: Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->getIncrementedAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private setProgressListener(Lno/nordicsemi/android/dfu/DfuProgressListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    .line 116
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 148
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    .line 152
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lno/nordicsemi/android/dfu/DfuProgressListener;

    .line 154
    if-nez v0, :cond_1

    if-nez v7, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 159
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 162
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 163
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    .line 164
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 165
    const-string v8, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 167
    packed-switch v2, :pswitch_data_1

    .line 223
    if-nez v2, :cond_4

    .line 224
    if-eqz v0, :cond_3

    .line 225
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuProcessStarted(Ljava/lang/String;)V

    .line 226
    :cond_3
    if-eqz v7, :cond_4

    .line 227
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuProcessStarted(Ljava/lang/String;)V

    .line 229
    :cond_4
    if-eqz v0, :cond_5

    .line 230
    invoke-interface/range {v0 .. v6}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onProgressChanged(Ljava/lang/String;IFFII)V

    .line 231
    :cond_5
    if-eqz v7, :cond_0

    move-object v0, v7

    .line 232
    invoke-interface/range {v0 .. v6}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onProgressChanged(Ljava/lang/String;IFFII)V

    goto :goto_0

    .line 159
    :sswitch_0
    const-string v4, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v6

    goto :goto_1

    :sswitch_1
    const-string v4, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 169
    :pswitch_1
    if-eqz v0, :cond_6

    .line 170
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceConnecting(Ljava/lang/String;)V

    .line 171
    :cond_6
    if-eqz v7, :cond_0

    .line 172
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceConnecting(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_2
    if-eqz v0, :cond_7

    .line 176
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceConnected(Ljava/lang/String;)V

    .line 177
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuProcessStarting(Ljava/lang/String;)V

    .line 179
    :cond_7
    if-eqz v7, :cond_0

    .line 180
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceConnected(Ljava/lang/String;)V

    .line 181
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuProcessStarting(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_3
    if-eqz v0, :cond_8

    .line 186
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onEnablingDfuMode(Ljava/lang/String;)V

    .line 187
    :cond_8
    if-eqz v7, :cond_0

    .line 188
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onEnablingDfuMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :pswitch_4
    if-eqz v0, :cond_9

    .line 192
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onFirmwareValidating(Ljava/lang/String;)V

    .line 193
    :cond_9
    if-eqz v7, :cond_0

    .line 194
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onFirmwareValidating(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :pswitch_5
    if-eqz v0, :cond_a

    .line 198
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnecting(Ljava/lang/String;)V

    .line 199
    :cond_a
    if-eqz v7, :cond_0

    .line 200
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnecting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :pswitch_6
    if-eqz v0, :cond_b

    .line 204
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 205
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuCompleted(Ljava/lang/String;)V

    .line 207
    :cond_b
    if-eqz v7, :cond_0

    .line 208
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 209
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :pswitch_7
    if-eqz v0, :cond_c

    .line 214
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 215
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuAborted(Ljava/lang/String;)V

    .line 217
    :cond_c
    if-eqz v7, :cond_0

    .line 218
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 219
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDfuAborted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_8
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 240
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 242
    if-eqz v0, :cond_d

    .line 243
    invoke-interface {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 244
    :cond_d
    if-eqz v7, :cond_e

    .line 245
    invoke-interface {v7, v1}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 246
    :cond_e
    packed-switch v3, :pswitch_data_2

    .line 254
    if-eqz v0, :cond_f

    .line 255
    invoke-static {v2}, Lno/nordicsemi/android/a/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    .line 256
    :cond_f
    if-eqz v7, :cond_0

    .line 257
    invoke-static {v2}, Lno/nordicsemi/android/a/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v2, v3, v0}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_9
    if-eqz v0, :cond_10

    .line 249
    invoke-static {v2}, Lno/nordicsemi/android/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    .line 250
    :cond_10
    if-eqz v7, :cond_0

    .line 251
    invoke-static {v2}, Lno/nordicsemi/android/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v2, v3, v0}, Lno/nordicsemi/android/dfu/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x78834248 -> :sswitch_0
        -0x4c6f8dc3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch -0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 246
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
