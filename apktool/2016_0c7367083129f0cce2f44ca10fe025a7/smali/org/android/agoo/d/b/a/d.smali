.class final Lorg/android/agoo/d/b/a/d;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/android/agoo/d/b/a/b;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/a/b;J)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    iput-wide p2, p0, Lorg/android/agoo/d/b/a/d;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 151
    :try_start_0
    iget-wide v0, p0, Lorg/android/agoo/d/b/a/d;->a:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    iget-object v0, v0, Lorg/android/agoo/d/b/a/b;->c:Lorg/android/agoo/d/b/h;

    sget-object v1, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    .line 1079
    iget-object v0, v0, Lorg/android/agoo/d/b/a/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/a/b;->a(Z)V

    .line 157
    iget-object v0, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    sget-object v1, Lorg/android/agoo/d/b/b;->r:Lorg/android/agoo/d/b/b;

    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectId:["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    .line 1093
    iget v4, v4, Lorg/android/agoo/d/b/a/b;->h:I

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] http Status code=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/d/b/b;->r:Lorg/android/agoo/d/b/b;

    .line 2065
    iget v4, v4, Lorg/android/agoo/d/b/b;->A:I

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/b/a/b;->a(Lorg/android/agoo/d/b/b;Ljava/lang/Throwable;)V

    .line 163
    iget-object v0, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    invoke-static {v0}, Lorg/android/agoo/d/b/a/b;->a(Lorg/android/agoo/d/b/a/b;)V

    .line 164
    iget-object v0, p0, Lorg/android/agoo/d/b/a/d;->b:Lorg/android/agoo/d/b/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/a/b;->j()V

    .line 168
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
