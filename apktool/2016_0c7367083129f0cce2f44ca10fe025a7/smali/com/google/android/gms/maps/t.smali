.class public final Lcom/google/android/gms/maps/t;
.super Lcom/google/android/gms/dynamic/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/b",
        "<",
        "Lcom/google/android/gms/maps/r;",
        ">;"
    }
.end annotation


# instance fields
.field protected d:Lcom/google/android/gms/dynamic/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/l",
            "<",
            "Lcom/google/android/gms/maps/r;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/v;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/view/ViewGroup;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/maps/GoogleMapOptions;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/t;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/t;->f:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/t;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/t;->h:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/dynamic/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/l",
            "<",
            "Lcom/google/android/gms/maps/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/maps/t;->d:Lcom/google/android/gms/dynamic/l;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/maps/t;->d:Lcom/google/android/gms/dynamic/l;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 1000
    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/t;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/u;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/t;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/bb;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/t;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/t;->h:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/a/bf;->a(Lcom/google/android/gms/dynamic/h;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/a/m;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/maps/t;->d:Lcom/google/android/gms/dynamic/l;

    new-instance v2, Lcom/google/android/gms/maps/r;

    iget-object v3, p0, Lcom/google/android/gms/maps/t;->f:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/r;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/m;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/l;->a(Lcom/google/android/gms/dynamic/a;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/v;

    .line 3000
    iget-object v1, p0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 1000
    check-cast v1, Lcom/google/android/gms/maps/r;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/r;->a(Lcom/google/android/gms/maps/v;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/maps/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
