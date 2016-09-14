.class final Lcom/google/android/gms/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/q;",
        "Lcom/google/android/gms/common/api/r;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/l;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/common/api/j;

.field final c:Lcom/google/android/gms/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/n",
            "<TO;>;"
        }
    .end annotation
.end field

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/o;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic h:Lcom/google/android/gms/internal/x;

.field private final i:Lcom/google/android/gms/common/api/g;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/q;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/common/api/y;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/y",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->e:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    iget-object v1, p2, Lcom/google/android/gms/common/api/y;->b:Lcom/google/android/gms/common/api/a;

    .line 3000
    iget-object v0, v1, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/d;->a(ZLjava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/f;

    .line 4000
    iget-object v10, p2, Lcom/google/android/gms/common/api/y;->a:Landroid/content/Context;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 5000
    iget-object v0, p2, Lcom/google/android/gms/common/api/y;->a:Landroid/content/Context;

    .line 6000
    new-instance v7, Lcom/google/android/gms/common/api/p;

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/api/p;-><init>(Landroid/content/Context;)V

    .line 7000
    sget-object v8, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/cb;

    iget-object v0, v7, Lcom/google/android/gms/common/api/p;->h:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/common/api/p;->h:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/bx;->g:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cb;

    move-object v8, v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/ak;

    iget-object v1, v7, Lcom/google/android/gms/common/api/p;->a:Landroid/accounts/Account;

    iget-object v2, v7, Lcom/google/android/gms/common/api/p;->b:Ljava/util/Set;

    iget-object v3, v7, Lcom/google/android/gms/common/api/p;->g:Ljava/util/Map;

    iget v4, v7, Lcom/google/android/gms/common/api/p;->c:I

    iget-object v5, v7, Lcom/google/android/gms/common/api/p;->d:Landroid/view/View;

    iget-object v6, v7, Lcom/google/android/gms/common/api/p;->e:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/common/api/p;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/ak;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cb;)V

    .line 8000
    iget-object v5, p2, Lcom/google/android/gms/common/api/y;->c:Lcom/google/android/gms/common/api/b;

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v0

    move-object v6, p0

    move-object v7, p0

    .line 1000
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/f;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ak;Ljava/lang/Object;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    check-cast v0, Lcom/google/android/gms/common/internal/g;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/g;->a:Lcom/google/android/gms/common/api/l;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->i:Lcom/google/android/gms/common/api/g;

    .line 10000
    :goto_1
    iget-object v0, p2, Lcom/google/android/gms/common/api/y;->d:Lcom/google/android/gms/internal/n;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    return-void

    .line 3000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->i:Lcom/google/android/gms/common/api/g;

    goto :goto_1
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/n;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 0
    .line 11000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aa;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->c()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/q;->a()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/j;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->b()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 12000
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/l;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/l;)V

    goto :goto_2

    .line 0
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->d()V

    return-void
.end method

.method public final a(IZ)V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/l;

    iget v2, v0, Lcom/google/android/gms/internal/l;->a:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/l;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;

    .line 18000
    iget-object v1, v0, Lcom/google/android/gms/internal/ag;->b:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/internal/ag;->a:[Lcom/google/android/gms/internal/q;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/q;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/ai;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/q;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/google/android/gms/internal/ag;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->e(Lcom/google/android/gms/internal/x;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->f(Lcom/google/android/gms/internal/x;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/x;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->d(Lcom/google/android/gms/internal/x;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    .line 0
    .line 14000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aa;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/x;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/x;->d()Lcom/google/android/gms/internal/w;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15000
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->c:I

    .line 0
    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aa;->f:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aa;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v2}, Lcom/google/android/gms/internal/x;->b(Lcom/google/android/gms/internal/x;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    .line 16000
    iget-object v2, v2, Lcom/google/android/gms/internal/n;->a:Lcom/google/android/gms/common/api/a;

    .line 17000
    iget-object v2, v2, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/l;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/l;->a(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/l;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/l;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/l;->a:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/m;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/m;->c:Lcom/google/android/gms/internal/q;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/af;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/af;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->a()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener registration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p1, Lcom/google/android/gms/internal/l;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/l;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/m;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/m;->c:Lcom/google/android/gms/internal/q;

    check-cast v2, Lcom/google/android/gms/internal/af;

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/af;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener unregistration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_3
    const-string v1, "GoogleApiManager"

    const-string v2, "Received call to unregister a listener without a matching registration call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->b()V

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 0
    .line 13000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aa;->g:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aa;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v2}, Lcom/google/android/gms/internal/x;->b(Lcom/google/android/gms/internal/x;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v2}, Lcom/google/android/gms/internal/x;->c(Lcom/google/android/gms/internal/x;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;I)I

    return-void
.end method

.method final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aa;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aa;->f:Z

    :cond_0
    return-void
.end method

.method final d()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v2}, Lcom/google/android/gms/internal/x;->i(Lcom/google/android/gms/internal/x;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final e()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/gms/internal/aa;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;

    .line 20000
    iget-object v0, v0, Lcom/google/android/gms/internal/ag;->b:Ljava/util/Set;

    sget-object v3, Lcom/google/android/gms/internal/ag;->a:[Lcom/google/android/gms/internal/q;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/q;

    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/q;->b()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 0
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->d()V

    :cond_0
    :goto_3
    return-void

    .line 20000
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 0
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    goto :goto_3
.end method

.method final f()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->j(Lcom/google/android/gms/internal/x;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->h(Lcom/google/android/gms/internal/x;)Lcom/google/android/gms/common/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v2}, Lcom/google/android/gms/internal/x;->g(Lcom/google/android/gms/internal/x;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->j(Lcom/google/android/gms/internal/x;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/internal/x;->j(Lcom/google/android/gms/internal/x;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    new-instance v1, Lcom/google/android/gms/internal/ac;

    iget-object v2, p0, Lcom/google/android/gms/internal/aa;->h:Lcom/google/android/gms/internal/x;

    iget-object v3, p0, Lcom/google/android/gms/internal/aa;->b:Lcom/google/android/gms/common/api/j;

    iget-object v4, p0, Lcom/google/android/gms/internal/aa;->c:Lcom/google/android/gms/internal/n;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ac;-><init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/internal/n;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/internal/q;)V

    goto :goto_0
.end method
