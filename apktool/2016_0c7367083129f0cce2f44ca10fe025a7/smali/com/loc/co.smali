.class final Lcom/loc/co;
.super Landroid/os/HandlerThread;
.source "CgiManager.java"


# instance fields
.field final synthetic a:Lcom/loc/cm;


# direct methods
.method public constructor <init>(Lcom/loc/cm;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 6

    .prologue
    .line 0
    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    .line 1000
    iget-object v1, v0, Lcom/loc/cm;->l:Ljava/lang/Object;

    .line 0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    .line 2000
    iget-boolean v0, v0, Lcom/loc/cm;->k:Z

    .line 0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    .line 4000
    new-instance v0, Lcom/loc/cn;

    invoke-direct {v0, v2}, Lcom/loc/cn;-><init>(Lcom/loc/cm;)V

    iput-object v0, v2, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    const-string v3, "android.telephony.PhoneStateListener"

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/dn;->c()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    const-string v4, "LISTEN_SIGNAL_STRENGTH"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Lcom/loc/dh;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    :try_start_3
    iget-object v0, v2, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    iget-object v3, v2, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/loc/cm;->e()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 0
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v1

    :goto_3
    return-void

    .line 4000
    :cond_1
    const-string v4, "LISTEN_SIGNAL_STRENGTHS"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v3, v4}, Lcom/loc/dh;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_7
    iget-object v3, v2, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    iget-object v4, v2, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v4, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_8
    const-string v3, "CgiManager"

    const-string v4, "initPhoneStateListener1"

    invoke-static {v0, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3

    .line 4000
    :pswitch_0
    :try_start_a
    iget-object v0, v2, Lcom/loc/cm;->a:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-static {v0, v3}, Lcom/loc/dn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cm;->f:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_b
    const-string v2, "CgiManager"

    const-string v3, "initPhoneStateListener"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :pswitch_1
    :try_start_c
    iget-object v0, v2, Lcom/loc/cm;->a:Landroid/content/Context;

    const-string v3, "phone2"

    invoke-static {v0, v3}, Lcom/loc/dn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cm;->f:Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    iget-object v0, v2, Lcom/loc/cm;->a:Landroid/content/Context;

    const-string v3, "phone2"

    invoke-static {v0, v3}, Lcom/loc/dn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cm;->f:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_0

    :catch_4
    move-exception v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    .line 5000
    iget-object v0, v0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    .line 0
    iget-object v1, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    .line 6000
    iget-object v1, v1, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    .line 0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/loc/co;->a:Lcom/loc/cm;

    .line 7000
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    .line 0
    invoke-virtual {p0}, Lcom/loc/co;->quit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
