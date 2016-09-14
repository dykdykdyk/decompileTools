.class final Lcom/loc/bu;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/loc/bs;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/loc/bs;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bu;->a:Lcom/loc/bs;

    iput-object p2, p0, Lcom/loc/bu;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/bs;

    .line 1000
    iget-object v2, v0, Lcom/loc/bs;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/loc/bs;->b:Lcom/loc/eo;

    iget-object v0, v0, Lcom/loc/bs;->c:Ljava/lang/String;

    .line 2000
    invoke-static {v2, v3, v0}, Lcom/loc/bs;->a(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/eq;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ef;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/loc/eq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 0
    iget-object v2, p0, Lcom/loc/bu;->b:Landroid/content/Context;

    sget-object v3, Lcom/loc/et;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/et;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x32000

    invoke-static {v3, v4, v5}, Lcom/loc/ax;->a(Ljava/io/File;J)Lcom/loc/ax;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 3000
    invoke-virtual {v2, v3}, Lcom/loc/ax;->b(Ljava/lang/String;)Lcom/loc/ba;

    move-result-object v3

    .line 0
    invoke-virtual {v3}, Lcom/loc/ba;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Lcom/loc/ba;->b()V

    invoke-virtual {v2}, Lcom/loc/ax;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/loc/ax;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_4
    const-string v3, "OfflineLocManager"

    const-string v4, "applyOfflineLocEntity"

    invoke-static {v0, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/loc/ax;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Lcom/loc/ax;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_7
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_2
.end method
