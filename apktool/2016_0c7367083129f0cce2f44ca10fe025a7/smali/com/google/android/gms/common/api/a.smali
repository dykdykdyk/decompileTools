.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/f",
            "<*TO;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/common/api/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/m",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/common/api/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/n",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/j;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/f",
            "<TC;TO;>;",
            "Lcom/google/android/gms/common/api/k",
            "<TC;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/f;

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->d:Lcom/google/android/gms/common/api/m;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/k;

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->e:Lcom/google/android/gms/common/api/n;

    return-void
.end method
