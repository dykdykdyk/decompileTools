.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.source "WindowInsetsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    .line 148
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-object v0
.end method

.method public getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 153
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 158
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 163
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasInsets(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 173
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 178
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasSystemWindowInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRound(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 183
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->isRound(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/WindowInsetsCompatApi20;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-object v0
.end method
