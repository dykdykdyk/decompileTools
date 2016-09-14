.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/bt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/measurement/internal/bt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/bt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/measurement/internal/bt;

    .line 0
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/bt;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
