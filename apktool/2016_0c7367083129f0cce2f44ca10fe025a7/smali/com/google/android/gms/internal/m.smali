.class public final Lcom/google/android/gms/internal/m;
.super Lcom/google/android/gms/internal/l;


# instance fields
.field public final c:Lcom/google/android/gms/internal/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/q",
            "<+",
            "Lcom/google/android/gms/common/api/u;",
            "Lcom/google/android/gms/common/api/g;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/q;->a()V

    return-void
.end method

.method public final a(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/m;->a:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/m;->c:Lcom/google/android/gms/internal/q;

    .line 1000
    iget-object v2, v0, Lcom/google/android/gms/internal/ag;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ag;->c:Lcom/google/android/gms/internal/ai;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/ai;)V

    .line 0
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/m;->c:Lcom/google/android/gms/internal/q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/q;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/m;->c:Lcom/google/android/gms/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/q;->d()Z

    move-result v0

    return v0
.end method
