.class public final Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/google/android/gms/internal/x;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/common/b;

.field private h:I

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/aa",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/n",
            "<*>;",
            "Lcom/google/android/gms/internal/aa",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/y",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/y;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/android/gms/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/x;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/x;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/x;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->l:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/internal/x;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/x;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/x;->e:Lcom/google/android/gms/internal/x;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/aa;->a(IZ)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onRelease received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/x;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/x;->b:J

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/x;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/w;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/x;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/x;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->n:Landroid/util/SparseArray;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    .line 1000
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->f()V

    goto :goto_0

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/internal/x;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/x;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/x;)Lcom/google/android/gms/common/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/x;->c:J

    return-wide v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/x;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/x;->h:I

    return v0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/common/b;

    .line 28000
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->c:I

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->l:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->l:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/o;

    .line 4000
    const/4 v1, 0x0

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3000
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/aa;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/o;->c()V

    :cond_0
    :goto_2
    move v0, v3

    .line 0
    goto :goto_0

    .line 5000
    :cond_1
    iget-object v5, v2, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/j;->b()Z

    move-result v5

    .line 3000
    if-eqz v5, :cond_2

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/n;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    .line 6000
    :cond_2
    iget-object v5, v2, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 3000
    if-eqz v5, :cond_3

    .line 7000
    iget-object v2, v2, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 3000
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/n;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    .line 8000
    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/aa;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 0
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/y;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 10000
    iget-object v1, v0, Lcom/google/android/gms/common/api/y;->d:Lcom/google/android/gms/internal/n;

    .line 9000
    iget-object v4, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    new-instance v5, Lcom/google/android/gms/internal/aa;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/internal/aa;-><init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/common/api/y;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aa;

    .line 11000
    iget-object v4, v1, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    new-instance v5, Lcom/google/android/gms/internal/ag;

    iget-object v6, v1, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    .line 12000
    iget-object v6, v6, Lcom/google/android/gms/internal/n;->a:Lcom/google/android/gms/common/api/a;

    .line 13000
    iget-object v7, v6, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/k;

    if-eqz v7, :cond_6

    iget-object v6, v6, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/k;

    .line 11000
    iget-object v7, v1, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/j;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9000
    iget-object v4, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14000
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->f()V

    .line 9000
    iget-object v1, p0, Lcom/google/android/gms/internal/x;->n:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/gms/internal/y;

    iget-object v5, p0, Lcom/google/android/gms/internal/x;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/common/api/y;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->o:Lcom/google/android/gms/internal/z;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->o:Lcom/google/android/gms/internal/z;

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/z;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/z;

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->m:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/x;->n:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/z;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/x;->o:Lcom/google/android/gms/internal/z;

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->o:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->start()V

    goto/16 :goto_2

    .line 13000
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/x;->e()V

    goto/16 :goto_2

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 15000
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 16000
    iget-object v1, v0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ag;

    new-instance v4, Lcom/google/android/gms/internal/ab;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ab;-><init>(Lcom/google/android/gms/internal/aa;I)V

    .line 17000
    iget-object v0, v1, Lcom/google/android/gms/internal/ag;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lcom/google/android/gms/internal/aj;->a()V

    :cond_7
    iput-object v4, v1, Lcom/google/android/gms/internal/ag;->d:Lcom/google/android/gms/internal/aj;

    goto/16 :goto_2

    .line 15000
    :cond_8
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onCleanupLeakInternal received for unknown instance: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 0
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_9

    move v0, v3

    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/x;->a(IZ)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/l;

    .line 18000
    iget-object v1, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/l;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aa;

    .line 19000
    iget-object v2, v1, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/j;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->d()V

    goto/16 :goto_2

    :cond_a
    iget-object v2, v1, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->f()V

    goto/16 :goto_2

    .line 0
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->i:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    const-string v4, "Error resolution was canceled by the user."

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 20000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_2

    .line 0
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    .line 22000
    iget-boolean v1, v0, Lcom/google/android/gms/internal/aa;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->f()V

    goto/16 :goto_2

    .line 0
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    .line 24000
    iget-boolean v1, v0, Lcom/google/android/gms/internal/aa;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->c()V

    iget-object v1, v0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    .line 25000
    iget-object v1, v1, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/common/b;

    .line 24000
    iget-object v2, v0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    .line 26000
    iget-object v2, v2, Lcom/google/android/gms/internal/x;->f:Landroid/content/Context;

    .line 24000
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_c

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    goto/16 :goto_2

    :cond_c
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_3

    .line 0
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    .line 27000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->e()V

    goto/16 :goto_2

    .line 0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
