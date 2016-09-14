.class public final Lcom/google/android/gms/maps/model/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/maps/model/a/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/g;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/d;->a:Lcom/google/android/gms/maps/model/a/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/maps/model/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/d;->a:Lcom/google/android/gms/maps/model/a/g;

    check-cast p1, Lcom/google/android/gms/maps/model/d;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/d;->a:Lcom/google/android/gms/maps/model/a/g;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/g;->a(Lcom/google/android/gms/maps/model/a/g;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/d;->a:Lcom/google/android/gms/maps/model/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
