.class final Lcom/loc/cc;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# instance fields
.field final synthetic a:Lcom/loc/bz;


# direct methods
.method private constructor <init>(Lcom/loc/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/bz;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/cc;-><init>(Lcom/loc/bz;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 0
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->a(Lcom/loc/bz;)Lcom/loc/cp;

    move-result-object v2

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/loc/cp;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    iget-object v1, v1, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->b(Lcom/loc/bz;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->b(Lcom/loc/bz;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/bz;->a(Lcom/loc/bz;J)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "APS"

    const-string v3, "onReceive part1"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :cond_3
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v1}, Lcom/loc/bz;->a(Lcom/loc/bz;)Lcom/loc/cp;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1000
    :try_start_8
    iget-object v1, v2, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    .line 0
    :cond_4
    :goto_2
    :try_start_9
    iget-object v1, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v1}, Lcom/loc/bz;->b(Lcom/loc/bz;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/bz;->a(Lcom/loc/bz;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->c(Lcom/loc/bz;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v2, "APS"

    const-string v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->c(Lcom/loc/bz;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->c(Lcom/loc/bz;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/bz;->o:Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/bz;->o:Z

    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->d(Lcom/loc/bz;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->e(Lcom/loc/bz;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->f(Lcom/loc/bz;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cc;->a:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->g(Lcom/loc/bz;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
