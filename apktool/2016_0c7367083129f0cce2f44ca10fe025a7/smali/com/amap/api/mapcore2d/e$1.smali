.class Lcom/amap/api/mapcore2d/e$1;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/e;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/e;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 108
    const-string v3, "run"

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    const-string v2, "TaskRunDownLoad"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 115
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, v0

    move-object v1, v0

    .line 120
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    const-string v1, "AsyncServer"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_3
    return-void

    .line 124
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_5

    .line 126
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    const-string v4, "AsyncServer"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/e;->g()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/mapcore2d/bl;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 144
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    if-eqz v1, :cond_a

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_2

    .line 160
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/e;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_4
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 165
    :goto_1
    if-eqz v0, :cond_8

    :try_start_5
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v2, :cond_8

    .line 166
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/amap/api/mapcore2d/bl;->a(Ljava/util/List;Z)V

    .line 169
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-nez v2, :cond_9

    .line 171
    const-wide/16 v4, 0x32

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v2, v0

    .line 177
    goto/16 :goto_0

    .line 162
    :catch_3
    move-exception v0

    :try_start_7
    const-string v4, "AsyncServer"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 173
    :catch_4
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move-object v2, v0

    .line 177
    goto/16 :goto_0

    .line 175
    :catch_5
    move-exception v2

    const-string v4, "AsyncServer"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v2, v0

    .line 177
    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto :goto_2
.end method
