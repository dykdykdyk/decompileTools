.class final Lokhttp3/internal/d;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lokhttp3/internal/d;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/d;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 249
    iget-boolean v1, p0, Lokhttp3/internal/d;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 250
    return-object v0
.end method
