.class final Landroid/support/a/a/l;
.super Landroid/support/a/a/o;
.source "VectorDrawableCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1434
    invoke-direct {p0}, Landroid/support/a/a/o;-><init>()V

    .line 1436
    return-void
.end method

.method public constructor <init>(Landroid/support/a/a/l;)V
    .locals 0

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Landroid/support/a/a/o;-><init>(Landroid/support/a/a/o;)V

    .line 1440
    return-void
.end method


# virtual methods
.method final a(Landroid/content/res/TypedArray;)V
    .locals 1

    .prologue
    .line 1458
    const/4 v0, 0x0

    .line 1459
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_0

    .line 1461
    iput-object v0, p0, Landroid/support/a/a/l;->n:Ljava/lang/String;

    .line 1464
    :cond_0
    const/4 v0, 0x1

    .line 1465
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_1

    .line 1467
    invoke-static {v0}, Landroid/support/a/a/f;->a(Ljava/lang/String;)[Landroid/support/a/a/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/l;->m:[Landroid/support/a/a/h;

    .line 1469
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x1

    return v0
.end method
