.class Landroid/support/v7/a/af;
.super Landroid/support/v7/a/ab;
.source "AppCompatDelegateImplV23.java"


# instance fields
.field private final w:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/ab;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    .line 31
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Landroid/support/v7/a/af;->w:Landroid/app/UiModeManager;

    .line 32
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/support/v7/a/ag;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/ag;-><init>(Landroid/support/v7/a/af;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method final f(I)I
    .locals 1

    .prologue
    .line 44
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/af;->w:Landroid/app/UiModeManager;

    .line 45
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, -0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/a/ab;->f(I)I

    move-result v0

    goto :goto_0
.end method
