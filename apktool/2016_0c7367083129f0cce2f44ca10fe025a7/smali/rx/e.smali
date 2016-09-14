.class final Lrx/e;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/g;

.field final synthetic b:Lrx/n;

.field final synthetic c:Lrx/d;


# direct methods
.method constructor <init>(Lrx/d;Lrx/g;Lrx/n;)V
    .locals 0

    .prologue
    .line 2113
    iput-object p1, p0, Lrx/e;->c:Lrx/d;

    iput-object p2, p0, Lrx/e;->a:Lrx/g;

    iput-object p3, p0, Lrx/e;->b:Lrx/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    .prologue
    .line 2117
    :try_start_0
    iget-object v0, p0, Lrx/e;->c:Lrx/d;

    iget-object v0, v0, Lrx/d;->b:Lrx/a;

    iget-object v1, p0, Lrx/e;->a:Lrx/g;

    .line 3001
    invoke-static {v1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3003
    :try_start_1
    iget-object v0, v0, Lrx/a;->e:Lrx/f;

    invoke-static {v0}, Lrx/e/a;->b(Lrx/f;)Lrx/f;

    move-result-object v0

    .line 3005
    invoke-interface {v0, v1}, Lrx/f;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2119
    iget-object v0, p0, Lrx/e;->b:Lrx/n;

    invoke-virtual {v0}, Lrx/n;->unsubscribe()V

    .line 2120
    return-void

    .line 3007
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/e;->b:Lrx/n;

    invoke-virtual {v1}, Lrx/n;->unsubscribe()V

    throw v0

    .line 3008
    :catch_1
    move-exception v0

    .line 3009
    :try_start_3
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 3010
    invoke-static {v0}, Lrx/e/a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 3012
    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
