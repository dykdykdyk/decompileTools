.class final Lcom/google/android/gms/measurement/internal/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m;->a:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/ba;

    .line 0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->a:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->l()Lcom/google/android/gms/measurement/internal/bd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/bf;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/bd;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/AppMetadata;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ba;->a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/i;->b(Lcom/google/android/gms/measurement/internal/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->b:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Failed to send attribute to AppMeasurementService"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
