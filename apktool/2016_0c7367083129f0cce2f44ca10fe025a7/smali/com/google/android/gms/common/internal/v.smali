.class public final Lcom/google/android/gms/common/internal/v;
.super Lcom/google/android/gms/common/internal/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/l;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/internal/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/k;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/v;->e:Lcom/google/android/gms/common/internal/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/l;-><init>(Lcom/google/android/gms/common/internal/k;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/v;->e:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->b(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/v;->e:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/k;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/v;->e:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->b(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
