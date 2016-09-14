.class final Lorg/android/agoo/d/b/a/e;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/d/b/a/b;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/a/b;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/a/b;->i()V

    .line 210
    iget-object v0, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/a/b;->j()V

    .line 211
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    .line 1093
    iget v2, v2, Lorg/android/agoo/d/b/a/b;->h:I

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection disconnecting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/a/b;->g()V

    .line 214
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http chunked connect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    .line 2093
    iget v2, v2, Lorg/android/agoo/d/b/a/b;->h:I

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lorg/android/agoo/d/b/a/e;->a:Lorg/android/agoo/d/b/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/a/b;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
