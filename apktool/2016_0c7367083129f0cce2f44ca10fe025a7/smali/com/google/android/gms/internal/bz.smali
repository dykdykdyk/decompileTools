.class final Lcom/google/android/gms/internal/bz;
.super Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/f",
        "<",
        "Lcom/google/android/gms/signin/internal/j;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ak;Ljava/lang/Object;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/j;
    .locals 8

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/signin/internal/j;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/j;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ak;Landroid/os/Bundle;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    .line 0
    return-object v0
.end method
