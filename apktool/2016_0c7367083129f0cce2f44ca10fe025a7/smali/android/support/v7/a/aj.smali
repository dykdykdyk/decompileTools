.class final Landroid/support/v7/a/aj;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ah;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Landroid/support/v7/a/aj;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 434
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 435
    iget-object v1, p0, Landroid/support/v7/a/aj;->a:Landroid/support/v7/a/ah;

    invoke-static {v1, v0}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/ah;I)I

    move-result v1

    .line 437
    if-eq v0, v1, :cond_0

    .line 439
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 441
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 442
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 438
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 446
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
