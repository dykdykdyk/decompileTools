.class final Lcom/google/android/gms/maps/s;
.super Lcom/google/android/gms/maps/a/df;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/v;

.field final synthetic b:Lcom/google/android/gms/maps/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/r;Lcom/google/android/gms/maps/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/s;->b:Lcom/google/android/gms/maps/r;

    iput-object p2, p0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/v;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/v;

    new-instance v1, Lcom/google/android/gms/maps/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/a/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/v;->a(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
