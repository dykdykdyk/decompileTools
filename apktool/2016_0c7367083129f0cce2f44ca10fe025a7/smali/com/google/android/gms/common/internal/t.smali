.class public final Lcom/google/android/gms/common/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/q;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/k;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/k;->l()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/k;->a(Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->e(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->e(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
