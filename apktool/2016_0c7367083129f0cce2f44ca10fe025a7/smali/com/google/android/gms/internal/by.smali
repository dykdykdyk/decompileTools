.class final Lcom/google/android/gms/internal/by;
.super Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/f",
        "<",
        "Lcom/google/android/gms/signin/internal/j;",
        "Lcom/google/android/gms/internal/cb;",
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
    .locals 6

    .prologue
    .line 0
    check-cast p4, Lcom/google/android/gms/internal/cb;

    .line 1000
    if-nez p4, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/cb;

    :cond_0
    new-instance v0, Lcom/google/android/gms/signin/internal/j;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/signin/internal/j;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    .line 0
    return-object v0
.end method
