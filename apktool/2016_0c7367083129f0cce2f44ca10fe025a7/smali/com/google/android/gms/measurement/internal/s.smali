.class final Lcom/google/android/gms/measurement/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s;->a:Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s;->a:Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s;->a:Lcom/google/android/gms/measurement/internal/o;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->p()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/i;Landroid/content/ComponentName;)V

    return-void
.end method
