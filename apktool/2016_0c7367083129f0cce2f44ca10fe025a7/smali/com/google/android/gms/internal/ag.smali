.class public final Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lcom/google/android/gms/internal/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/q",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/q",
            "<**>;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/android/gms/internal/ai;

.field d:Lcom/google/android/gms/internal/aj;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/h",
            "<*>;",
            "Lcom/google/android/gms/common/api/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/q;

    sput-object v0, Lcom/google/android/gms/internal/ag;->a:[Lcom/google/android/gms/internal/q;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/h",
            "<*>;",
            "Lcom/google/android/gms/common/api/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->b:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/internal/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->c:Lcom/google/android/gms/internal/ai;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->d:Lcom/google/android/gms/internal/aj;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
