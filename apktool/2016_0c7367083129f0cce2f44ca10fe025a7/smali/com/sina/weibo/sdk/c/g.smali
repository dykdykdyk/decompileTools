.class public final Lcom/sina/weibo/sdk/c/g;
.super Ljava/lang/Object;
.source "WBAgent.java"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    if-nez p0, :cond_1

    .line 117
    const-string v0, "WBAgent"

    const-string v1, "unexpected null page or activity in onEvent"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p1, :cond_2

    .line 121
    const-string v0, "WBAgent"

    const-string v1, "unexpected null eventId in onEvent"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_1
    invoke-static {}, Lcom/sina/weibo/sdk/c/i;->a()Lcom/sina/weibo/sdk/c/i;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    .line 1171
    new-instance v2, Lcom/sina/weibo/sdk/c/a;

    invoke-direct {v2, v0, p1, p2}, Lcom/sina/weibo/sdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1172
    sget-object v3, Lcom/sina/weibo/sdk/c/e;->d:Lcom/sina/weibo/sdk/c/e;

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/c/a;->a(Lcom/sina/weibo/sdk/c/e;)V

    .line 1173
    sget-object v3, Lcom/sina/weibo/sdk/c/i;->a:Ljava/util/List;

    monitor-enter v3

    .line 1174
    :try_start_0
    sget-object v4, Lcom/sina/weibo/sdk/c/i;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    const-string v2, "WBAgent"

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event--- page:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,event name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1182
    const-string v3, " ,extend:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    sget-object v0, Lcom/sina/weibo/sdk/c/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/sina/weibo/sdk/c/i;->b:I

    if-lt v0, v2, :cond_0

    .line 1186
    sget-object v0, Lcom/sina/weibo/sdk/c/i;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/c/i;->a(Ljava/util/List;)V

    .line 1187
    sget-object v0, Lcom/sina/weibo/sdk/c/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method
