.class final Lcom/umeng/message/proguard/bu;
.super Landroid/os/Handler;
.source "AbsMessage.java"


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/br;


# direct methods
.method public constructor <init>(Lcom/umeng/message/proguard/br;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/umeng/message/proguard/bu;->a:Lcom/umeng/message/proguard/br;

    .line 190
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/umeng/message/proguard/br;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 197
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/umeng/message/proguard/bu;->a:Lcom/umeng/message/proguard/br;

    iget-object v2, p0, Lcom/umeng/message/proguard/bu;->a:Lcom/umeng/message/proguard/br;

    iget-object v2, v2, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/message/proguard/br;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-static {}, Lcom/umeng/message/proguard/br;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 203
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/umeng/message/proguard/br;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/umeng/message/proguard/br;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
