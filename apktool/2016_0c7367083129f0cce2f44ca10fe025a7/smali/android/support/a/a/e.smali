.class final Landroid/support/a/a/e;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 431
    iput-object p1, p0, Landroid/support/a/a/e;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 432
    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/a/a/e;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/a/a/e;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Landroid/support/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/a/a/b;-><init>(B)V

    .line 438
    iget-object v1, p0, Landroid/support/a/a/e;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v1, v0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/a/a/b;->a(Landroid/support/a/a/b;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 440
    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 445
    new-instance v0, Landroid/support/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/a/a/b;-><init>(B)V

    .line 447
    iget-object v1, p0, Landroid/support/a/a/e;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-object v1, v0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/a/a/b;->a(Landroid/support/a/a/b;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 449
    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 454
    new-instance v0, Landroid/support/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/a/a/b;-><init>(B)V

    .line 456
    iget-object v1, p0, Landroid/support/a/a/e;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    .line 457
    iget-object v1, v0, Landroid/support/a/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/a/a/b;->a(Landroid/support/a/a/b;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 458
    return-object v0
.end method
