.class public final Lcom/google/android/gms/maps/d;
.super Lcom/google/android/gms/maps/a/cz;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/n;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/d;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/n;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/cz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/n;

    invoke-interface {v0}, Lcom/google/android/gms/maps/n;->g_()V

    return-void
.end method
