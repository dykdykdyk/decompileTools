.class final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/q;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/x;

.field private final b:Lcom/google/android/gms/common/api/j;

.field private final c:Lcom/google/android/gms/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/n",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/internal/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/j;",
            "Lcom/google/android/gms/internal/n",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ac;->b:Lcom/google/android/gms/common/api/j;

    iput-object p3, p0, Lcom/google/android/gms/internal/ac;->c:Lcom/google/android/gms/internal/n;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->b:Lcom/google/android/gms/common/api/j;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Ljava/util/Set;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/x;->f(Lcom/google/android/gms/internal/x;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->c:Lcom/google/android/gms/internal/n;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
