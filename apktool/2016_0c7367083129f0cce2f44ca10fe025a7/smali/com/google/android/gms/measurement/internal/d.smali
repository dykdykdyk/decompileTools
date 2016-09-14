.class public final Lcom/google/android/gms/measurement/internal/d;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Lcom/google/android/gms/measurement/internal/ca;)Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    return-object v0
.end method

.method static b(Lcom/google/android/gms/measurement/internal/ca;)Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    return-object v0
.end method

.method static c(Lcom/google/android/gms/measurement/internal/ca;)Lcom/google/android/gms/measurement/internal/ag;
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/ag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    return-object v0
.end method
