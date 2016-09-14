.class final Lcom/loc/ew;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ew;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/loc/et;->d(I)Lcom/loc/l;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/loc/et;->d(I)Lcom/loc/l;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v4

    const/4 v0, 0x2

    :try_start_2
    invoke-static {v0}, Lcom/loc/et;->d(I)Lcom/loc/l;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v3

    :try_start_3
    iget-object v0, p0, Lcom/loc/ew;->a:Landroid/content/Context;

    invoke-virtual {v5, v0}, Lcom/loc/l;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ew;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/loc/l;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ew;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/loc/l;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ew;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bw;->a(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/loc/ew;->a:Landroid/content/Context;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1000
    :try_start_4
    invoke-static {v6}, Lcom/loc/bt;->a(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 0
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/loc/l;->a()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/loc/l;->a()V

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v3}, Lcom/loc/l;->a()V

    :cond_3
    :goto_2
    return-void

    .line 1000
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v8

    .line 2000
    :try_start_6
    const-string v0, "f.log"

    invoke-static {v6, v0}, Lcom/loc/et;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/eq;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3000
    :cond_6
    :goto_3
    :try_start_9
    sget-object v0, Lcom/loc/et;->f:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/loc/et;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1000
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/loc/eq;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/eq;->c([B)[B

    move-result-object v0

    new-instance v1, Lcom/loc/ex;

    const-string v2, "6"

    invoke-direct {v1, v0, v2}, Lcom/loc/ex;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/loc/bi;->a()Lcom/loc/bi;

    invoke-static {v1}, Lcom/loc/bi;->b(Lcom/loc/bq;)[B
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_a
    const-string v1, "OfflineLocManager"

    const-string v2, "updateOfflineLocData"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v0, v4

    move-object v1, v5

    .line 0
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/loc/l;->a()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/loc/l;->a()V

    :cond_8
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/loc/l;->a()V

    goto :goto_2

    .line 2000
    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_b
    const-string v7, "OfflineLocManager"

    const-string v8, "updateLogUpdateTime"

    invoke-static {v0, v7, v8}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v1, :cond_6

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 0
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/loc/l;->a()V

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/loc/l;->a()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/loc/l;->a()V

    :cond_b
    throw v0

    .line 2000
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v2, :cond_c

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_c
    :goto_9
    :try_start_f
    throw v0

    .line 4000
    :cond_d
    invoke-static {v6}, Lcom/loc/bt;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/eq;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ef;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 3000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"pinfo\":\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\",\"els\":["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v2

    goto/16 :goto_4

    .line 0
    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_a
    :try_start_10
    const-string v1, "Log"

    const-string v2, "processLog"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/loc/l;->a()V

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/loc/l;->a()V

    :cond_f
    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 2000
    :catch_5
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 0
    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object v0, v2

    move-object v1, v5

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move-object v0, v4

    move-object v1, v5

    goto/16 :goto_5

    .line 2000
    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_6
.end method
