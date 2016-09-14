.class Lcom/umeng/message/UmengMessageBootReceiver$1;
.super Ljava/lang/Object;
.source "UmengMessageBootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/message/UmengMessageBootReceiver;


# direct methods
.method constructor <init>(Lcom/umeng/message/UmengMessageBootReceiver;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MsgLogStore;->getMsgLogIdTypes()Ljava/util/ArrayList;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/message/MsgLogStore$MsgLogIdType;

    .line 55
    iget-object v4, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v4}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v4

    iget-object v5, v2, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/umeng/message/MsgLogStore;->getMsgLog(Ljava/lang/String;)Lcom/umeng/message/MsgLogStore$MsgLog;

    move-result-object v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    iget-object v4, v2, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgType:Ljava/lang/String;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v4}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v4

    iget-object v2, v2, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    const/4 v5, 0x2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 58
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/umeng/message/MsgLogStore;->addLog(Ljava/lang/String;IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    invoke-static {}, Lcom/umeng/message/UmengMessageBootReceiver;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_1
    return-void

    .line 62
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MsgLogStore;->getMsgLogIdTypesForAgoo()Ljava/util/ArrayList;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/umeng/message/MsgLogStore$MsgLogIdTypeForAgoo;

    move-object v4, v0

    .line 64
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v2

    iget-object v3, v4, Lcom/umeng/message/MsgLogStore$MsgLogIdTypeForAgoo;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/message/MsgLogStore;->getMsgLogForAgoo(Ljava/lang/String;)Lcom/umeng/message/MsgLogStore$MsgLogForAgoo;

    move-result-object v2

    .line 65
    if-nez v2, :cond_3

    .line 66
    iget-object v2, v4, Lcom/umeng/message/MsgLogStore$MsgLogIdTypeForAgoo;->msgStatus:Ljava/lang/String;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v2

    iget-object v3, v4, Lcom/umeng/message/MsgLogStore$MsgLogIdTypeForAgoo;->msgId:Ljava/lang/String;

    iget-object v4, v4, Lcom/umeng/message/MsgLogStore$MsgLogIdTypeForAgoo;->taskId:Ljava/lang/String;

    const-string v5, "9"

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 67
    invoke-virtual/range {v2 .. v7}, Lcom/umeng/message/MsgLogStore;->addLogForAgoo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_2

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/umeng/message/local/UmengLocalNotificationService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/ad;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/local/d;->a(Landroid/content/Context;)Lcom/umeng/message/local/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/local/d;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
