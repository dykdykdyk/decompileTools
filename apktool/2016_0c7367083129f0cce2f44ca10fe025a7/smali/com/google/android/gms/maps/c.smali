.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/maps/a/d;

.field private b:Lcom/google/android/gms/maps/w;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/d;

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/d;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/d;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/a/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/d;-><init>(Lcom/google/android/gms/maps/model/a/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/p;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/maps/model/a/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a()Lcom/google/android/gms/maps/w;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/w;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v1}, Lcom/google/android/gms/maps/a/d;->k()Lcom/google/android/gms/maps/a/ab;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/w;-><init>(Lcom/google/android/gms/maps/a/ab;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/w;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/w;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
