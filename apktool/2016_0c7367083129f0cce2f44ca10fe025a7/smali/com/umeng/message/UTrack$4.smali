.class Lcom/umeng/message/UTrack$4;
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
    .line 284
    iput-object p1, p0, Lcom/umeng/message/UTrack$4;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UTrack$4;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/umeng/message/MsgLogStore;->getMsgLogs()Ljava/util/ArrayList;

    move-result-object v2

    .line 289
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 290
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/MsgLogStore$MsgLog;

    .line 291
    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->a:Lcom/umeng/message/UTrack;

    iget-object v4, v0, Lcom/umeng/message/MsgLogStore$MsgLog;->msgId:Ljava/lang/String;

    iget v5, v0, Lcom/umeng/message/MsgLogStore$MsgLog;->actionType:I

    iget-wide v6, v0, Lcom/umeng/message/MsgLogStore$MsgLog;->time:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendCachedMsgLog finished, clear cacheLogSending flag"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/umeng/message/UTrack;->b()Z

    .line 300
    :goto_1
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendCachedMsgLog finished, clear cacheLogSending flag"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/umeng/message/UTrack;->b()Z

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendCachedMsgLog finished, clear cacheLogSending flag"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/umeng/message/UTrack;->b()Z

    throw v0
.end method
