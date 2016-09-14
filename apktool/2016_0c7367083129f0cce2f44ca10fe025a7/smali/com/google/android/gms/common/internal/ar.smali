.class public abstract Lcom/google/android/gms/common/internal/ar;
.super Lcom/google/android/gms/common/internal/k;

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/k",
        "<TT;>;",
        "Lcom/google/android/gms/common/api/j;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/internal/ak;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/au;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/au;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/q;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/r;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/ar;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/au;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/au;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V
    .locals 10

    .prologue
    .line 0
    const/16 v6, 0x2c

    .line 1000
    if-nez p6, :cond_1

    const/4 v7, 0x0

    .line 2000
    :goto_0
    if-nez p7, :cond_2

    const/4 v8, 0x0

    .line 3000
    :goto_1
    iget-object v9, p5, Lcom/google/android/gms/common/internal/ak;->d:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 0
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/k;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/au;Lcom/google/android/gms/common/g;ILcom/google/android/gms/common/internal/m;Lcom/google/android/gms/common/internal/n;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ar;->a:Lcom/google/android/gms/common/internal/ak;

    .line 4000
    iget-object v1, p5, Lcom/google/android/gms/common/internal/ak;->a:Landroid/accounts/Account;

    .line 0
    iput-object v1, p0, Lcom/google/android/gms/common/internal/ar;->i:Landroid/accounts/Account;

    .line 5000
    iget-object v2, p5, Lcom/google/android/gms/common/internal/ak;->b:Ljava/util/Set;

    .line 6000
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    :cond_1
    new-instance v7, Lcom/google/android/gms/common/internal/as;

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/internal/as;-><init>(Lcom/google/android/gms/common/api/q;)V

    goto :goto_0

    .line 2000
    :cond_2
    new-instance v8, Lcom/google/android/gms/common/internal/at;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Lcom/google/android/gms/common/internal/at;-><init>(Lcom/google/android/gms/common/api/r;)V

    goto :goto_1

    .line 0
    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/common/internal/ar;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final g()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ar;->i:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ar;->h:Ljava/util/Set;

    return-object v0
.end method
