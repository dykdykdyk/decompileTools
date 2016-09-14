.class Lcom/umeng/message/UTrack$8;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/UmengRegistrar;->isRegistered(Landroid/content/Context;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Lcom/umeng/message/UTrack;->f()Z

    .line 506
    :goto_0
    return-void

    .line 484
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;

    move-result-object v0

    .line 486
    new-instance v1, Lcom/umeng/message/proguard/bf;

    iget-object v2, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/message/proguard/bf;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/bf;->a(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 488
    sget-object v1, Lcom/umeng/message/MsgConstant;->LOCAL_NOTIFY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bf;->a([BLjava/lang/String;)Lcom/umeng/message/protobuffer/PushResponse;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/umeng/message/protobuffer/PushResponse;->code:Lcom/umeng/message/protobuffer/PushResponse$responseCode;

    sget-object v1, Lcom/umeng/message/protobuffer/PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/PushResponse$responseCode;

    .line 492
    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/PushResponse$responseCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackLocalNotification success"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->setLastLocalNotificationUsingAt()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :cond_1
    invoke-static {}, Lcom/umeng/message/UTrack;->f()Z

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 498
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    invoke-static {}, Lcom/umeng/message/UTrack;->f()Z

    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    invoke-static {}, Lcom/umeng/message/UTrack;->f()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/umeng/message/UTrack;->f()Z

    throw v0
.end method
