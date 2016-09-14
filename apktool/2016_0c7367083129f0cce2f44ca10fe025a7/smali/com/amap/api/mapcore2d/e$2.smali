.class Lcom/amap/api/mapcore2d/e$2;
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
    .line 187
    iput-object p1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 189
    const-string v3, "run"

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    const-string v2, "TaskRunCach"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 195
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, v0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    const-string v1, "AsyncServer"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2
    return-void

    .line 204
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_8

    .line 205
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/e;->g()I

    move-result v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/mapcore2d/bl;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 208
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/e;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_2
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 219
    :goto_2
    if-eqz v0, :cond_5

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->c:Landroid/content/Context;

    .line 220
    invoke-static {v2}, Lcom/amap/api/mapcore2d/ck;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/amap/api/mapcore2d/bl;->a(Ljava/util/List;Z)V

    .line 223
    :cond_5
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-nez v2, :cond_6

    .line 225
    const-wide/16 v4, 0x32

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v2, v0

    move-object v0, v1

    .line 230
    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    :try_start_5
    const-string v4, "AsyncServer"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    .line 227
    :catch_2
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move-object v2, v0

    move-object v0, v1

    .line 230
    goto/16 :goto_0

    .line 229
    :catch_3
    move-exception v2

    const-string v4, "AsyncServer"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, v0

    move-object v0, v1

    .line 230
    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method
