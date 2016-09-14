.class public abstract Lcom/google/android/gms/internal/q;
.super Lcom/google/android/gms/internal/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        "A::",
        "Lcom/google/android/gms/common/api/g;",
        ">",
        "Lcom/google/android/gms/internal/s",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ai;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/common/api/u;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
