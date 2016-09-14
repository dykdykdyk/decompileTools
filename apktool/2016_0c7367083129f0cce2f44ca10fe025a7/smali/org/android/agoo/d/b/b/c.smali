.class final Lorg/android/agoo/d/b/b/c;
.super Ljava/lang/Object;
.source "SpdyChannel.java"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# instance fields
.field final synthetic a:Lorg/android/agoo/d/b/b/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/b/a;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 4

    .prologue
    .line 477
    :try_start_0
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spdyPingRecvCallback["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v0}, Lorg/android/agoo/d/b/b/a;->c(Lorg/android/agoo/d/b/b/a;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v0, p2, p3}, Lorg/android/agoo/d/b/b/a;->b(Lorg/android/agoo/d/b/b/a;J)J

    .line 482
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v0}, Lorg/android/agoo/d/b/b/a;->e(Lorg/android/agoo/d/b/b/a;)Lorg/android/agoo/d/b/p;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v1}, Lorg/android/agoo/d/b/b/a;->d(Lorg/android/agoo/d/b/b/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    sget-object v1, Lorg/android/agoo/d/b/b;->e:Lorg/android/agoo/d/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b/a;Lorg/android/agoo/d/b/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v0}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b/a;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    sget-object v1, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    iput-object v1, v0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 496
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v0}, Lorg/android/agoo/d/b/b/a;->e(Lorg/android/agoo/d/b/b/a;)Lorg/android/agoo/d/b/p;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v1}, Lorg/android/agoo/d/b/b/a;->d(Lorg/android/agoo/d/b/b/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v2}, Lorg/android/agoo/d/b/b/a;->f(Lorg/android/agoo/d/b/b/a;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/android/agoo/d/b/p;->b(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    sget-object v1, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v1, v0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 503
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b/a;J)J

    .line 450
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect connect_time["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public final spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 457
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v1}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    const-string v1, "SpdyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spdySessionFailedError["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    sget-object v2, Lorg/android/agoo/d/b/h;->c:Lorg/android/agoo/d/b/h;

    iput-object v2, v1, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 462
    iget-object v1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {v1}, Lorg/android/agoo/d/b/b/a;->b(Lorg/android/agoo/d/b/b/a;)V

    .line 464
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    iget-object v1, v1, Lorg/android/agoo/d/b/b/a;->b:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/android/agoo/d/b/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    invoke-static {p2}, Lorg/android/agoo/d/b/b;->a(I)Lorg/android/agoo/d/b/b;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/b/a;->a(Lorg/android/agoo/d/b/b/a;Lorg/android/agoo/d/b/b;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/d/b/b/c;->a:Lorg/android/agoo/d/b/b/a;

    sget-object v1, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    iput-object v1, v0, Lorg/android/agoo/d/b/b/a;->a:Lorg/android/agoo/d/b/h;

    .line 471
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
