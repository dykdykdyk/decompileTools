.class Lcom/umeng/message/UTrack$7;
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
    .line 420
    iput-object p1, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;

    move-result-object v0

    .line 425
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trackRegister-->request:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->c(Lcom/umeng/message/UTrack;)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Lcom/umeng/message/proguard/ad;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TestDevice sign ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "TD"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_0
    new-instance v1, Lcom/umeng/message/proguard/bf;

    iget-object v2, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/message/proguard/bf;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/bf;->a(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 435
    sget-object v1, Lcom/umeng/message/MsgConstant;->REGISTER_ENDPOINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bf;->a([BLjava/lang/String;)Lcom/umeng/message/protobuffer/PushResponse;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/umeng/message/protobuffer/PushResponse;->code:Lcom/umeng/message/protobuffer/PushResponse$responseCode;

    sget-object v1, Lcom/umeng/message/protobuffer/PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/PushResponse$responseCode;

    .line 440
    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/PushResponse$responseCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/UmengRegistrar;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/umeng/message/proguard/k$e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_1
    invoke-static {}, Lcom/umeng/message/UTrack;->e()Z

    .line 452
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$e;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    invoke-static {}, Lcom/umeng/message/UTrack;->e()Z

    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    invoke-static {}, Lcom/umeng/message/UTrack;->e()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/umeng/message/UTrack;->e()Z

    throw v0
.end method
