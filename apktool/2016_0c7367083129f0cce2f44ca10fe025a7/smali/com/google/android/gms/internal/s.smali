.class public abstract Lcom/google/android/gms/internal/s;
.super Lcom/google/android/gms/common/api/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Lcom/google/android/gms/common/api/s",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/google/android/gms/internal/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/u",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/CountDownLatch;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/common/api/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/v",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/common/api/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/v;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/gms/common/internal/bd;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/t;

    invoke-direct {v0}, Lcom/google/android/gms/internal/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/s;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/s;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/s;->n:Z

    new-instance v0, Lcom/google/android/gms/internal/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/u;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/internal/u;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/s;)Lcom/google/android/gms/common/api/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->h:Lcom/google/android/gms/common/api/u;

    return-object v0
.end method

.method private a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/s;->k:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Lcom/google/android/gms/common/api/u;)V
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/common/api/t;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/gms/common/api/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/s;->h:Lcom/google/android/gms/common/api/u;

    iput-object v1, p0, Lcom/google/android/gms/internal/s;->m:Lcom/google/android/gms/common/internal/bd;

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->h:Lcom/google/android/gms/common/api/u;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/u;->a()Lcom/google/android/gms/common/api/Status;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/s;->k:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/common/api/v;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/common/api/v;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->h:Lcom/google/android/gms/common/api/u;

    instance-of v0, v0, Lcom/google/android/gms/common/api/t;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/v;-><init>(Lcom/google/android/gms/internal/s;B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->i:Lcom/google/android/gms/internal/v;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/internal/u;

    .line 1000
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u;->removeMessages(I)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/internal/u;

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/common/api/v;

    invoke-direct {p0}, Lcom/google/android/gms/internal/s;->e()Lcom/google/android/gms/common/api/u;

    move-result-object v2

    .line 2000
    const/4 v3, 0x1

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private e()Lcom/google/android/gms/common/api/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/s;->j:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/d;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/s;->b()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/d;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->h:Lcom/google/android/gms/common/api/u;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/s;->h:Lcom/google/android/gms/common/api/u;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/s;->g:Lcom/google/android/gms/common/api/v;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/s;->j:Z

    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/common/api/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/s;->l:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/s;->k:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/s;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/s;->b()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/d;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/s;->j:Z

    if-nez v2, :cond_3

    :goto_1
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/s;->c(Lcom/google/android/gms/common/api/u;)V

    monitor-exit v3

    :goto_2
    return-void

    :cond_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/s;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/s;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/s;->k:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/s;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/s;->c(Lcom/google/android/gms/common/api/u;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/s;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/s;->a(Lcom/google/android/gms/common/api/u;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/s;->l:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/s;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/s;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/s;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/s;->a()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
