.class final Landroid/support/v7/widget/gn;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# static fields
.field static d:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/gn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/ed;

.field c:Landroid/support/v7/widget/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/gn;->d:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method static a()Landroid/support/v7/widget/gn;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Landroid/support/v7/widget/gn;->d:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/gn;

    .line 316
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/gn;

    invoke-direct {v0}, Landroid/support/v7/widget/gn;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroid/support/v7/widget/gn;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/gn;->a:I

    .line 321
    iput-object v1, p0, Landroid/support/v7/widget/gn;->b:Landroid/support/v7/widget/ed;

    .line 322
    iput-object v1, p0, Landroid/support/v7/widget/gn;->c:Landroid/support/v7/widget/ed;

    .line 323
    sget-object v0, Landroid/support/v7/widget/gn;->d:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method static b()V
    .locals 1

    .prologue
    .line 328
    :cond_0
    sget-object v0, Landroid/support/v7/widget/gn;->d:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    return-void
.end method
